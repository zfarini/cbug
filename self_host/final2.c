# 1 "main2.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 362 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "main2.c" 2
# 13 "main2.c"
# 1 "./cbug2.h" 1



enum Token_Type {
 TOKEN_INTEGER = 256,
 TOKEN_IDENTIFIER,
 TOKEN_LOGICAL_AND,
 TOKEN_LOGICAL_OR,
 TOKEN_EQUAL,
 TOKEN_NOT_EQUAL,
 TOKEN_LESS_OR_EQUAL,
 TOKEN_GREATER_OR_EQUAL,
 TOKEN_RETURN,
 TOKEN_IF,
 TOKEN_ELSE,
 TOKEN_WHILE,
 TOKEN_FOR,
 TOKEN_INT,
 TOKEN_VOID,
 TOKEN_CHAR,
 TOKEN_SHORT,
 TOKEN_LONG,
 TOKEN_STRING,
 TOKEN_INC,
 TOKEN_DEC,
 TOKEN_BREAK,
 TOKEN_CONTINUE,
 TOKEN_UNSIGNED,
 TOKEN_SIGNED,
 TOKEN_SIZEOF,
 TOKEN_ADD_ASSIGN,
 TOKEN_SUB_ASSIGN,
 TOKEN_MUL_ASSIGN,
 TOKEN_DIV_ASSIGN,
 TOKEN_STRUCT,
 TOKEN_UNION,
 TOKEN_ARROW,
 TOKEN_ENUM,
};

struct Token {
 int type;
 long long int_val;
 char *name;
 int line;
 int col;
 char *str;
};

enum Node_Type {
 NODE_NONE,
 NODE_PROGRAM,
 NODE_VAR,
 NODE_INT,
 NODE_BINARY,
 NODE_ASSIGN,
 NODE_NEG,
 NODE_RETURN,
 NODE_IF,
 NODE_WHILE,
 NODE_FOR,
 NODE_BLOCK,
 NODE_FUNC_CALL,
 NODE_UNARY,
 NODE_FUNC_DEF,
 NODE_DEREF,
 NODE_ADDR,
 NODE_VAR_DECL,
 NODE_STRING,
 NODE_CONTINUE,
 NODE_BREAK,
 NODE_CAST,
 NODE_QUESTION,
 NODE_MEMBER,
};

struct Node {
 int type;
 Var *var;
 Token *tok;
 Node *left;
 Node *right;
 Node *next_stmt;
 Node *body;
 Node *condition;
 Node *init;
 Node *inc;
 Node *next_in_block;
 Node *next_in_decl;
 Node *first_stmt;
 Node *next_in_comma;
 Type *cast_type;

 Type *ret_type;
 Node *else_;
 Type *t;
 Func *func;
 int member_idx;

 Node *args[100];
 Node *params[100];
 int arg_count;
 int param_count;
 int stack_size;
};

enum {
 INT,
 PTR,
 VOID,
 ARRAY,
 SHORT,
 CHAR,
 LONG,
 STRUCT,
 FUNC,
 UNKNOWN,
};

struct FILE {
 int x;
};
struct Type {
 int t;
 Type *ptr_to;
 Token *tok;
 int array_size;
 int size;
 int is_unsigned;
 char *name;
 Type *field_type[100];
 char *field_name[100];
 int field_offset[100];
 int field_count;
};

struct Scope {
 Scope *parent;
 Scope *prev;
 Scope *child;
 Scope *next;
 Var *vars[100];
 int var_count;
};

struct Var {
 Type *type;
 char *name;
 int offset;
 Token *token;
 int global;
 Node *decl;
};

struct Func {
 Type *ret_type;
 char *name;
};

struct Enum {
 char *name;
 int value;
};

struct Token_Name {
 char *name;
 int type;

};

Node *binary();
Type *parse_type();
Node *parse();
Node *function();
Node *decl();
Node *statement();
Node *expr();
Node *assign();
Node *conditional();
Node *logical_or();
Node *logical_and();
Node *equality();
Node *relational();
Node *add();
Node *mul();
Node *cast();
Node *unary();
Node *postfix();
Node *primary();
void error();
void error_token();
char *read_entire_file();
void out();

void *malloc();
int assert();
void *calloc();
int isspace();
int isdigit();
int isalpha();
int isalnum();
void memcpy();
int strcmp();
char *strdup();
int strlen();
int strncmp();
int strchr();
int printf();
int fprintf();
FILE *fopen();
Node *new_node();

int type_match();
void dbg();
# 14 "main2.c" 2

void assert(int x)
{
 if (!x)
  printf("assertion failed\n");
}
# 40 "main2.c"
char *filename;
char *program_str;
FILE *f;

Type types[10000];
int type_count;
Type *types_declared[1000];
int types_declared_count;

char *strings_literal[10000];
int strings_literal_count;

Type *type_long;
Type *type_int;
Type *type_short;
Type *type_char;
Type *type_void;

Func funcs[10000];
int func_count;

Scope scopes[100000];
int scope_count = 0;
Scope *curr_scope;

Token tokens[100000];
int ct;

Node _nodes[100000];
int _curr_node;

Var vars[10000];
int var_count = 0;

Enum enums[10000];
int enum_count;

Node *curr_func;



# 1 "./tokenize.c" 1
Token_Name multi_char_tokens_type[20];
Token_Name keywords[30];
char *token_type_name_c[255];

char *token_type_name(int type)
{
 if (type == TOKEN_INTEGER)
  return "int";
 else if (type == TOKEN_IDENTIFIER)
  return "identifier";
 else if (type == TOKEN_STRING)
  return "string";
 else if (type < 255)
 {
  if (!token_type_name_c[type])
  {
   token_type_name_c[type] = malloc(2);
   token_type_name_c[type][0] = type;
   token_type_name_c[type][1] = 0;
  }
  return token_type_name_c[type];
 }
 else
 {
  for (int i = 0; multi_char_tokens_type[i].name; i++)
  {
   if (multi_char_tokens_type[i].type == type)
    return multi_char_tokens_type[i].name;
  }
  for (int i = 0; keywords[i].name; i++)
  {
   if (keywords[i].type == type)
    return keywords[i].name;
  }
 }
 assert(0);
}

Token *new_temp_token(int type)
{
 Token *t = calloc(sizeof(Token), 1);
 t->type = type;
 t->line = -1;
 t->col = -1;
 return t;
}

char get_backspace_char(char c)
{
 if (c == 'n') return '\n';
 if (c == 't') return '\t';
 if (c == 'r') return '\r';
 if (c == 'v') return '\v';
 if (c == 'f') return '\f';
 if (c == 'a') return '\a';
 if (c == 'b') return '\b';
 return c;
}

int multi_char_token_count = 0;
int keyword_count = 0;

void add_multi_char_token(char *name, int type)
{
 multi_char_tokens_type[multi_char_token_count].name = name;
 multi_char_tokens_type[multi_char_token_count].type = type;
 multi_char_token_count++;
}

