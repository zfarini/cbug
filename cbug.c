#include "cbug.h"

char *filename;
char *program_str;
FILE *f;

static Type types[10000];
int type_count;

char *strings_literal[10000];
int	strings_literal_count;

Type *type_int = &(Type){.t = INT, .ptr_to = 0};

Func funcs[10000];
int func_count = 0;

Scope scopes[100000];
int scope_count = 0;
Scope *curr_scope = 0;

static Token tokens[100000];
int ct;

static Node _nodes[100000];
int	_curr_node;

static Var vars[10000];
int	var_count = 0;

Node *curr_func = 0;

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

int add_string_lit(char *s)
{
	for (int i = 0; i < strings_literal_count; i++)
	{
		if (!strcmp(s, strings_literal[i]))
			return i;
	}
	strings_literal[strings_literal_count] = s;
	return strings_literal_count++;
}

Type *new_type(int t)
{
	Type *type = &types[type_count++];
	type->t = t;
	if (type->t == PTR || type->t == ARRAY)
		type->size = 8;
	else if (type->t == INT)
		type->size = 4;
	else if (type->t == CHAR)
		type->size = 1;
	return type;
}

int types_are_equal(Type *t1, Type *t2)
{
	if (!t1 || !t2)
		return (0);
	if (t1 == t2)
		return 1;
	if (t1->t != t2->t)
		return 0;
	if (!t1->ptr_to)
		return (t2->ptr_to == 0);
	return types_are_equal(t1->ptr_to, t2->ptr_to);
}

Func *add_func(char *name, Type *ret_type)
{
	Func *fn = &funcs[func_count++];
	fn->name = name;
	fn->ret_type = ret_type;
	return fn;
}

Func *find_func(char *name)
{
	for (int i = 0; i < func_count; i++)
	{
		if (!strcmp(name, funcs[i].name))
			return &funcs[i];
	}
	return 0;
}

Scope *new_scope()
{
	Scope *scope = &scopes[scope_count++];
	return scope;
}

void enter_scope()
{
	Scope *scope = new_scope();
	scope->parent = curr_scope;
	curr_scope = scope;
}

void leave_scope()
{
	curr_scope = curr_scope->parent;
}

char *get_inst_suffix(int size)
{
	if (size == 1)
		return "b";
	else if (size == 2)
		return "w";
	else if (size == 4)
		return "l";
	else if (size == 8)
		return "q";
	assert(0);
}

char *get_size_name(int size)
{
	if (size == 1)
		return "byte";
	else if (size == 2)
		return "short";
	else if (size == 4)
		return "long";
	else if (size == 8)
		return "quad";
	assert(0);
}

int log2_int(int x)
{
	int y = 0;
	while (x > 1)
	{
		x /= 2;
		y++;
	}
	return y;
}

char *get_register_by_size(char *reg, int size)
{
	char *arr[10][4] = {
		{"al", "ax", "eax", "rax"},
		{"dh", "dx", "edx", "rdx"},
		{"ch", "cx", "ecx", "rcx"},
		{"dil", "di", "edi", "rdi"},
		{"sil", "si", "esi", "rsi"},
		{"r8L", "r8W", "r8D", "r8"},
		{"r9L", "r9W", "r9D", "r9"},
		{"r10L", "r10W", "r10D", "r10"},
		{"r11L", "r11W", "r11D", "r11"},
		{0}
	};
	for (int i = 0; arr[i][0]; i++)
	{
		if (!strcmp(arr[i][3], reg))
			return arr[i][log2_int(size)];
	}
	assert(0);
}

void error(char *fmt, ...)
{
	va_list ap;
	va_start(ap, fmt);
	fprintf(stderr, "\033[1;31merror:\033[1m ");
	vfprintf(stderr, fmt, ap);
	fprintf(stderr, "\033[0m\n");
	va_end(ap);
	exit(1);
}

