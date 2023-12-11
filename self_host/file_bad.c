#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <fcntl.h>
#include <assert.h>
#include <stdarg.h>
#include <string.h>
#include <ctype.h>

typedef struct Token Token;
typedef struct Node Node;
typedef struct Var Var;
typedef struct Type Type;
typedef struct Func Func;
typedef struct Scope Scope;
typedef struct Enum Enum;

#include "cbug.h"

extern Token tokens[100000];
extern int ct;
extern FILE *f;
extern int _curr_node;
extern Node _nodes[100000];

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
	va_end(ap);
	return (0);
}

Node *new_node(int type)
{
	Node *node = &_nodes[_curr_node++];
	node->type = type;
	node->tok = &tokens[ct];
	return (node);
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
	fprintf(stderr, "\033[1m%d:%d: \033[1;31merror: \033[0m\033[1m",
			token->line, token->col);
	vfprintf(stderr, fmt, ap);
	fprintf(stderr, "\033[0m\n");
	va_end(ap);
	exit(1);
}


Node *new_node(int type);

void out(char *fmt, ...)
{
	va_list ap;
	va_start(ap, fmt);
	fprintf(f, "\t");
	vfprintf(f, fmt, ap);
	fprintf(f, "\n");
	va_end(ap);
}

void dbg(char *fmt, ...)
{
	va_list ap;
	va_start(ap, fmt);
	vfprintf(f, fmt, ap);
	va_end(ap);
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