void add_keyword(char *name, int type)
{
 keywords[keyword_count].name = name;
 keywords[keyword_count].type = type;
 keyword_count++;
}

Token *tokenize(char *s)
{
 add_multi_char_token("==", TOKEN_EQUAL);
 add_multi_char_token("!=", TOKEN_NOT_EQUAL);
 add_multi_char_token("<=", TOKEN_LESS_OR_EQUAL);
 add_multi_char_token(">=", TOKEN_GREATER_OR_EQUAL);
 add_multi_char_token("&&", TOKEN_LOGICAL_AND);
 add_multi_char_token("||", TOKEN_LOGICAL_OR);
 add_multi_char_token("++", TOKEN_INC);
 add_multi_char_token("--", TOKEN_DEC);
 add_multi_char_token("+=", TOKEN_ADD_ASSIGN);
 add_multi_char_token("-=", TOKEN_SUB_ASSIGN);
 add_multi_char_token("*=", TOKEN_MUL_ASSIGN);
 add_multi_char_token("/=", TOKEN_DIV_ASSIGN);
 add_multi_char_token("->", TOKEN_ARROW);
 add_multi_char_token(0, 0);
 add_keyword("return", TOKEN_RETURN);
 add_keyword("for", TOKEN_FOR);
 add_keyword("while", TOKEN_WHILE);
 add_keyword("if", TOKEN_IF);
 add_keyword("else", TOKEN_ELSE);
 add_keyword("int", TOKEN_INT);
 add_keyword("void", TOKEN_VOID);
 add_keyword("char", TOKEN_CHAR);
 add_keyword("short", TOKEN_SHORT);
 add_keyword("long", TOKEN_LONG);
 add_keyword("unsigned", TOKEN_UNSIGNED);
 add_keyword("signed", TOKEN_SIGNED);
 add_keyword("break", TOKEN_BREAK);
 add_keyword("continue", TOKEN_CONTINUE);
 add_keyword("sizeof", TOKEN_SIZEOF);
 add_keyword("long", TOKEN_LONG);
 add_keyword("struct", TOKEN_STRUCT);
 add_keyword("union", TOKEN_UNION);
 add_keyword("enum", TOKEN_ENUM);

 int i = 0, j = 0;
 int line = 1;
 int col = 1;
 assert(s);
 while (s[i])
 {
  Token *token = &tokens[j];
  token->type = 0;
  while (isspace(s[i]))
  {
   if (s[i] == '\n')
   {
    line++;
    col = 1;
   }
   else
    col++;
   i++;
  }
  if (!s[i])
   break;
  if (s[i] == '#')
  {
   while (s[i] != '\n')
    i++;
   continue;
  }
  else if (s[i] == '/' && s[i + 1] == '/')
  {
   while (s[i] && s[i] != '\n')
    i++;
   continue;
  }
  if (s[i] == '/' && s[i + 1] == '*')
  {
   i += 2;

   while (s[i] && (s[i] != '*' || s[i + 1] != '/'))
    i++;
   if (s[i])
    i += 2;
   else
    error("unclosed comment");
   continue;
  }
  token->str = s + i;
  token->line = line;
  token->col = col;
  int last = i;
  if (isdigit(s[i]))
  {

   token->type = TOKEN_INTEGER;
   token->int_val = 0;
   while (isdigit(s[i]))
   {
    token->int_val = token->int_val * 10 + (s[i] - '0');
    i++;
   }
  }
  else if (s[i] == '\'')
  {
   i++;
   token->type = TOKEN_INTEGER;
   if (s[i] == '\\')
   {
    i++;
    token->int_val = get_backspace_char(s[i]);
   }
   else
    token->int_val = s[i];
   i++;
   if (s[i] != '\'')
    error_token(token, "missing terminating ' character");
   i++;
  }
  else if (s[i] == '"')
  {
   i++;
   token->type = TOKEN_STRING;
   int k = i;
   while (s[i] && (s[i] != '"' || s[i - 1] == '\\'))
    i++;

   if (s[i] != '"')
    error_token(token, "missing terminating \" character");
   char *name = malloc(i - k + 1);
   memcpy(name, s + k, i - k);
   name[i - k] = 0;
   token->name = name;
   i++;
  }
  else if (isalpha(s[i]) || s[i] == '_')
  {
   int k = i;
   while (isalnum(s[i]) || s[i] == '_')
    i++;
   char *name = malloc(i - k + 1);
   memcpy(name, s + k, i - k);
   name[i - k] = 0;
   token->type = TOKEN_IDENTIFIER;
   for (int l = 0; keywords[l].name; l++)
   {
    if (!strcmp(name, keywords[l].name))
    {
     token->type = keywords[l].type;
     break;
    }
   }
   token->name = name;
  }
  else
  {
   for (int k = 0; multi_char_tokens_type[k].name; k++)
   {
    if (!strncmp(s + i, multi_char_tokens_type[k].name,
       strlen(multi_char_tokens_type[k].name)))
    {
     token->type = multi_char_tokens_type[k].type;
     i += strlen(multi_char_tokens_type[k].name);
     break;
    }
   }
   if (!token->type)
   {
    if (strchr("+-*/%()=;,<>{}&[]?:.!", s[i]))
    {
     token->type = s[i];
     i++;
    }
    else
    {
     error_token(token, "unknown token `%c`", s[i]);
    }
   }
  }
  col += i - last;
  j++;
 }
 tokens[j].type = 0;
 tokens[j].line = line, tokens[j].col = col;
 tokens[j].str = s + i;
 if (s[i - 1] == '\n')
  tokens[j].line--, tokens[j].col = 1;
# 270 "./tokenize.c"
 return tokens;
}
# 81 "main2.c" 2

int align(int n, int a)
{
 return (n + a - 1) / a * a;
}

char *find(char *s, char c)
{
 int i;

 i = 0;
 while (s[i])
 {
  if (s[i] == c)
   return (s + i);
  i++;
 }
 return (0);
}


# 1 "./parse.c" 1
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

Type *new_type(int t)
{
 Type *type = &types[type_count++];
 type->t = t;
 if (t == PTR || t == ARRAY || t == FUNC)
  type->is_unsigned = 1;
 if (t == PTR || t == ARRAY || t == LONG || t == FUNC)
  type->size = 8;
 else if (type->t == INT)
  type->size = 4;
 else if (type->t == SHORT)
  type->size = 2;
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
 if (t1->is_unsigned != t2->is_unsigned)
  return 0;
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

 Func *func = find_func(name);
 if (!func)
  return 0;
 Type *type = new_type(FUNC);
 Var *v = &vars[var_count++];
 v->type = type;
 v->name = name;
 v->token = &tokens[ct];
 return v;
}