void error_token(Token *token, char *fmt, ...)
{
	va_list ap;
	va_start(ap, fmt);
	fprintf(stderr, "\033[1m%s:%d:%d: \033[1;31merror: \033[0m\033[1m",
			filename, token->line, token->col);
	vfprintf(stderr, fmt, ap);
	fprintf(stderr, "\033[0m\n");
	va_end(ap);
	exit(1);
}

Node *new_node(int type)
{
	Node *node = &_nodes[_curr_node++];
	node->type = type;
	node->tok = &tokens[ct];
	return (node);
}

Var *find_var(char *name)
{
	Scope *scope = curr_scope;
	while (scope)
	{
		for (int i = 0; i < scope->var_count; i++)
		{
			if (!strcmp(scope->vars[i]->name, name))
				return scope->vars[i];
		}
		scope = scope->parent;
	}
	return (0);
}

Var *new_var(Type *type, char *name)
{
	for (int i = 0; i < curr_scope->var_count; i++)
	{
		if (!strcmp(curr_scope->vars[i]->name, name))
			error_token(&tokens[ct], "redeclaration of variable \"%s\"\n");
	}
	Var *v = &vars[var_count++];
	v->name = name;
	v->token = &tokens[ct];
	v->type = type;
	curr_scope->vars[curr_scope->var_count++] = v;	
	if (type->t == ARRAY)
		curr_func->stack_size += type->ptr_to->size * type->array_size;
	else
		curr_func->stack_size += type->size;
	curr_func->stack_size = align(curr_func->stack_size, v->type->size);
	v->offset = curr_func->stack_size;
	assert(v->offset % v->type->size == 0);
	return (v);
}

int type_match(int type, ...)
{
	va_list ap;
	va_start(ap, type);
	while (1)
	{
		int t = va_arg(ap, int);
		if (t < 0)
			break ;
		if (t == type)
			return (1);
	}
	return (0);
}

Node *binary(Node *(*func)(), ...)
{
	va_list ap;
	va_start(ap, func);
	int matches[100];
	int	count = 0;
	while (1)
	{
		int t = va_arg(ap, int);
		if (t < 0)
			break;
		matches[count++] = t;
	}
	va_end(ap);
	Node *left = func();
	while (1)
	{
		int ok = 0;
		for (int j = 0; j < count && !ok; j++)
		{
			if (tokens[ct].type == matches[j])
				ok = 1;
		}
		if (!ok)
			break;
		Node *node = new_node(NODE_BINARY);
		node->left = left;
		ct++;
		node->right = func();
		left = node;
	}
	return left;
}

void skip(int type)
{
	if (tokens[ct].type != type)
		error_token(&tokens[ct], "expected `%s`", token_type_name(type));
	ct++;
}

int is_typename(int type)
{
	return type_match(type, TOKEN_INT, TOKEN_VOID, TOKEN_CHAR, -1);
}

Node *parse(char *s)
{
	tokenize(s);
	ct = 0;
	Node *prog = new_node(NODE_PROGRAM);
	
	curr_scope = new_scope();
	curr_scope->parent = 0;

	Node *curr = prog;
	while (tokens[ct].type)
	{
		int save = ct;
		if (!is_typename(tokens[ct].type))
			error_token(&tokens[ct], "expected a function or variable declaration");
		parse_type();
		skip(TOKEN_IDENTIFIER);
		int globl = 0;
		if (tokens[ct].type != '(')
			globl = 1;
		ct = save;
		if (globl)
		{
			curr->next_stmt = decl();
			skip(';');
		}
		else
			curr->next_stmt = function();
		if (curr->next_stmt)
			curr = curr->next_stmt;
	}
	return prog;
}

Type *parse_type()
{
	Type *type;
	if (tokens[ct].type == TOKEN_VOID)
		type = new_type(VOID);
	else if (tokens[ct].type == TOKEN_INT)
		type = new_type(INT);
	else if (tokens[ct].type == TOKEN_CHAR)
		type = new_type(CHAR);
	else
		error_token(&tokens[ct], "invalid type");
	ct++;
	while (tokens[ct].type == '*')
	{
		Type *new = new_type(PTR);
		new->t = PTR;
		new->ptr_to = type;
		type = new;
		ct++;
	}
	return type;
}

