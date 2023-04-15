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
