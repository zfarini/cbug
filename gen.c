/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   gen.c                                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: zfarini <zfarini@student.1337.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/04/14 02:52:30 by zfarini           #+#    #+#             */
/*   Updated: 2023/04/14 07:47:21 by zfarini          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

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
		{"r8b", "r8w", "r8d", "r8"},
		{"r9b", "r9w", "r9d", "r9"},
		{"r10b", "r10w", "r10d", "r10"},
		{"r11b", "r11w", "r11d", "r11"},
		{0}
	};
	for (int i = 0; arr[i][0]; i++)
	{
		if (!strcmp(arr[i][3], reg))
			return arr[i][log2_int(size)];
	}
	assert(0);
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

void out(char *fmt, ...)
{
	va_list ap;
	va_start(ap, fmt);
	fprintf(f, "\t");
	vfprintf(f, fmt, ap);
	fprintf(f, "\n");
	va_end(ap);
}

int curr_label = 0;

// user for continue / break
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
		loop_counter++;
		curr_loop_label = label;
		curr_loop_is_for = 0;
		gen(node->body);
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
		gen(node->condition);
		out("cmpq $0, %%rax");
		out("je FOR_END%d", label);
		loop_counter++;
		curr_loop_label = label;
		curr_loop_is_for = 1;
		gen(node->body);
		loop_counter--;
		fprintf(f, "FOR_INC%d:\n", label);
		gen(node->inc);
		out("jmp FOR%d", label);
		fprintf(f, "FOR_END%d:\n", label);
	}
	else if (node->type == NODE_INT)
	{
		if (node->tok->int_val > INT_MAX ||
			node->tok->int_val < INT_MIN)
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
		if (node->t->t == ARRAY)
		{
			Type *type = new_type(PTR);
			type->ptr_to = node->var->type->ptr_to;
			out("movq %%rbp, %%rax");
			out("subq $%d, %%rax", node->var->offset);
		}
		else
		{
			if (node->var->global)
			{
				if (node->t->size < 8)
					out("movs%sq _%s(%%rip), %%rax",
						get_inst_suffix(node->t->size), 
						node->var->name);
				else
					out("movq _%s(%%rip), %%rax", node->var->name);
#if 0
				out("mov%s _%s(%%rip), %%%s", get_inst_suffix(node->t->size), 
						node->var->name, get_register_by_size("rax", node->t->size));
#endif
			}
			else
			{
				if (node->t->size < 8)
					out("movs%sq -%d(%%rbp), %%rax", 
						get_inst_suffix(node->t->size), 
					node->var->offset);
				else
					out("movq -%d(%%rbp), %%rax", node->var->offset);
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
			out("movq $%d, %%rdi", node->tok->line); // line
			out("movq %%r12, %%rsi", node->tok->line); // expected0
			out("movq %%rax, %%rdx", node->tok->line); // line
			out("callq _error");
			fprintf(f, "ASSERT_OK%d:\n", label);
		}
		else
		{
			Func *fn = find_func(node->tok->name);
			if (!fn)
				error_token(node->tok, "underclared function");

			char *reg[] = {"rdi", "rsi", "rdx", "rcx", "r8", "r9"};
			for (int i = 0; i < node->arg_count && i < 6; i++)
			{
				gen(node->args[i]);
				out("pushq %%rax");
			}

			assert(node->arg_count <= 6); // fix this loop 
			for (int i = 0; i < node->arg_count && i < 6; i++)
			{
				out("popq %%%s", reg[node->arg_count - i - 1]);
			}
			for (int i = node->arg_count - 1; i >= 6; i--)
			{
				gen(node->args[i]);	
				out("pushq %%rax");
			}
			//out("xorq %%rax, %%rax");
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
			if (node->left->t->t == ARRAY)
			{
				out("movq %%rbp, %%rax");
				out("subq $%d, %%rax", node->left->var->offset);
				//out("movq -%d(%%rbp), %%rax");
			}
			else
			{
				out("movq %%rbp, %%rax");
				out("subq $%d, %%rax", node->left->var->offset);
			}
		}
		else
			assert(0);
	}
	else if (node->type == NODE_DEREF)
	{
		gen(node->left);
		if (!node->left->t->ptr_to)
			error_token(node->tok, "dereferencing a non-pointer lvalue");
	//	out("xorq %%r10, %%r10");
	//	TODO: check if this ok
		
		if (node->t->size < 8)
			out("movs%sq (%%rax), %%rax", get_inst_suffix(node->t->size));
		else
			out("movq (%%rax), %%rax");
		//out("xorq %%rax, %%rax");
		//out("movq %%r10, %%rax");
	//	out("movq %%r10, %%rax");
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
		gen(node->left);
		int s1 = node->left->t->size;
		int s2 = node->t->size;
		
		if (s2 < s1) 
		{
			out("mov%s %%%s, %%%s", get_inst_suffix(s2), get_register_by_size("rax", s2),
					get_register_by_size("r10", s2));
			out("mov%s%sq %%%s, %%rax", 
					(node->t->is_unsigned && !node->left->t->is_unsigned) ? "z" : "s",
					get_inst_suffix(s2), get_register_by_size("r10", s2));
		}
		else
		{
			out("mov%s %%%s, %%%s", get_inst_suffix(s1),
					get_register_by_size("rax", s1),
					get_register_by_size("r10", s1));
			out("xorq %%rax, %%rax");
			out("mov%s %%%s, %%%s", get_inst_suffix(s1),
					get_register_by_size("r10", s1),
					get_register_by_size("rax", s1));
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
			// left = r10, right = rax

			assert(node->left->t);
			assert(node->right->t);
			// not handling *x + 1 where x is int **
			if (node->left->t->ptr_to && !node->right->t->ptr_to)
				out("imulq $%d, %%r10", node->left->t->ptr_to->size);
			else if (node->right->t->ptr_to && !node->left->t->ptr_to)
				out("imulq $%d, %%rax", node->right->t->ptr_to->size);

			if (node->tok->type == '+')
				out("addq %%r10, %%rax");
			else if (node->tok->type == '-')
				out("subq %%r10, %%rax");
			else if (node->tok->type == '*')
				out("imulq %%r10, %%rax");
			else if (node->tok->type == '/' || node->tok->type == '%')
			{
				// a / b
				// rdx  = b, rax 
				out("cqto");
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
			out("mov%s %%%s, (%%rax)", get_inst_suffix(node->t->size),
					get_register_by_size("r10", node->t->size));
			//out("movq %%r10, (%%rax)");
		}
		else
		{
			gen(node->right);
			node->left->t = node->left->var->type;
			assert(node->left->t);
			//if (!types_are_equal(node->left->t, node->right->t))
			//	error_token(node->tok, "assignement with non-matching types");
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
		find_type(assign);
		gen(assign);
		out("popq %%rax");
	}
	else
		assert(0);
	if (node->next_in_comma)
		gen(node->next_in_comma);
}