Node *function()
{
	enter_scope();

	Type *ret_type = parse_type();
	Node *node = new_node(NODE_FUNC_DEF);
	ct++;
	curr_func = node;
	skip('(');
	int count = 0;
	//TODO: don't declare vars or enter the scope if its just a declaraton
	while (tokens[ct].type != ')')
	{
		node->params[count] = new_node(NODE_VAR_DECL);
		Type *type = parse_type();
		node->params[count]->var = new_var(type, tokens[ct].name);
		skip(TOKEN_IDENTIFIER);
		//node->params[count] = new_var(tokens[ct].name);
		count++;
		if (tokens[ct].type == ',')
			ct++;
		else if (tokens[ct].type != ')')
			break ;
	}
	skip(')');
	node->param_count = count;
	add_func(node->tok->name, ret_type);
	if (tokens[ct].type != ';')
	{
		if (tokens[ct].type != '{')
			skip('{');
		node->body = statement();
	}
	else
		skip(';');

	leave_scope();
	return node;
}

Node *statement_or_decl()
{
	if (is_typename(tokens[ct].type))
	{
		Node *node = decl();
		skip(';');
		return node;
	}
	return statement();
}

Node *decl()
{
	Node *decl = new_node(NODE_VAR_DECL);
	if (!is_typename(tokens[ct].type))
		error_token(&tokens[ct], "invalid type");
	int base;
	if (tokens[ct].type == TOKEN_INT) base = INT;
	else if (tokens[ct].type == TOKEN_VOID) base = VOID;
	else if (tokens[ct].type == TOKEN_CHAR) base = CHAR;
	else assert(0);
	ct++;
	Node *curr = decl;
	while (1)
	{
		curr->next_in_decl = new_node(NODE_VAR_DECL);
		Type *type = new_type(base);
		while (tokens[ct].type == '*')
		{
			Type *new = new_type(PTR);
			new->ptr_to = type;
			type = new;
			ct++;
		}
		if (type->t == VOID && !type->ptr_to)
			error_token(&tokens[ct], "variable type can't be void");
		if (tokens[ct].type != TOKEN_IDENTIFIER)
			skip(TOKEN_IDENTIFIER);


		Var *var;
		if (tokens[ct + 1].type == '[')
		{
			Type *arr = malloc(sizeof(Type));
			arr->t = ARRAY;
			arr->ptr_to = type;
			arr->array_size = tokens[ct + 2].int_val;
			type = arr;
			var = new_var(type, tokens[ct].name);
			skip(TOKEN_IDENTIFIER);
			skip('[');
			skip(TOKEN_INTEGER);
			skip(']');
		}
		else
		{
			var = new_var(type, tokens[ct].name);
			ct++;
		}
		var->decl = curr->next_in_decl;
		if (!curr_scope->parent)
			var->global = 1;
		curr->next_in_decl->var = var;
		if (tokens[ct].type == '=')
		{
			ct--;
			curr->next_in_decl->left = assign();
		}
		if (tokens[ct].type != ',')
			break ;
		ct++;
		curr = curr->next_in_decl;
	}
	return decl;
}

