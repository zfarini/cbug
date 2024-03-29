char *filename;
char *program_str;
FILE *f;

Type types[10000];
int type_count;
Type *types_declared[1000];
int types_declared_count;

char *strings_literal[10000];
int	strings_literal_count;

Type *type_long;// = &(Type){.t = LONG, .size = 8};
Type *type_int;
Type *type_short;
Type *type_char;
Type *type_void;

Func funcs[10000];
int func_count = 0;

Scope scopes[100000];
int scope_count = 0;
Scope *curr_scope = 0;

Token tokens[100000];
int ct;

Node _nodes[100000];
int	_curr_node;

Var vars[10000];
int	var_count = 0;

Enum enums[10000];
int enum_count;

Node *curr_func = 0;

#if 0
void error();
void error_token();
int fprintf();
int strcmp();
int strdup();
int strncmp();
int strchr();
int isdigit();
int isalpha();
int isalnum();
int isspace();
int printf();
void *malloc();
void *calloc();
#endif

#include "tokenize.c"

int align(int n, int a)
{
	return (n + a - 1) / a * a;
}

char *find(char *s, char c)
{
	int	i;

	i = 0;
	while (s[i])
	{
		if (s[i] == c)
			return (s + i);
		i++;
	}
	return (0);
}

#include "parse.c"
#include "gen.c"

char *read_entire_file(char *name)
{
	char *buffer = 0;
	long length;
	FILE *file = fopen(name, "r");
	if (file)
	{
		fseek(file, 0, SEEK_END);
	 	length = ftell(file);
	 	fseek(file, 0, SEEK_SET);
	 	buffer = malloc(length + 1);
	 	if (buffer)
	 	  fread(buffer, 1, length, file);
		buffer[length] = 0;
	 	fclose(file);
	}
	return buffer;
}

int main(int argc, char **argv)
{
	if (argc < 2)
		filename = "in.c";
	else
		filename = argv[1];
	
	type_long = new_type(LONG);
	type_int = new_type(INT);
	type_short = new_type(SHORT);
	type_char = new_type(CHAR);
	type_void = new_type(VOID);

	program_str = read_entire_file(filename);

	Node *node = parse(program_str);

	char *out_name = strdup(filename);
	out_name[strlen(out_name) - 1] = 's';
	f = fopen(out_name, "w");
	assert(f);
	//fprintf(f, "\t.globl\t_main\n");
	//fprintf(f, "_main:\n");
	//fprintf(f, "\tpushq %%rbp\n");
	//fprintf(f, "\tmovq %%rsp, %%rbp\n");
	//stack_size = ((stack_size + 15) / 16) * 16;
	//fprintf(f, "\tsubq $%d, %%rsp\n", stack_size);
	gen(node);
	out(".section	__DATA,__data");
	for (int i = 0; i < curr_scope->var_count; i++)
	{
		Node *decl = curr_scope->vars[i]->decl;
		if (decl->left && decl->left->right->type != NODE_INT)
			error_token(decl->left->tok, "todo: evaluate constant expressions\n");
		if (decl->var->type->t == ARRAY)
		{
			out(".comm _%s,%d,%d", decl->var->name, decl->var->type->array_size * decl->var->type->size,
							(decl->var->type->size)); // TODO: check the alignement
		}
		else
		{
			out(".globl _%s", decl->var->name);

			int	align = log2_int(decl->var->type->size); 
			if (align)
				out(".p2align %d", align); // todo: understand this

			fprintf(f, "_%s:\n", curr_scope->vars[i]->name);
			out(".%s %d\n", get_size_name(curr_scope->vars[i]->type->size), (!decl->left ? 0 : decl->left->right->tok->int_val));
		}
	}
	for (int i = 0; i < strings_literal_count; i++)
	{
		fprintf(f, "L_.str.%d:\n", i);
		out(".asciz \"%s\"", strings_literal[i]);
	}
}