Var *new_var(Type *type, char *name)
{
 for (int i = 0; i < curr_scope->var_count; i++)
 {
  if (!strcmp(curr_scope->vars[i]->name, name))
   error_token(&tokens[ct], "redeclaration of variable \"%s\"\n", name);
 }
 Var *v = &vars[var_count++];
 v->name = name;
 v->token = &tokens[ct];
 assert(v->token->type == TOKEN_IDENTIFIER &&
   v->token->name == v->name);
 v->type = type;
 curr_scope->vars[curr_scope->var_count++] = v;
 if (!type->size)
  error_token(&tokens[ct], "type with size 0?");
 if (curr_func && type->size)
 {
  if (type->t == ARRAY)
  {
   curr_func->stack_size += type->ptr_to->size * type->array_size;
  }
  else
   curr_func->stack_size += type->size;
  curr_func->stack_size = align(curr_func->stack_size, v->type->size);
  v->offset = curr_func->stack_size;
  assert(v->offset % v->type->size == 0);
 }
 return (v);
}
# 160 "./parse.c"
void skip(int type)
{
 if (tokens[ct].type != type)
  error_token(&tokens[ct], "expected `%s`", token_type_name(type));
 ct++;
}

int is_typename(Token *tok)
{
 if (type_match(tok->type, TOKEN_INT, TOKEN_VOID, TOKEN_CHAR, TOKEN_SHORT, TOKEN_LONG, TOKEN_UNSIGNED, TOKEN_SIGNED, -1))
  return 1;
 if (tok->type == TOKEN_IDENTIFIER)
 {
  for (int i = 0; i < types_declared_count; i++)
  {
   if (!strcmp(types_declared[i]->name, tok->name))
    return 1;
  }
 }
 return 0;
}

Type *find_binary_op_type(Type *t1, Type *t2)
{
 if (types_are_equal(t1, t2))
  return t1;
 if (t1->ptr_to && !t2->ptr_to)
  ;

 return 0;
}

char *strjoin(char *s1, char *s2)
{
 int l1 = strlen(s1);
 int l2 = strlen(s2);
 char *s = malloc(l1 + l2 + 1);
 memcpy(s, s1, l1);
 memcpy(s + l1, s2, l2);
 s[l1 + l2] = 0;
 return s;
}

char *get_type_str(Type *type)
{
 if (type->t == STRUCT)
 {
  return strjoin("struct ", type->name);
 }
 if (type->t == PTR)
 {
  return strjoin(get_type_str(type->ptr_to), "*");
 }
 else if (type->t == ARRAY)
 {
  return strjoin(get_type_str(type->ptr_to), "[]");
 }
 if (type->t == VOID) return "void";
 if (type->t == CHAR) return "char";
 if (type->t == INT) return "int";
 if (type->t == SHORT) return "short";
 if (type->t == LONG) return "long";
 if (type->t == UNKNOWN) return "unknown";
 assert(0);
}

Type *add_type(Node *node);

void implicit_cast(Node **node, Type *type)
{
 add_type(*node);
 if (types_are_equal(type, (*node)->t))
  return ;
 Node *cast = new_node(NODE_CAST);
 cast->left = *node;
 cast->t = type;
 *node = cast;
}

Type *find_common_type(Type *t1, Type *t2)
{
 if (t1->ptr_to)
  return t1;
 if (t2->ptr_to)
  return t2;
 if (t1->size < 4)
  t1 = type_int;
 if (t2->size < 4)
  t2 = type_int;
 if (t1->size != t2->size)
  return(t1->size < t2->size) ? t2 : t1;
 return t2->is_unsigned ? t2 : t1;
}

Type *add_type(Node *node)
{
 Type *t = type_void;

 if (!node)
  return t;
 if (node->t)
  t = node->t;
 else if (node->type == NODE_INT)
 {
  if (node->tok->int_val > (2147483647) || node->tok->int_val < (-2147483648))
   t = type_long;
  else
   t = type_int;
 }
 else if (node->type == NODE_UNARY)
 {
  if (node->tok->type == TOKEN_INC || node->tok->type == TOKEN_DEC)
  {
   t = add_type(node->left);
   if (t->t == VOID)
    error_token(node->tok, "invalid operand for '%s' operator", token_type_name(node->tok->type));
  }
  else if (node->tok->type == '!')
  {
   add_type(node->left);
   t = type_int;
  }
  else
   assert(0);
 }
 else if (node->type == NODE_STRING)
 {
  t = new_type(PTR);
  t->ptr_to = type_char;
 }
 else if (node->type == NODE_VAR)
  t = node->var->type;
 else if (node->type == NODE_FUNC_CALL)
  t = node->func->ret_type;
 else if (node->type == NODE_ADDR)
 {
  t = new_type(PTR);
  t->ptr_to = add_type(node->left);
  if (t->ptr_to->t == VOID)
   error_token(node->tok, "invalid operand for '&'");
 }
 else if (node->type == NODE_DEREF)
 {
  Type *tt = add_type(node->left);
  if (!tt->ptr_to)
   error_token(node->tok, "derefrencing a non-pointer");
  if (tt->ptr_to->t == VOID)
   error_token(node->tok, "derefrencing a void pointer");
  t = tt->ptr_to;
 }
 else if (node->type == NODE_NEG)
 {

  t = add_type(node->left);
  if (t->t == VOID)
   error_token(node->tok, "invalid operand for '-'");
 }
 else if (node->type == NODE_CAST)
 {
  t = node->cast_type;
  add_type(node->left);
 }
 else if (node->type == NODE_BINARY)
 {
  int tok = node->tok->type;
  add_type(node->left);
  add_type(node->right);

  Type *t1 = node->left->t;
  Type *t2 = node->right->t;
  if (t1->t == VOID || t2->t == VOID)
   assert(0);

  if (t1->ptr_to || t2->ptr_to)
  {
   if (type_match(tok, '*', '/', '%', -1) || (!t1->ptr_to && tok == '-')
    || (t1->ptr_to && t2->ptr_to && tok == '+')
    || (t1->ptr_to && t2->ptr_to && tok == '-' && !types_are_equal(t1, t2)))
    error_token(node->tok, "invalid operands to binary expression ('%s' and '%s')", get_type_str(t1), get_type_str(t2));
   if (t1->ptr_to && !t2->ptr_to && (tok == '+' || tok == '-'))
    t = t1;
   else if (t2->ptr_to && !t1->ptr_to && tok == '+')
    t = t2;
   else
    t = type_int;
  }
  else
  {
   Type *tt = find_common_type(node->left->t, node->right->t);
   implicit_cast(&node->left, tt);
   implicit_cast(&node->right, tt);
   if (type_match(node->tok->type, '+', '-', '*', '/', '%', -1))
    t = node->left->t;
   else
    t = type_int;
  }
 }
 else if (node->type == NODE_ASSIGN)
 {
  t = add_type(node->left);
  assert(t->t != VOID);
  add_type(node->right);
  implicit_cast(&node->right, t);
 }
 else if (node->type == NODE_QUESTION)
 {
  add_type(node->condition);
  add_type(node->left);
  add_type(node->right);
  Type *tt = find_common_type(node->left->t, node->right->t);
  implicit_cast(&node->left, tt);
  implicit_cast(&node->right, tt);
  t = tt;
 }
 else
  assert(0);
 node->t = t;
 add_type(node->next_in_comma);
 return t;
}