Node *statement()
{
	Node *node = 0;

	if (tokens[ct].type == TOKEN_RETURN)
	{
		node = new_node(NODE_RETURN);
		ct++;
		node->left = expr();
		skip(';');
	}
	else if (tokens[ct].type == TOKEN_IF)
	{
		node = new_node(NODE_IF);
		ct++;
		skip('(');
		node->condition = expr();
		skip(')');
		node->body = statement();
		if (tokens[ct].type == TOKEN_ELSE)
		{
			ct++;
			node->else_ = statement();
		}
	}
	else if (tokens[ct].type == TOKEN_WHILE)
	{
		node = new_node(NODE_WHILE);
		ct++;
		skip('(');
		node->condition = expr();
		skip(')');
		node->body = statement();
	}
	else if (tokens[ct].type == TOKEN_FOR)
	{
		enter_scope();
		node = new_node(NODE_FOR);
		ct++;
		skip('(');
		if (tokens[ct].type != ';')
		{
			if (is_typename(tokens[ct].type))
				node->init = decl();
			else
				node->init = expr();
		}
		skip(';');
		if (tokens[ct].type != ';')
			node->condition = expr();
		skip(';');
		if (tokens[ct].type != ')')
			node->inc = expr();
		skip(')');
		node->body = statement();
		leave_scope();
	}
	else if (tokens[ct].type == '{')
	{
		node = new_node(NODE_BLOCK);
		ct++;
		Node *curr = node;

		enter_scope();
		while (tokens[ct].type != '}' && tokens[ct].type)
		{
			curr->next_in_block = statement_or_decl();
			assert(curr->next_in_block);
			curr = curr->next_in_block;
			assert(curr);
		}
		node->first_stmt = node->next_in_block;
		node->next_in_block = 0;
		leave_scope();
		curr->next_in_block = 0;
		skip('}');
	}
	else
	{
		if (tokens[ct].type != ';')
			node = expr();
		else
			node = new_node(NODE_NONE);
		skip(';');
	}
	return node;
}

Node *expr()
{
	Node *node = assign();
	Node *curr = node;
	while (tokens[ct].type == ',')
	{
		ct++;
		curr->next_in_comma = assign();
		curr = curr->next_in_comma;
	}
	return node;
}

Node *assign()
{
	// a = b = c = 5	
	// assign := add | var = (assign)
	 // **x = 5
	Node *left = logical_or();

	if (tokens[ct].type == '=')
	{
		if (left->type != NODE_VAR && left->type != NODE_DEREF)
			error_token(&tokens[ct], "expected an identifier before '='\n");
		Node *node = new_node(NODE_ASSIGN);
		ct++;
		node->left = left;
		node->right = assign();
		return node;
	}
	return left;
}

Node *logical_or()
{
	return binary(logical_and, TOKEN_LOGICAL_OR, -1);
}

Node *logical_and()
{
	return binary(equality, TOKEN_LOGICAL_AND, -1);
}

Node *equality()
{
	return binary(relational, TOKEN_EQUAL, TOKEN_NOT_EQUAL, -1);
}

Node *relational()
{
	return binary(add, '<', '>', TOKEN_LESS_OR_EQUAL, TOKEN_GREATER_OR_EQUAL, -1);
}

Node *add()
{
	return binary(mul, '+', '-', -1);
}

Node *mul()
{
	return binary(unary, '*', '/', '%', -1);
}

Node *unary()
{
	if (tokens[ct].type == '+')
	{
		ct++;
		return unary();
	}
	else if (tokens[ct].type == '-')
	{
		Node *node = new_node(NODE_NEG);
		ct++;
		node->left = unary();
		return node;
	}
	else if (tokens[ct].type == '&')
	{
		Node *node = new_node(NODE_ADDR);
		ct++;
		node->left = unary();
		return node;
	}
	else if (tokens[ct].type == '*')
	{
		Node *node = new_node(NODE_DEREF);
		ct++;
		node->left = unary();
		return node;
	}
	else if (tokens[ct].type == TOKEN_INC || tokens[ct].type == TOKEN_DEC)
	{
		//++x => x = x + 1
		Node *node = new_node(NODE_BINARY);
		node->tok->type = (tokens[ct].type == TOKEN_INC ? '+' : '-');
		ct++;
		node->left = unary();
		node->right = new_node(NODE_INT);
		node->right->tok = new_temp_token(TOKEN_INTEGER);
		node->right->tok->int_val = 1;
		Node *assign = new_node(NODE_ASSIGN);
		assign->tok = new_temp_token('=');
		assign->left = node->left;
		assign->right = node;
		return assign;
	}
	return postfix();
}

