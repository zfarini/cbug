
typedef struct Token_Name {
	char *name;
	int type;

} Token_Name;

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