Node *parse(char *s)
{
 add_func("ASSERT", type_void);
 tokenize(s);
 ct = 0;
 Node *prog = new_node(NODE_PROGRAM);

 curr_scope = new_scope();
 curr_scope->parent = 0;

 Node *curr = prog;
 while (tokens[ct].type)
 {
  int save = ct;

  if (tokens[ct].type == TOKEN_ENUM)
  {
   ct++;
   if (tokens[ct].type == TOKEN_IDENTIFIER)
    ct++;
   skip('{');
   int val = 0;
   while (tokens[ct].type != '}')
   {
    enums[enum_count].name = tokens[ct].name;
    skip(TOKEN_IDENTIFIER);
    if (tokens[ct].type == '=')
    {
     ct++;
     if (tokens[ct].type != TOKEN_INTEGER)
      skip(TOKEN_INTEGER);
     val = tokens[ct].int_val;
     ct++;
    }
    if (tokens[ct].type == ',')
     ct++;
    else if (tokens[ct].type != '}')
     skip('}');
    enums[enum_count].value = val;
    enum_count++;
    val++;
   }
   skip('}');
   skip(';');
  }
  else if (tokens[ct].type == TOKEN_STRUCT)
  {
   Token *st_token = &tokens[ct];
   Type *type = new_type(STRUCT);

   ct++;
   type->name = tokens[ct].name;
   skip(TOKEN_IDENTIFIER);

   skip('{');
   int i = 0;
   int size = 0;
   while (tokens[ct].type && tokens[ct].type != '}')
   {
    Node *node = decl(1);
    node = node->next_in_decl;
    while (node)
    {
     type->field_name[i] = node->var->name;
     type->field_type[i] = node->var->type;

     assert(node->var->type->size);
     size = align(size, node->var->type->size);
     type->field_offset[i] = size;
     if (node->var->type->t == ARRAY)
      size += node->var->type->size * node->var->type->array_size;
     else
      size += node->var->type->size;
     i++;
     node = node->next_in_decl;
    }
    skip(';');
   }
   if (!size)
    error_token(st_token, "empty structs are not handled yet");
   printf("%d\n", size);

   type->size = align(size, type->field_type[0]->size);
   type->field_count = i;
   types_declared[types_declared_count++] = type;
   for (int j = 0; j < types_declared_count; j++)
   {
    Type *t = types_declared[j];
    for (int k = 0; k < t->field_count; k++)
    {
     Type *cur = t->field_type[k];
     while (cur->ptr_to)
     {
      if (cur->ptr_to->t == UNKNOWN &&
       !strcmp(cur->ptr_to->tok->name, type->name))
      {
       cur->ptr_to = type;
       break;
      }
      cur = cur->ptr_to;
     }
    }
   }
   skip('}');
   skip(';');

   continue;
  }
  else
  {
   if (!is_typename(&tokens[ct]))
    error_token(&tokens[ct], "expected a function or variable declaration");
   parse_type();
   skip(TOKEN_IDENTIFIER);
   int globl = 0;
   if (tokens[ct].type != '(')
    globl = 1;
   ct = save;
   if (globl)
   {
    curr->next_stmt = decl(0);
    skip(';');
   }
   else
    curr->next_stmt = function();
   if (curr->next_stmt)
    curr = curr->next_stmt;
  }
 }
 for (int i = 0; i < types_declared_count; i++)
 {
  Type *t = types_declared[i];
  for (int j = 0; j < t->field_count; j++)
  {
   if (t->field_type[j]->ptr_to &&
    t->field_type[j]->ptr_to->t == UNKNOWN)
    error_token(t->field_type[j]->ptr_to->tok, "unknown type");
  }
  printf("declared struct '%s': (size=%d)\n", t->name, t->size);
  for( int j = 0; j < t->field_count; j++)
   printf("\t%s %s\n", get_type_str(t->field_type[j]), t->field_name[j]);
 }
 return prog;
}

Type *find_type(char *name)
{
 for (int i = 0; i < types_declared_count; i++)
 {
  if (!strcmp(types_declared[i]->name, name))
   return types_declared[i];
 }
 return 0;
}

Type *parse_base_type()
{
 int i = 0, s = 0, c = 0, l = 0, v = 0, u = 0, si = 0;
 Type *type = 0;
 Token *start = &tokens[ct];
 if (start->type == TOKEN_IDENTIFIER)
 {
  type = find_type(start->name);
  if (type)
  {
   ct++;
   return type;
  }
 }
 while (1)
 {
  if (tokens[ct].type == TOKEN_INT)
   i++;
  else if (tokens[ct].type == TOKEN_VOID)
   v++;
  else if (tokens[ct].type == TOKEN_CHAR)
   c++;
  else if (tokens[ct].type == TOKEN_SHORT)
   s++;
  else if (tokens[ct].type == TOKEN_LONG)
   l++;
  else if (tokens[ct].type == TOKEN_UNSIGNED)
   u++;
  else if (tokens[ct].type == TOKEN_SIGNED)
   si++;
  else
   break;
  ct++;
 }
 int err = 0;
 if (i > 1 || v > 1 || c > 1 || s > 1 || u > 1 || si > 1 || l > 2)
  err = 1;
 if (si && u)
  err = 1;
 if (i + v + c + s > 1)
  err = 1;
 if (l && (v || c || s))
  err = 1;
 if (l)
  type = new_type(LONG);
 else if (i)
  type = new_type(INT);
 else if (v)
  type = new_type(VOID);
 else if (c)
  type = new_type(CHAR);
 else if (s)
  type = new_type(SHORT);
 else if (si || u)
  type = new_type(INT);
 else
 {
  type = new_type(UNKNOWN);
  type->tok = &tokens[ct];
  ct++;
 }
 if (type)
  type->is_unsigned = u;
 if (err)
  error_token(start, "invalid type");
 return type;
}

Type *parse_type()
{
 Type *type = parse_base_type();
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

 while (tokens[ct].type != ')')
 {
  node->params[count] = new_node(NODE_VAR_DECL);
  Type *type = parse_type();
  node->params[count]->var = new_var(type, tokens[ct].name);
  skip(TOKEN_IDENTIFIER);

  count++;
  if (tokens[ct].type == ',')
   ct++;
  else if (tokens[ct].type != ')')
   break ;
 }
 skip(')');
 node->param_count = count;
 node->func = add_func(node->tok->name, ret_type);
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
 if (is_typename(&tokens[ct]))
 {
  Node *node = decl(0);
  skip(';');
  return node;
 }
 return statement();
}