Node *postfix()
{
	Node *left = primary();

	while (1)
	{
		if (tokens[ct].type == '[')
		{
			ct++;
			Node *index = expr();
			skip(']');
			Node *node = new_node(NODE_BINARY);
			node->tok = new_temp_token('+');
			node->left = left;
			node->right = index;
			Node *deref = new_node(NODE_DEREF);
			deref->tok = new_temp_token('*');
			deref->left = node;
			left = deref;
		}
		else if (tokens[ct].type == TOKEN_INC || tokens[ct].type == TOKEN_DEC)
		{
			Node *one = new_node(NODE_INT);
			one->tok = new_temp_token(TOKEN_INTEGER);
			one->tok->int_val = (tokens[ct].type == TOKEN_INC ? 1 : -1);


			Node *assign = new_node(NODE_ASSIGN);
			assign->tok = new_temp_token('=');
			assign->left = left;
			assign->right = new_node(NODE_BINARY);
			assign->right->tok = new_temp_token('+');
			assign->right->left = left;
			assign->right->right = one;

			Node *node = new_node(NODE_BINARY);
			node->tok = new_temp_token('-');
			node->left = assign;
			node->right = one;
			
			left = node;
			//(x = x + 1) - 1
			//int y = x++o;
			ct++;
		}
		else
			break ;
	}
	return (left);
}

Node *primary()
{
	Node *node = 0;
	if (tokens[ct].type == TOKEN_INTEGER)
	{
		node = new_node(NODE_INT);
		ct++;
	}
	else if (tokens[ct].type == TOKEN_STRING)
	{
		node = new_node(NODE_STRING);
		ct++;
	}
	else if (tokens[ct].type == '(')
	{
		ct++;
		node = expr();
		skip(')');
	}
	else if (tokens[ct].type == TOKEN_IDENTIFIER && tokens[ct + 1].type == '(')
	{
		node = new_node(NODE_FUNC_CALL);
		ct += 2;
		int count = 0;
		while (tokens[ct].type != ')')
		{
			if (!strcmp(node->tok->name, "ASSERT") && tokens[ct].type == '{')
				node->args[count] = statement();
			else
				node->args[count] = assign();
			count++;
			if (tokens[ct].type == ',')
				ct++;
			else if (tokens[ct].type != ')')
				skip(')');
		}
		ct++;
		node->arg_count = count;
	}
	else if (tokens[ct].type == TOKEN_IDENTIFIER)
	{
		Var *var = find_var(tokens[ct].name);
		if (!var)
			error_token(&tokens[ct], "undeclared variable `%s`\n", tokens[ct].name);
		node = new_node(NODE_VAR);
		node->var = var;
		ct++;
	}
	else
		error_token(&tokens[ct], "expected an expression");
	return node;
}

void out(char *fmt, ...)
{
	va_list ap;
	va_start(ap, fmt);
	fprintf(f, "\t");
	vfprintf(f, fmt, ap);
	fprintf(f, "\n");
	va_end(ap);
}

