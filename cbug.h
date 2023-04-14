#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <fcntl.h>
#include <assert.h>
#include <string.h>
#include <ctype.h>
#include <stdarg.h>
#include <limits.h>

#ifndef CBUG_H
#define CBUG_H

typedef struct Token Token;
typedef struct Node Node;
typedef struct Var Var;
typedef struct Type Type;
typedef struct Func Func;

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
	union {
		Node *args[100];
		Node *params[100];
	};
	int arg_count;
	int param_count;
	int stack_size;
};

struct Type {
	enum {INT, PTR, VOID, ARRAY, SHORT, CHAR, LONG} t;
	struct Type *ptr_to;
	int array_size;
	int size;
	int is_unsigned;
};

typedef struct Scope Scope;
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

Type *parse_type();
Node *parse();
Node *function();
Node *decl();
Node *statement();
Node *expr();
Node *assign();
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

#endif
