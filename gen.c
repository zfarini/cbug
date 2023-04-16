/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   gen.c                                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: zfarini <zfarini@student.1337.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/04/14 02:52:30 by zfarini           #+#    #+#             */
/*   Updated: 2023/04/16 08:16:47 by zfarini          ###   ########.fr       */
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
	char *rax[4] =	{"al", "ax", "eax", "rax"};
	char *rdx[4] =	{"dh", "dx", "edx", "rdx"};
	char *rcx[4] =	{"ch", "cx", "ecx", "rcx"};
	char *rdi[4] =	{"dil", "di", "edi", "rdi"};
	char *rsi[4] =	{"sil", "si", "esi", "rsi"};
	char *r8 [4] =	{"r8b", "r8w", "r8d", "r8"};
	char *r9 [4] =	{"r9b", "r9w", "r9d", "r9"};
	char *r10[4] =	{"r10b", "r10w", "r10d", "r10"};
	char *r11[4] =	{"r11b", "r11w", "r11d", "r11"};

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
#if 0
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
#endif
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

// user for continue / break
int loop_counter = 0;
int curr_loop_label;
int curr_loop_is_for;
int stack_size = 0;

void push(char *reg)
{
	stack_size += 8;
	out("pushq %%%s // %d", reg, stack_size);
}

void pop(char *reg)
{
	stack_size -= 8;
	out("popq %%%s // %d", reg, stack_size);
	assert(stack_size >= 0);
}

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
		stack_size = 0;
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
		// initially rbp point at return address of the caller function
		// allocate space for all local variables we subtrace since the stack grows downward

		stack_size = node->stack_size;
		out("subq $%d, %%rsp // %d", node->stack_size, stack_size);


		char *reg[6] = {"rdi", "rsi", "rdx", "rcx", "r8", "r9"};
		for (int i = 0; i < node->param_count && i < 6; i++)
		{
			Var *v = node->params[i]->var;
			out("mov%s %%%s, -%d(%%rbp) //%s", get_inst_suffix(v->type->size),
					get_register_by_size(reg[i], v->type->size),

					v->offset, v->name);
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
		stack_size -= node->stack_size;
		out("addq $%d, %%rsp // %d", node->stack_size, stack_size);

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
	else if (node->type == NODE_MEMBER)
	{
		gen(node->left);
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
#if 0
				out("mov%s _%s(%%rip), %%%s", get_inst_suffix(node->t->size), 
						node->var->name, get_register_by_size("rax", node->t->size));
#endif
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
			out("movq $%d, %%rdi", node->tok->line); // line
			out("movq %%r12, %%rsi", node->tok->line); // expected0
			out("movq %%rax, %%rdx", node->tok->line); // line
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
				push("rax");
			}

			for (int i = 0; i < node->arg_count && i < 6; i++)
			{

				int last = node->arg_count;
				if (last > 6)
					last = 6;
				pop(reg[last - i - 1]);
			}

			int s = stack_size;
			if (node->arg_count > 6)
				s += (node->arg_count - 6) * 8;
			int target = align(s, 16);
			assert(target % 16 == 0);
			out("subq $%d, %%rsp // %d", target - s, stack_size + target - s);
			stack_size += target - s;
			for (int i = node->arg_count - 1; i >= 6; i--)
			{
				gen(node->args[i]);	
				push("rax");
				//out("movq %%rax, %d(%%rsp)", (i - 5) * 8);
			}
			out("xorq %%rax, %%rax");
			assert(stack_size % 16 == 0);
			out("callq _%s", node->tok->name);
			
			int add = target - s;
			if (node->arg_count > 6)
				add += (node->arg_count - 6) * 8;
			stack_size -= add;
			out("addq $%d, %%rsp // %d", add, stack_size);
		}
	}
	else if (node->type == NODE_ADDR)
	{
		if (node->left->type == NODE_MEMBER)
			node->left = node->left->left;
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
	//	out("xorq %%r10, %%r10");
	//	TODO: check if this ok
		
		if( node->t->t == STRUCT)
			;
		else if (node->t->size < 8)
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
		dbg("//cast to (%s)\n", get_type_str(node->t));
		gen(node->left);
		Type *t1 = node->left->t;
		Type *t2 = node->t;
		if (node->t->t == ARRAY)
		{
			t2 = new_type(PTR);
			t2->ptr_to = node->t->ptr_to;
		}
		
		// (t2)t1
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
				; // nothing??
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

			// unsigned to signed
			//assert(0);
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

			push("rax");
			gen(node->right);
			out("movq %%rax, %%r10");
			pop("rax");

			// rax = left, r10 is right

			assert(node->left->t);
			assert(node->right->t);
			// not handling *x + 1 where x is int **
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
				// a / b
				// rdx  = b, rax 
				if (!node->t->is_unsigned)
				{
					out("cqto"); // sign extend rax to rdx (TODO: read a little bit more about this)
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
		if (node->left->type == NODE_MEMBER)
			node->left = node->left->left;
		if (node->left->type == NODE_DEREF)
		{
			gen(node->right);
			if (node->t->t == STRUCT)
			{
				assert(0);
				push("rax");
				gen(node->left);
				pop("rsi");
				out("movq %%rax, %%rdi");
				out("movq $%d, %%rdx", node->t->size);
				out("callq _memcpy");
			}
			else
			{
				push("rax");
				gen(node->left->left);
				if (!node->left->left->t->ptr_to)
				error_token(node->tok, "dereferencing a non-pointer lvalue");

				//check types here
				pop("r10");
				out("mov%s %%%s, (%%rax)", get_inst_suffix(node->t->size),
						get_register_by_size("r10", node->t->size));
				//out("movq %%r10, (%%rax)");
			}
		}
		else if (node->left->type == NODE_VAR)
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
			push("rax");
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
			add_type(assign); // TODO: ??????
			gen(assign);
			pop("rax");
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

/*


   7
   8
   ret 
   	  <-
	5 <-
    3 <-
	ret address <- rbp
*/