void gen(Node *node)
{
	static int curr_label = 0;
	if (!node || node->type == NODE_NONE)
		return;
	if (node->type == NODE_PROGRAM)
	{
		Node *curr = node->next_stmt;
		while (curr)
		{
			gen(curr);
			curr = curr->next_stmt;
		}
	}
	else if (node->type == NODE_FUNC_DEF)
	{
		if (!node->body)
			return ;
		if (!strcmp(node->tok->name, "main"))
			fprintf(f, ".globl\t_main\n");
		fprintf(f, "_%s:\n", node->tok->name);
		out("pushq %%rbp");
		out("movq %%rsp, %%rbp");
		node->stack_size = align(node->stack_size, 16);
		// initially rbp point at return address of the caller function
		// allocate space for all local variables we subtrace since the stack grows downward
		out("subq $%d, %%rsp", node->stack_size);

		char *reg[] = {"rdi", "rsi", "rdx", "rcx", "r8", "r9"};
		for (int i = 0; i < node->param_count && i < 6; i++)
		{
			Var *v = node->params[i]->var;
			out("mov%s %%%s, -%d(%%rbp)", get_inst_suffix(v->type->size),
					get_register_by_size(reg[i], v->type->size),
					v->offset);
			//out("movq %%%s, -%d(%%rbp)", reg[i], node->params[i]->var->offset);	
		}
		if (node->param_count > 6)
		{
			//todo: recheck this
			int offset = node->params[5]->var->offset + 8;
			int offset2 = 16;
			for (int i = 6; i < node->param_count; i++)
			{
#if 0
				out("mov%s %%%s, -%d(%%rbp)", get_inst_suffix(node->t->size), 
					get_register_by_size("rax", node->t->size),
					node->left->var->offset);
#endif
				out("movq %d(%%rbp), %%rax", offset2);
				out("movq %%rax, -%d(%%rbp)", offset);
				offset += 8;
				offset2 += 8;
			}
		}
		gen(node->body);
		out("movq $0, %%rax");
		out("movq %%rbp, %%rsp");
		out("popq %%rbp");
		out("ret\n");
	}
	else if (node->type == NODE_BLOCK)
	{
		Node *curr = node->first_stmt;
		fprintf(f, "//begin block\n");
		while (curr)
		{
			gen(curr);
			curr = curr->next_in_block;
		}
		fprintf(f, "//end block\n");
	}
	else if (node->type == NODE_VAR_DECL)
	{
		Node *curr = node->next_in_decl;
		while (curr)
		{
			if (curr->var->global)
			{

			}
			else if (!curr->var->global && curr->left)
				gen(curr->left);
			curr = curr->next_in_decl;
		}
	}
	else if (node->type == NODE_RETURN)
	{
		gen(node->left);
		out("movq %%rbp, %%rsp");
		out("popq %%rbp");
		out("ret");
	}
	else if (node->type == NODE_IF)
	{
		int label = curr_label++;
		fprintf(f, "//if begin\n");
		gen(node->condition);
		out("cmpq $0, %%rax");
		out("je ELSE%d", label);
		gen(node->body);
		out("jmp END_IF%d", label);
		fprintf(f, "ELSE%d:\n", label);
		if (node->else_)
			gen(node->else_);
		fprintf(f, "END_IF%d:\n", label);
	}
	else if (node->type == NODE_WHILE)
	{
		int label = curr_label++;
		fprintf(f, "WHILE%d:\n", label);
		gen(node->condition);
		out("cmpq $0, %%rax");
		out("je WHILE_END%d", label);
		gen(node->body);
		out("jmp WHILE%d", label);
		fprintf(f, "WHILE_END%d:\n", label);
	}
	else if (node->type == NODE_FOR)
	{
		int label = curr_label++;
		fprintf(f, "//for init\n");
		gen(node->init);
		fprintf(f, "FOR%d:\n", label);
		gen(node->condition);
		out("cmpq $0, %%rax");
		out("je FOR_END%d", label);
		gen(node->body);
		gen(node->inc);
		out("jmp FOR%d", label);
		fprintf(f, "FOR_END%d:\n", label);
	}
	else if (node->type == NODE_INT)
	{
		node->t = type_int;
		out("movq $%d, %%rax", node->tok->int_val);
	}
	else if (node->type == NODE_STRING)
	{
		int id = add_string_lit(node->tok->name);
		out("leaq L_.str.%d(%%rip), %%rax", id);
	}
	else if (node->type == NODE_VAR)
	{
		node->t = node->var->type;
		if (node->t->t == ARRAY)
		{
			Type *type = new_type(PTR);
			type->ptr_to = node->var->type->ptr_to;
			node->t = type;
			out("movq %%rbp, %%rax");
			out("subq $%d, %%rax", node->var->offset);
		}
		else
		{

			out("xorq %%rax, %%rax");
			if (node->var->global)
				out("mov%s _%s(%%rip), %%%s", get_inst_suffix(node->t->size), 
						node->var->name, get_register_by_size("rax", node->t->size));
			else
				out("mov%s -%d(%%rbp), %%%s", get_inst_suffix(node->t->size), 
					node->var->offset,
					get_register_by_size("rax", node->t->size));
		}
	}
	else if (node->type == NODE_FUNC_CALL)
	{
		if (!strcmp(node->tok->name, "ASSERT"))
		{
			int label = curr_label++;
			char *s2 = node->tok->str;
			while (*s2 != '\n')
				s2++;
			fprintf(f, "//%.*s", (int)(s2 - node->tok->str + 1), node->tok->str);
			gen(node->args[0]);
			out("movq %%rax, %%r11\n");
			gen(node->args[1]);
			out("cmpq %%r11, %%rax");
			out("je ASSERT_OK%d\n", label);
			out("movq $%d, %%rdi", node->tok->line); // line
			out("movq %%r11, %%rsi", node->tok->line); // expected0
			out("movq %%rax, %%rdx", node->tok->line); // line
			out("callq _error");
			fprintf(f, "ASSERT_OK%d:\n", label);
			return ;
		}
		Func *fn = find_func(node->tok->name);
		if (!fn)
			error_token(node->tok, "underclared function");
		node->t = fn->ret_type;

		char *reg[] = {"rdi", "rsi", "rdx", "rcx", "r8", "r9"};
		for (int i = 0; i < node->arg_count && i < 6; i++)
		{
			gen(node->args[i]);
			out("movq %%rax, %%%s", reg[i]);
		}
		for (int i = node->arg_count - 1; i >= 6; i--)
		{
			gen(node->args[i]);	
			out("pushq %%rax");
		}
		out("xorq %%rax, %%rax");
		out("callq _%s", node->tok->name);
		if (node->arg_count > 6)
			out("addq $%d, %%rsp", (node->arg_count - 6) * 8);
	}
	else if (node->type == NODE_ADDR)
	{
		Type *type;
		if (node->left->type == NODE_DEREF)
		{
			gen(node->left->left);
			type = node->left->left->t;
		}
		else if (node->left->type == NODE_VAR)
		{
			node->left->t = node->left->var->type; // ??
			out("movq %%rbp, %%rax");
			out("subq $%d, %%rax", node->left->var->offset);
			type = new_type(PTR);
			type->ptr_to = node->left->t;
		}
		else
			assert(0);
		node->t = type;
	}
	else if (node->type == NODE_DEREF)
	{
		gen(node->left);
		if (!node->left->t->ptr_to)
			error_token(node->tok, "dereferencing a non-pointer lvalue");
		node->t = node->left->t->ptr_to;
	//	out("xorq %%r10, %%r10");
	//	TODO: check if this ok
		out("mov%s (%%rax), %%%s", get_inst_suffix(node->t->size), 
					get_register_by_size("rax", node->t->size));
	//	out("movq %%r10, %%rax");
	}
	else if (node->type == NODE_NEG)
	{
		gen(node->left);
		if (node->left->t->ptr_to)
			error_token(node->tok, "negating a pointer");
		node->t = node->left->t;
		out("xorq %%r10, %%r10");
		out("subq %%rax, %%r10");
		out("movq %%r10, %%rax");
	}
	else if (node->type == NODE_BINARY)
	{
		gen(node->left);
		if (type_match(node->tok->type, TOKEN_LOGICAL_AND, TOKEN_LOGICAL_OR, -1))
		{
			int label = curr_label++;
			int is_and = node->tok->type == TOKEN_LOGICAL_AND;
			out("cmpq $0, %%rax");
			out("movq $%d, %%rax", !is_and);
			out("j%se AND_OR%d", (is_and ? "" : "n"), label);
			gen(node->right);
			out("cmpq $0, %%rax");
			out("setne %%al");
			out("movzbq %%al, %%rax");
			fprintf(f, "AND_OR%d:\n", label);
			return ;
		}
		out("pushq %%rax");
		gen(node->right);
		out("movq %%rax, %%r10");
		out("popq %%rax");
		// left = r10, right = rax
	

		assert(node->left->t && node->right->t);
		// not handling *x + 1 where x is int **
		if (node->left->t->ptr_to && !node->right->t->ptr_to)
			out("imulq $%d, %%r10", node->left->t->ptr_to->size);
		else if (node->right->t->ptr_to && !node->left->t->ptr_to)
			out("imulq $%d, %%rax", node->right->t->ptr_to->size);

		node->t = node->left->t;
		if (node->right->t->t == INT && node->left->t->t == CHAR)
			node->t = node->right->t;

		if (node->left->t->ptr_to)
			node->t = node->left->t;
		if (node->right->t->ptr_to)
			node->t = node->right->t;
		//else if (!types_are_equal(node->left->t, node->right->t))
		//	error_token(node->tok, "binary opration with non-matching types");


		if (node->tok->type == '+')
			out("addq %%r10, %%rax");
		else if (node->tok->type == '-')
			out("subq %%r10, %%rax");
		else if (node->tok->type == '*')
			out("imulq %%r10, %%rax");
		else if (node->tok->type == '/' || node->tok->type == '%')
		{
			out("cltd");
			out("idivq %%r10");
			if (node->tok->type == '%')
				out("movq %%rdx, %%rax");
		}
		else if (type_match(node->tok->type, TOKEN_EQUAL, TOKEN_NOT_EQUAL,
				TOKEN_LESS_OR_EQUAL, TOKEN_GREATER_OR_EQUAL, '<', '>', -1))
		{
			char *s = "";
			if (node->tok->type == TOKEN_EQUAL)
				s = "e";
			else if (node->tok->type == TOKEN_NOT_EQUAL)
				s = "ne";
			else if (node->tok->type == '<')
				s = "l";
			else if(node->tok->type == '>')
				s = "g";
			else if(node->tok->type == TOKEN_LESS_OR_EQUAL)
				s = "le";
			else if(node->tok->type == TOKEN_GREATER_OR_EQUAL)
				s = "ge";
			else
				assert(0);
			out("cmpq %%r10, %%rax");
			out("set%s %%al", s);
			out("movzbq %%al, %%rax");
		}
	}
	else if (node->type == NODE_ASSIGN)
	{
		if (node->left->type == NODE_DEREF)
		{
			gen(node->right);
			out("pushq %%rax");
			gen(node->left->left);
			if (!node->left->left->t->ptr_to)
			error_token(node->tok, "dereferencing a non-pointer lvalue");

			//check types here
			out("popq %%r10");
			out("movq %%r10, (%%rax)");
		}
		else
		{
			gen(node->right);
			node->left->t = node->left->var->type;
			assert(node->left->t);
			//if (!types_are_equal(node->left->t, node->right->t))
			//	error_token(node->tok, "assignement with non-matching types");
			node->t = node->left->var->type;
			if (node->t->t == ARRAY)
				error_token(node->tok, "array is constant");
			if (node->left->var->global)
			{
				out("mov%s %%%s, _%s(%%rip)", get_inst_suffix(node->t->size),
						get_register_by_size("rax", node->t->size),
						node->left->var->name);
			}
			else
			{
				out("mov%s %%%s, -%d(%%rbp)", get_inst_suffix(node->t->size), 
					get_register_by_size("rax", node->t->size),
					node->left->var->offset);
			}
		}
	}
	if (node->next_in_comma)
		gen(node->next_in_comma);
}

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
		out(".globl _%s", decl->var->name);

		int	align = log2_int(decl->var->type->size); 
		if (align)
			out(".p2align %d", align); // todo: understand this

		fprintf(f, "_%s:\n", curr_scope->vars[i]->name);
		out(".%s %d\n", get_size_name(curr_scope->vars[i]->type->size), (!decl->left ? 0 : decl->left->right->tok->int_val));
	}
	for (int i = 0; i < strings_literal_count; i++)
	{
		fprintf(f, "L_.str.%d:\n", i);
		out(".asciz \"%s\"", strings_literal[i]);
	}
}
/*

TODO: check alignement of stuff
*/
