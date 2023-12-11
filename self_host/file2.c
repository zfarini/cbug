#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <fcntl.h>
#include <assert.h>
#include <stdarg.h>
#include <string.h>
#include <ctype.h>

#if 0
typedef struct Token Token;
typedef struct Node Node;
typedef struct Var Var;
typedef struct Type Type;
typedef struct Func Func;
typedef struct Scope Scope;
typedef struct Enum Enum;
#endif

#include "cbug.h"

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

extern Token tokens[100000];
extern int ct;
extern FILE *f;

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
