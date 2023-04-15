#include "cbug.h"

struct {
	char *name;
	int type;
} multi_char_tokens_type[] = { // NOTE: these must be sorted by length
	{"==", TOKEN_EQUAL},
	{"!=", TOKEN_NOT_EQUAL},
	{"<=", TOKEN_LESS_OR_EQUAL},
	{">=", TOKEN_GREATER_OR_EQUAL},
	{"&&", TOKEN_LOGICAL_AND},
	{"||", TOKEN_LOGICAL_OR},
	{"++", TOKEN_INC},
	{"--", TOKEN_DEC},
	{"+=", TOKEN_ADD_ASSIGN},
	{"-=", TOKEN_SUB_ASSIGN},
	{"*=", TOKEN_MUL_ASSIGN},
	{"/=", TOKEN_DIV_ASSIGN},
	{"->", TOKEN_ARROW},
	{0, 0},
};

struct {
	char *name;
	int type;
} keywords[] = {
	{"return", TOKEN_RETURN},
	{"for", TOKEN_FOR},
	{"while", TOKEN_WHILE},
	{"if", TOKEN_IF},
	{"else", TOKEN_ELSE},
	{"int", TOKEN_INT},
	{"void", TOKEN_VOID},
	{"char", TOKEN_CHAR},
	{"short", TOKEN_SHORT},
	{"long", TOKEN_LONG},
	{"unsigned", TOKEN_UNSIGNED},
	{"signed", TOKEN_SIGNED},
	{"break", TOKEN_BREAK},
	{"continue", TOKEN_CONTINUE},
	{"sizeof", TOKEN_SIZEOF},
	{"long", TOKEN_LONG},
	{"struct", TOKEN_STRUCT},
	{"union", TOKEN_UNION},
	{"enum", TOKEN_ENUM},
	{0, 0},
};

char *token_type_name(int type)
{
	static char *c[255];
	if (type == TOKEN_INTEGER)
		return "int";
	else if (type == TOKEN_IDENTIFIER)
		return "identifier";
	else if (type == TOKEN_STRING)
		return "string";
	else if (type < 255)
	{
		if (!c[type])
		{
			c[type] = malloc(2);
			c[type][0] = type;
			c[type][1] = 0;
		}
		return c[type];
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
	switch (c)
	{
		case 'n': return '\n';
		case 't': return '\t';
		case 'r': return '\r';
		case 'v': return '\v';
		case 'f': return '\f';
		case 'a': return '\a';
		case 'b': return '\b';
		default: return c;
	}
}

Token *tokenize(char *s)
{
	int	i = 0, j = 0;
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
		if (s[i] == '/' && s[i + 1] == '/')
		{
			while (s[i] && s[i] != '\n')
				i++;
			continue;
		}
		if (s[i] == '/' && s[i + 1] == '*')
		{
			i += 2;
			/* */
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
			//todo: hex + be able to read MAX_UNSIGNED_LONG
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
#if 0
	printf("tokens: \n");
	for (int k = 0; k < j; k++)
	{
		printf("\tline: %d, col: %d, type: %s", tokens[k].line, tokens[k].col,
				token_type_name(tokens[k].type));
		if (tokens[k].type == TOKEN_INTEGER)
			printf(", value: %lld", tokens[k].int_val);
		else if (tokens[k].type == TOKEN_IDENTIFIER)
			printf(", name: \"%s\"", tokens[k].name);
		printf("\n");
	}
#endif
	return tokens;
}
