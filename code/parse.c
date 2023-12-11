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
	if (t == PTR || t == ARRAY || t == LONG || t  == FUNC)
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

/*
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
*/

void skip(int type)
{
	if (tokens[ct].type != type)
		error_token(&tokens[ct], "expected `%s`", token_type_name(type));
	ct++;
}

int is_typename(Token *tok)
{
	if (tok->type == TOKEN_INT ||
		tok->type == TOKEN_VOID ||
		tok->type == TOKEN_CHAR ||
		tok->type == TOKEN_SHORT ||
		tok->type == TOKEN_LONG ||
		tok->type == TOKEN_SIGNED ||
		tok->type == TOKEN_UNSIGNED ||
		tok->type == TOKEN_VOID )
		return 1;
	//if (type_match(tok->type, TOKEN_INT, TOKEN_VOID, TOKEN_CHAR, TOKEN_SHORT, TOKEN_LONG, TOKEN_UNSIGNED, TOKEN_SIGNED, -1))
	//	return 1;
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
		return type->name;
	}
	if (type->t == PTR)
	{
		return strjoin(get_type_str(type->ptr_to), "*");
	}
	else if (type->t == ARRAY)
	{
		char s[42];
		snprintf(s, sizeof(s), "[%d]", type->array_size);
		return strjoin(get_type_str(type->ptr_to), s);
	}
	if (type->t == VOID) return "void";
	if (type->t == CHAR) return "char";
	if (type->t == INT)  return "int";
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
		if (node->tok->int_val > INT_MAX || node->tok->int_val < INT_MIN)
			t = type_long;
		else
			t = type_int;
	}
	else if (node->type == NODE_MEMBER)
	{
		t = add_type(node->left);
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
		// this is wrong check chibicc
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


			printf("enum ");
			if (tokens[ct].type == TOKEN_IDENTIFIER)
			{
				printf("%s", tokens[ct].name);
				ct++;
			}
			else
				printf("non-name");
			printf(":\n");
			skip('{');
			int val = 0;
			while (tokens[ct].type != '}')
			{
				enums[enum_count].name = tokens[ct].name;
				printf("\t%s", tokens[ct].name);
				skip(TOKEN_IDENTIFIER);
				if (tokens[ct].type == '=')
				{
					ct++;
					printf(" = %lld", tokens[ct].int_val);
					if (tokens[ct].type != TOKEN_INTEGER)
						skip(TOKEN_INTEGER);
					val = tokens[ct].int_val;
					ct++;
				}
				if (tokens[ct].type == ',')
				{
					printf(",");
					ct++;
				}
				else if (tokens[ct].type != '}')
					skip('}');
				enums[enum_count].value = val;
				enum_count++;
				val++;
				printf("\n");
			}
			skip('}');
			skip(';');
			printf("\n");
		}
		else if (tokens[ct].type == TOKEN_STRUCT)
		{
			Token *st_token = &tokens[ct];
			Type *type = new_type(STRUCT);

			ct++;
			type->name = tokens[ct].name;
			skip(TOKEN_IDENTIFIER);

			skip('{');
			int	i = 0;
			int size = 0;
			int max = 0;
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
					if (node->var->type->size > max)
						max = node->var->type->size;
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
			//printf("%d\n", size);

			type->size = align(size, max); // TODO: this is for array for structs check if its correct
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
		int alignement = 0;
		int space = 0;
		for (int j = 0; j < t->field_count; j++)
		{
			if (t->field_type[j]->ptr_to &&
				t->field_type[j]->ptr_to->t == UNKNOWN)
				error_token(t->field_type[j]->ptr_to->tok, "unknown type");
			if (t->field_type[j]->size > alignement)
				alignement = t->field_type[j]->size;
			if ((int)strlen(t->field_name[j]) > space)
				space = strlen(t->field_name[j]);
		}
		printf("struct %s: (size=%d, align=%d)\n", t->name, t->size, alignement);
		int size = 0;
		for( int j = 0; j < t->field_count; j++)
		{
			int x = align(size, t->field_type[j]->size);
			if (x != size)
				printf("\t[%d padding]\n", x - size);
			size = x;
			if (t->field_type[j]->t == ARRAY)
				size += t->field_type[j]->size * t->field_type[j]->array_size;
			else
				size += t->field_type[j]->size;
			printf("\t%s: %*s%s\n", t->field_name[j], (int)(space - strlen(t->field_name[j])),
					"", get_type_str(t->field_type[j]));
		}
		if (size != t->size)
			printf("\t[%d padding]\n", t->size - size);


		printf("\n");
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
	int	i = 0, s = 0, c = 0, l = 0, v = 0, u = 0, si = 0;
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
	curr_func->stack_size = 0;
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
	curr_func = 0;
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
	// unsigned int long long
	Node *decl = new_node(NODE_VAR_DECL);
	Type *base = parse_base_type();
	decl->decl_type = base;
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
				if (type->t != ARRAY) // this works: int x = {3}
					error_token(var->token, "invalid initiliazer");

				// convert int arr[4] = {3, 4, 5};
				// to
				//arr[0] = 3, arr[1] = 4, arr[2] = 5;
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
					// *(arr + i) = value
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
		if ((left->type != NODE_VAR && left->type != NODE_DEREF && left->type != NODE_MEMBER) || left->t->t == ARRAY
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
			Node *node = new_node(NODE_UNARY);
			node->left = left;
			left = node;
			ct++;
		}
		else if (tokens[ct].type == '.' || tokens[ct].type == TOKEN_ARROW)
		{
			Node *tmp = new_node(NODE_MEMBER);
			tmp->right = left; // nice
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

			//(X).y = *((typeof(y) *)((char *)&(X) + offsetof(y)))

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
				//t->ptr_to = type->field_type[i]->ptr_to;
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
			tmp->left = node;
			skip(TOKEN_IDENTIFIER);
			left = tmp;
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