Node *decl(int is_struct)
{

 Node *decl = new_node(NODE_VAR_DECL);
 Type *base = parse_base_type();
 Node *curr = decl;
 while (1)
 {
  curr->next_in_decl = new_node(NODE_VAR_DECL);
  Type *type = base;
  while (tokens[ct].type == '*')
  {
   Type *new = new_type(PTR);
   new->ptr_to = type;
   type = new;
   ct++;
  }
  if (!type->ptr_to && type->t == UNKNOWN)
   error_token(&tokens[ct], "unknown type");
  if (type->t == VOID && !type->ptr_to)
   error_token(&tokens[ct], "variable type can't be void");
  if (tokens[ct].type != TOKEN_IDENTIFIER)
   skip(TOKEN_IDENTIFIER);
  Var *var;
  if (tokens[ct + 1].type == '[')
  {
   Type *arr = new_type(ARRAY);
   arr->ptr_to = type;
   arr->size = arr->ptr_to->size;
   arr->array_size = tokens[ct + 2].int_val;
   type = arr;
   if (is_struct)
   {
    var = &vars[var_count++];
    var->name = tokens[ct].name;
    var->type = type;
   }
   else
    var = new_var(type, tokens[ct].name);
   ct += 2;
   skip(TOKEN_INTEGER);
   skip(']');
  }
  else
  {
   if (is_struct)
   {
    var = &vars[var_count++];
    var->name = tokens[ct].name;
    var->type = type;
   }
   else
    var = new_var(type, tokens[ct].name);
   ct++;
  }
  var->decl = curr->next_in_decl;
  if (!curr_scope->parent)
   var->global = 1;
  curr->next_in_decl->var = var;
  if (tokens[ct].type == '=')
  {
   if (tokens[ct + 1].type == '{')
   {
    if (type->t != ARRAY)
     error_token(var->token, "invalid initiliazer");




    ct += 2;
    int end = 0;
    Node *init = 0;
    Node *c = 0;
    for (int i = 0;; i++)
    {
     if (tokens[ct].type == '}')
      end = 1;
     if (end && i >= type->array_size)
      break ;
     if (i >= type->array_size)
     {
      assign();
      if (tokens[ct].type == ',')
       ct++;
      else if (tokens[ct].type != '}')
       skip('}');
      continue;
     }
     Node *value;
     if (end)
     {
      value = new_node(NODE_INT);
      value->tok = new_temp_token(TOKEN_INTEGER);
      value->tok->int_val = 0;
     }
     else
     {
      value = assign();
     }

     Node *add = new_node(NODE_BINARY);
     add->tok = new_temp_token('+');
     add->left = new_node(NODE_VAR);
     add->left->var = var;
     add->right = new_node(NODE_INT);
     add->right->tok = new_temp_token(TOKEN_INT);
     add->right->tok->int_val = i;

     Node *deref = new_node(NODE_DEREF);
     deref->tok = new_temp_token('*');
     deref->left = add;

     Node *a = new_node(NODE_ASSIGN);
     a->tok = new_temp_token('=');
     a->left = deref;
     a->right = value;


     if (!c)
     {
      c = a;
      init = a;
     }
     else
     {
      c->next_in_comma = a;
      c = c->next_in_comma;
     }
     if (tokens[ct].type == ',')
      ct++;
     else if (tokens[ct].type != '}')
      skip('}');
    }
    skip('}');
    curr->next_in_decl->left = init;

   }
   else
   {
    ct--;
    curr->next_in_decl->left = assign();
   }
   add_type(curr->next_in_decl->left);
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
  if (tokens[ct].type != ';')
   node->left = expr();
  else
   node->left = new_node(NODE_NONE);
  skip(';');
 }
 else if (tokens[ct].type == TOKEN_CONTINUE)
 {
  node = new_node(NODE_CONTINUE);
  ct++;
  skip(';');
 }
 else if (tokens[ct].type == TOKEN_BREAK)
 {
  node = new_node(NODE_BREAK);
  ct++;
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
   if (is_typename(&tokens[ct]))
    node->init = decl(0);
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
 Node *left = conditional();

 if (type_match(tokens[ct].type, '=', TOKEN_ADD_ASSIGN,
    TOKEN_SUB_ASSIGN, TOKEN_DIV_ASSIGN, TOKEN_MUL_ASSIGN, -1))
 {

  add_type(left);
  if ((left->type != NODE_VAR && left->type != NODE_DEREF) || left->t->t == ARRAY
    || left->t->t == VOID)
   error_token(&tokens[ct], "expression is not assignable");
  Node *node = new_node(NODE_ASSIGN);
  ct++;
  node->left = left;
  node->right = assign();
  if (node->tok->type != '=')
  {
   Node *right = new_node(NODE_BINARY);
   right->tok = new_temp_token(node->tok->str[0]);
   right->left = left;
   right->right = node->right;
   node->right = right;
  }
  add_type(node);
  return node;
 }
 add_type(left);
 return left;
}

Node *conditional()
{
 Node *left = logical_or();
 if (tokens[ct].type == '?')
 {
  Node *node = new_node(NODE_QUESTION);
  ct++;
  node->condition = left;
  node->left = expr();
  skip(':');
  node->right = conditional();
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
 return binary(cast, '*', '/', '%', -1);
}

Node *cast()
{
 if (tokens[ct].type == '(' && is_typename(&tokens[ct + 1]))
 {
  Node *node = new_node(NODE_CAST);
  ct++;
  node->cast_type = parse_type();
  skip(')');
  node->left = cast();
  return node;
 }
 return unary();
}

Node *unary()
{
 if (tokens[ct].type == '+')
 {
  ct++;
  return cast();
 }
 else if (tokens[ct].type == '-')
 {
  Node *node = new_node(NODE_NEG);
  ct++;
  node->left = cast();
  return node;
 }
 else if (tokens[ct].type == '&')
 {
  Node *node = new_node(NODE_ADDR);
  ct++;
  node->left = cast();
  return node;
 }
 else if (tokens[ct].type == '*')
 {
  Node *node = new_node(NODE_DEREF);
  ct++;
  node->left = cast();
  return node;
 }
 else if (tokens[ct].type == '!')
 {
  Node *node = new_node(NODE_UNARY);
  ct++;
  node->left = cast();
  return node;
 }
 else if (tokens[ct].type == TOKEN_SIZEOF)
 {
  Node *node = new_node(NODE_INT);
  node->tok = new_temp_token(TOKEN_INTEGER);
  ct++;
  Type *t = 0;
  if (tokens[ct].type == '(' && is_typename(&tokens[ct + 1]))
  {
   ct++;
   t = parse_type();
   skip(')');
  }
  else
  {
   Node *left = unary();
   t = add_type(left);
  }
  assert(t);
  if (t->t == ARRAY)
   node->tok->int_val = t->size * t->array_size;
  else
   node->tok->int_val = t->size;
  return node;
 }
 else if (tokens[ct].type == TOKEN_INC || tokens[ct].type == TOKEN_DEC)
 {

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
   Node *node = new_node(NODE_UNARY);
   node->left = left;
   left = node;
   ct++;
  }
  else if (tokens[ct].type == '.' || tokens[ct].type == TOKEN_ARROW)
  {
   Type *type = add_type(left);
   if (tokens[ct].type == TOKEN_ARROW && !(type->t == PTR && type->ptr_to->t == STRUCT))
   {
    error_token(&tokens[ct], "expected struct pointer");
   }
   if (tokens[ct].type == TOKEN_ARROW)
    type = type->ptr_to;
   if (type->t != STRUCT)
    error_token(&tokens[ct], "expected struct type");

   ct++;

   int i = 0;
   for (; i < type->field_count; i++)
   {
    if (!strcmp(type->field_name[i], tokens[ct].name))
     break;
   }
   if (i == type->field_count)
    error_token(&tokens[ct], "undeclared struct member");


   Type *char_ptr = new_type(PTR);
   char_ptr->ptr_to = type_char;



   Node *addr = left;
   if (tokens[ct - 1].type == '.')
   {
    addr = new_node(NODE_ADDR);
    addr->left = left;
   }
   implicit_cast(&addr, char_ptr);
   Node *add = new_node(NODE_BINARY);
   add->tok = new_temp_token('+');
   add->left = addr;
   add->right = new_node(NODE_INT);
   add->right->tok = new_temp_token(TOKEN_INTEGER);
   add->right->tok->int_val = type->field_offset[i];
   Type *t = new_type(PTR);
   Node *node;
   if (type->field_type[i]->t == ARRAY)
   {
    t = type->field_type[i];

    implicit_cast(&add, t);
    node = add;
   }
   else
   {
    t->ptr_to = type->field_type[i];
    implicit_cast(&add, t);
    node = new_node(NODE_DEREF);
    node->left = add;
   }
   skip(TOKEN_IDENTIFIER);
   left = node;
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
  node->func = find_func(tokens[ct].name);
  if (!node->func)
   error_token(node->tok, "undeclared function \"%s\"", tokens[ct].name);
  ct += 2;
  int count = 0;
  while (tokens[ct].type != ')')
  {



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
  {
   for (int i = 0; i < enum_count; i++)
   {
    if (!strcmp(tokens[ct].name, enums[i].name))
    {
     node = new_node(NODE_INT);
     ct++;
     node->tok = new_temp_token(TOKEN_INTEGER);
     node->tok->int_val = enums[i].value;
     return node;
    }
   }
   error_token(&tokens[ct], "undeclared variable `%s`\n", tokens[ct].name);
  }
  node = new_node(NODE_VAR);
  node->var = var;
  ct++;
 }
 else
  error_token(&tokens[ct], "expected an expression");
 return node;
}
# 102 "main2.c" 2
# 1 "./gen.c" 1
# 13 "./gen.c"
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
 char *rax[4] = {"al", "ax", "eax", "rax"};
 char *rdx[4] = {"dh", "dx", "edx", "rdx"};
 char *rcx[4] = {"ch", "cx", "ecx", "rcx"};
 char *rdi[4] = {"dil", "di", "edi", "rdi"};
 char *rsi[4] = {"sil", "si", "esi", "rsi"};
 char *r8 [4] = {"r8b", "r8w", "r8d", "r8"};
 char *r9 [4] = {"r9b", "r9w", "r9d", "r9"};
 char *r10[4] = {"r10b", "r10w", "r10d", "r10"};
 char *r11[4] = {"r11b", "r11w", "r11d", "r11"};

 size = log2_int(size);
 if (!strcmp(reg, "rax"))
  return rax[size];
 if (!strcmp(reg, "rdx"))
  return rdx[size];
 if (!strcmp(reg, "rcx"))
  return rcx[size];
 if (!strcmp(reg, "rdi"))
  return rdi[size];
 if (!strcmp(reg, "rsi"))
  return rsi[size];
 if (!strcmp(reg, "r8"))
  return r8[size];
 if (!strcmp(reg, "r9"))
  return r9[size];
 if (!strcmp(reg, "r10"))
  return r10[size];
 if (!strcmp(reg, "r11"))
  return r11[size];
 assert(0);
# 103 "./gen.c"
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


int curr_label = 0;


int loop_counter = 0;
int curr_loop_label;
int curr_loop_is_for;


void gen(Node *node)
{
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

  dbg("//%s %s(", get_type_str(node->func->ret_type), node->tok->name);
  for (int i = 0; i < node->param_count; i++)
  {
   dbg("%s %s", get_type_str(node->params[i]->var->type), node->params[i]->var->name);
   if (i < node->param_count - 1)
    dbg(", ");
  }
  dbg(")\n");
  fprintf(f, "_%s:\n", node->tok->name);
  out("pushq %%rbp");
  out("movq %%rsp, %%rbp");
  node->stack_size = align(node->stack_size, 16);


  out("subq $%d, %%rsp", node->stack_size);

  char *reg[6] = {"rdi", "rsi", "rdx", "rcx", "r8", "r9"};
  for (int i = 0; i < node->param_count && i < 6; i++)
  {
   Var *v = node->params[i]->var;
   out("mov%s %%%s, -%d(%%rbp) //%s", get_inst_suffix(v->type->size),
     get_register_by_size(reg[i], v->type->size),

     v->offset, v->name);

  }
  if (node->param_count > 6)
  {

   int offset = node->params[5]->var->offset + 8;
   int offset2 = 16;
   for (int i = 6; i < node->param_count; i++)
   {





    out("movq %d(%%rbp), %%rax", offset2);
    out("mov%s %%%s, -%d(%%rbp) // %s",
      get_inst_suffix(node->params[i]->var->type->size),
      get_register_by_size("rax", node->params[i]->var->type->size),
      node->params[i]->var->offset,
      node->params[i]->var->name);
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
  dbg("//{ (%d)\n", node->tok->line);
  while (curr)
  {
   gen(curr);
   curr = curr->next_in_block;
  }
  dbg("//}\n");
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
  loop_counter++;
  int s1 = curr_loop_label;
  int s2 = curr_loop_is_for;
  curr_loop_label = label;
  curr_loop_is_for = 0;
  gen(node->body);
  curr_loop_label = s1;
  curr_loop_is_for = s2;
  loop_counter--;
  out("jmp WHILE%d", label);
  fprintf(f, "WHILE_END%d:\n", label);
 }
 else if (node->type == NODE_FOR)
 {
  int label = curr_label++;
  fprintf(f, "//for init\n");
  gen(node->init);
  fprintf(f, "FOR%d:\n", label);
  if (node->condition)
  {
   gen(node->condition);
   out("cmpq $0, %%rax");
   out("je FOR_END%d", label);
  }
  loop_counter++;
  int s1 = curr_loop_label;
  int s2 = curr_loop_is_for;
  curr_loop_label = label;
  curr_loop_is_for = 1;
  gen(node->body);
  loop_counter--;
  curr_loop_label = s1;
  curr_loop_is_for = s2;
  fprintf(f, "FOR_INC%d:\n", label);
  gen(node->inc);
  out("jmp FOR%d", label);
  fprintf(f, "FOR_END%d:\n", label);
 }
 else if (node->type == NODE_INT)
 {
  if (node->t->t == LONG)
   out("movabsq $%lld, %%rax", node->tok->int_val);
  else
   out("movq $%lld, %%rax", node->tok->int_val);
 }
 else if (node->type == NODE_STRING)
 {
  int id = add_string_lit(node->tok->name);
  out("leaq L_.str.%d(%%rip), %%rax", id);
 }
 else if (node->type == NODE_VAR)
 {
  if (node->t->t == ARRAY || node->t->t == STRUCT)
  {
   if (node->var->global)
   {
    out("movq _%s@GOTPCREL(%%rip), %%rax", node->var->name);
   }
   else
   {
    out("movq %%rbp, %%rax // %s", node->var->name);
    out("subq $%d, %%rax", node->var->offset);
   }
  }
  else if (node->t->t == FUNC)
  {
   out("leaq _%s(%%rip), %%rax", node->tok->name);
  }
  else
  {
   if (node->var->global)
   {
    if (node->t->is_unsigned)
    {
     if (node->t->size < 4)
      out("movz%sq _%s(%%rip), %%rax // %s",
        get_inst_suffix(node->t->size),
        node->var->name,
        node->var->name);
     else
      out("mov%s _%s(%%rip), %%%s // %s",
        get_inst_suffix(node->t->size),
        node->var->name,
        get_register_by_size("rax", node->t->size),
        node->var->name);
    }
    else
    {
     if (node->t->size < 8)
     {
      out("movs%sq _%s(%%rip), %%rax",
       get_inst_suffix(node->t->size),
       node->var->name);

     }
     else
      out("movq _%s(%%rip), %%rax", node->var->name);
    }




   }
   else
   {
    if (node->t->is_unsigned)
    {
     if (node->t->size < 4)
      out("movz%sq -%d(%%rbp), %%rax // %s",
        get_inst_suffix(node->t->size),
        node->var->offset,
        node->var->name);
     else
      out("mov%s -%d(%%rbp), %%%s // %s",
        get_inst_suffix(node->t->size),
        node->var->offset,
        get_register_by_size("rax", node->t->size),
        node->var->name);
    }
    else
    {
     if (node->t->size < 8)
     {
      out("movs%sq -%d(%%rbp), %%rax // %s",
       get_inst_suffix(node->t->size),
      node->var->offset, node->var->name);
     }
     else
      out("movq -%d(%%rbp), %%rax // %s", node->var->offset, node->var->name);
    }
   }
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
   out("movq %%rax, %%r12");
   gen(node->args[1]);
   out("cmpq %%r12, %%rax");
   out("je ASSERT_OK%d", label);
   out("movq $%d, %%rdi", node->tok->line);
   out("movq %%r12, %%rsi", node->tok->line);
   out("movq %%rax, %%rdx", node->tok->line);
   out("callq _error");
   fprintf(f, "ASSERT_OK%d:\n", label);
  }
  else
  {
   char *reg[6] = {"rdi", "rsi", "rdx", "rcx", "r8", "r9"};
   dbg("//call %s\n", node->tok->name);
   for (int i = 0; i < node->arg_count && i < 6; i++)
   {
    gen(node->args[i]);
    out("pushq %%rax");
   }

   for (int i = 0; i < node->arg_count && i < 6; i++)
   {

    int last = node->arg_count;
    if (last > 6)
     last = 6;
    out("popq %%%s", reg[last - i - 1]);
   }
   for (int i = node->arg_count - 1; i >= 6; i--)
   {
    gen(node->args[i]);
    out("pushq %%rax");

   }

   out("callq _%s", node->tok->name);
   if (node->arg_count > 6)
    out("addq $%d, %%rsp", (node->arg_count - 6) * 8);
  }
 }
 else if (node->type == NODE_ADDR)
 {
  if (node->left->type == NODE_DEREF)
  {
   gen(node->left->left);
  }
  else if (node->left->type == NODE_VAR)
  {

   if (node->left->var->global)
   {
    out("movq _%s@GOTPCREL(%%rip), %%rax", node->left->var->name);
   }
   else
   {
    out("movq %%rbp, %%rax // &%s", node->left->var->name);
    out("subq $%d, %%rax", node->left->var->offset);
   }
  }
  else if (node->left->type == NODE_CAST)
  {
   node->left = node->left->left;
   gen(node);
  }
  else
   assert(0);
 }
 else if (node->type == NODE_DEREF)
 {
  gen(node->left);
  if (!node->left->t->ptr_to)
   error_token(node->tok, "dereferencing a non-pointer lvalue");



  if( node->t->t == STRUCT)
   ;
  else if (node->t->size < 8)
   out("movs%sq (%%rax), %%rax", get_inst_suffix(node->t->size));
  else
   out("movq (%%rax), %%rax");



 }
 else if (node->type == NODE_NEG)
 {
  gen(node->left);
  if (node->left->t->ptr_to)
   error_token(node->tok, "negating a pointer");
  out("xorq %%r10, %%r10");
  out("subq %%rax, %%r10");
  out("movq %%r10, %%rax");
 }
 else if (node->type == NODE_CAST)
 {
  dbg("//cast to (%s)\n", get_type_str(node->t));
  gen(node->left);
  Type *t1 = node->left->t;
  Type *t2 = node->t;
  if (node->t->t == ARRAY)
  {
   t2 = new_type(PTR);
   t2->ptr_to = node->t->ptr_to;
  }


  if (!t1->is_unsigned && !t2->is_unsigned)
  {
   if (t2->size < t1->size)
   {
    out("movs%sq %%%s, %%r10",
      get_inst_suffix(t2->size),
      get_register_by_size("rax", t2->size));
    out("movq %%r10, %%rax");
   }
   else
    ;
  }
  else if (t2->is_unsigned)
  {
   out("xorq %%r10, %%r10");
   out("mov%s %%%s, %%%s",
     get_inst_suffix(t2->size),
     get_register_by_size("rax", t2->size),
     get_register_by_size("r10", t2->size));
   out("movq %%r10, %%rax");
  }
  else
  {
   if (t2->size < 8)
   {
    out("xorq %%r10, %%r10");
    out("mov%s %%%s, %%%s",
      get_inst_suffix(t2->size),
      get_register_by_size("rax", t2->size),
      get_register_by_size("r10", t2->size));
    out("movs%sq %%%s, %%rax",
      get_inst_suffix(t2->size),
      get_register_by_size("r10", t2->size));
   }



  }
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
  }
  else
  {
   out("pushq %%rax");
   gen(node->right);
   out("movq %%rax, %%r10");
   out("popq %%rax");



   assert(node->left->t);
   assert(node->right->t);

   if (node->tok->type == '+' || node->tok->type == '-')
   {
    if (node->left->t->ptr_to && !node->right->t->ptr_to)
     out("imulq $%d, %%r10", node->left->t->ptr_to->size);
    else if (node->right->t->ptr_to && !node->left->t->ptr_to && node->tok->type == '+')
     out("imulq $%d, %%rax", node->right->t->ptr_to->size);
   }

   if (node->tok->type == '+')
    out("addq %%r10, %%rax");
   else if (node->tok->type == '-')
    out("subq %%r10, %%rax");
   else if (node->tok->type == '*')
    out("imulq %%r10, %%rax");
   else if (node->tok->type == '/' || node->tok->type == '%')
   {


    if (!node->t->is_unsigned)
    {
     out("cqto");
     out("idivq %%r10");
    }
    else
    {
     out("xorq %%rdx, %%rdx");
     out("divq %%r10");
    }
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
    out("andb $1, %%al");
    out("movzbq %%al, %%rax");
   }
   if (node->left->t->ptr_to && node->right->t->ptr_to && node->tok->type == '-')
   {
    out("movq $%d, %%r10", node->left->t->ptr_to->size);
    out("xorq %%rdx, %%rdx");
    out("divq %%r10");
   }
  }
 }
 else if (node->type == NODE_ASSIGN)
 {
  if (node->left->type == NODE_DEREF)
  {
   gen(node->right);
   if (node->t->t == STRUCT)
   {
    assert(0);
    out("pushq %%rax");
    gen(node->left);
    out("popq %%rsi");
    out("movq %%rax, %%rdi");
    out("movq $%d, %%rdx", node->t->size);
    out("callq _memcpy");
   }
   else
   {
    out("pushq %%rax");
    gen(node->left->left);
    if (!node->left->left->t->ptr_to)
    error_token(node->tok, "dereferencing a non-pointer lvalue");


    out("popq %%r10");
    out("mov%s %%%s, (%%rax)", get_inst_suffix(node->t->size),
      get_register_by_size("r10", node->t->size));

   }
  }
  else if (node->left->type == NODE_VAR)
  {
   gen(node->right);
   node->left->t = node->left->var->type;
   assert(node->left->t);


   if (node->t->t == ARRAY)
    error_token(node->tok, "array is constant");
   if (node->left->var->global)
   {
    if (node->t->t == STRUCT)
     assert(0);
    out("mov%s %%%s, _%s(%%rip)", get_inst_suffix(node->t->size),
      get_register_by_size("rax", node->t->size),
      node->left->var->name);
   }
   else
   {
    if (node->t->t == STRUCT)
    {
     assert(0);
     out("movq %%rbp, %%rdi");
     out("subq $%d, %%rdi", node->left->var->offset);
     out("movq %%rax, %%rsi");
     out("movq $%d, %%rdx", node->left->var->type->size);
     out("callq _memcpy");
    }
    else
    {
     out("mov%s %%%s, -%d(%%rbp) // %s = rax", get_inst_suffix(node->t->size),
      get_register_by_size("rax", node->t->size),
      node->left->var->offset, node->left->var->name);
    }
   }
  }
  else
   assert(0);
 }
 else if (node->type == NODE_CONTINUE)
 {
  if (!loop_counter)
   error_token(node->tok, "'continue' statement not in loop statement");
  if (curr_loop_is_for)
   out("jmp FOR_INC%d", curr_loop_label);
  else
   out("jmp WHILE%d", curr_loop_label);
 }
 else if (node->type == NODE_BREAK)
 {
  if (!loop_counter)
   error_token(node->tok, "'break' statement not in loop statement");
  if (curr_loop_is_for)
   out("jmp FOR_END%d", curr_loop_label);
  else
   out("jmp WHILE_END%d", curr_loop_label);
 }
 else if (node->type == NODE_UNARY)
 {
  gen(node->left);
  if (node->tok->type == '!')
  {
   out("cmpq $0, %%rax");
   out("setne %%al");
   out("xorb $-1, %%al");
   out("andb $1, %%al");
   out("movzbq %%al, %%rax");
  }
  else if (node->tok->type == TOKEN_INC || node->tok->type == TOKEN_DEC)
  {
   out("pushq %%rax");
   Node *one = new_node(NODE_INT);
   one->tok = new_temp_token(TOKEN_INTEGER);
   one->tok->int_val = (node->tok->type == TOKEN_INC ? 1 : -1);
   Node *assign = new_node(NODE_ASSIGN);
   assign->tok = new_temp_token('=');
   assign->left = node->left;
   assign->right = new_node(NODE_BINARY);
   assign->right->tok = new_temp_token('+');
   assign->right->left = node->left;
   assign->right->right = one;
   add_type(assign);
   gen(assign);
   out("popq %%rax");
  }
  else
   assert(0);
 }
 else if (node->type == NODE_QUESTION)
 {
  int label = curr_label++;
  gen(node->condition);
  out("cmpq $0, %%rax");
  out("je QUES%d", label);
  gen(node->left);
  out("jmp QUES_END%d", label);
  fprintf(f, "QUES%d:\n", label);
  gen(node->right);
  fprintf(f, "QUES_END%d:\n", label);
 }
 else
  assert(0);
 if (node->next_in_comma)
  gen(node->next_in_comma);

}
# 103 "main2.c" 2

int tab;

void print(Node *node)
{
 tab += 4;
 printf("%*ctype: ", tab, ' ');
 if (!node || node->type == NODE_NONE)
  printf("none\n");
 else if (node->type == NODE_PROGRAM)
 {
  printf("program\n");
  Node *curr = node->next_stmt;
  while (curr)
  {
   print(curr);
   curr = curr->next_stmt;
  }
 }
 else if (node->type == NODE_FUNC_DEF)
 {
  printf("function definition %s(", node->tok->name);
  for (int i = 0; i < node->param_count; i++)
  {
   printf("%s %s", get_type_str(node->params[i]->var->type), node->params[i]->var->name);
   if (i < node->param_count - 1)
    printf(", ");
  }
  printf(")\n");
 }
 tab -= 4;
}

int main()
{

 filename = "final.c";



 tab = -4;
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






 print(node);
 gen(node);
 out(".section	__DATA,__data");
 for (int i = 0; i < curr_scope->var_count; i++)
 {
  Node *decl = curr_scope->vars[i]->decl;

  if (decl->left && decl->left->right->type != NODE_INT)
  {
   printf("error name: %s %c\n", decl->var->name, decl->left->tok->type);
   error_token(decl->left->tok, "todo: evaluate constant expressions\n");
  }
  if (decl->var->type->t == ARRAY)
  {
   out(".comm _%s,%d,%d\n", decl->var->name, decl->var->type->array_size * decl->var->type->size,
       4);
  }
  else
  {
   out(".globl _%s", decl->var->name);

   int align = log2_int(decl->var->type->size);
   if (align)
    out(".p2align %d", align);

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
