#define INT_MIN (-2147483648)
#define INT_MAX (2147483647)

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
	TOKEN_INC, // "++"
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

struct S {
	char x;
	short y;
	long z;
	char l;
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

	NODE_ARROW,
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

	Type *decl_type;
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
	int y;
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
	int   field_offset[100];
	int  field_count;
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
FILE *fopen();
int fseek();
long ftell();
int fclose();
long fread();
void exit();
int sprintf();



