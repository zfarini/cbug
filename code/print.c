int tab;

void print(Node *node)
{
	if (!node)
		return ;
	if (!node || node->type == NODE_NONE)
		return;
//		printf("(NULL)");
	else if (node->type == NODE_PROGRAM)
	{
		Node *curr = node->next_stmt;
		while (curr)
		{
			print(curr);
			curr = curr->next_stmt;
		}
	}
	else if (node->type == NODE_FUNC_DEF)
	{
		printf("\nfunction %s(", node->tok->name);
		for (int i = 0; i < node->param_count; i++)
		{
			printf("%s %s", get_type_str(node->params[i]->var->type), node->params[i]->var->name);
			if (i < node->param_count - 1)
				printf(", ");
		}
		printf(") -> %s  (%d)\n", get_type_str(node->func->ret_type), node->tok->line);
		print(node->body);
		printf("\n");
	}
	else if (node->type == NODE_BLOCK)
	{
		printf("%*s{\n", tab, "");
		tab += 4;
		Node *curr = node->first_stmt;
		while (curr)
		{
			printf("%*s", tab, "");
			print(curr);
			printf("\n");
			curr = curr->next_in_block;
		}
		tab -= 4;
		printf("%*s}\n", tab, "");
	}
	else if (node->type == NODE_VAR_DECL)
	{
		Node *curr = node->next_in_decl;

		if (curr->var->global)
			printf("\n");
		printf("%s ", get_type_str(node->decl_type));
		while (curr)
		{
			Type *t = curr->var->type;
			while (t != node->decl_type)
			{
				t = t->ptr_to;
				printf("*");
			}
			if (!curr->left)
				printf("%s", curr->var->name);
			else
				print(curr->left);
			if (curr->next_in_decl)
				printf(", ");
			else
				printf(";");
			if (curr->var->global)
				printf("\n");
			curr = curr->next_in_decl;		

		}
	}
	else if (node->type == NODE_RETURN)
	{
		printf("return ");
		if (node->left)
			print(node->left);
		printf(";");
	}
	else if (node->type == NODE_IF || node->type == NODE_WHILE)
	{
		printf("%s (", token_type_name(node->tok->type));
		print(node->condition);
		printf(")\n");
		if (node->body->type != NODE_BLOCK)
			printf("%*s", tab + 4, "");
		print(node->body);
		if (node->body->type != NODE_BLOCK)
			printf("\n");
		if (node->else_)
		{
			printf("%*selse ", tab, "");
			if (node->else_->type != NODE_IF)
			{
				printf("\n");
				if (node->else_->type != NODE_BLOCK)
					printf("%*s", tab + 4, "");
			}
			print(node->else_);
		}
	}
	else if (node->type == NODE_FOR)
	{
		printf("for (");
		print(node->init);
		if (!node->init || node->init->type != NODE_VAR_DECL)
			printf(";");
		printf(" ");
		print(node->condition);
		printf(" ;");
		print(node->inc);
		printf(")\n");
		if (node->body->type != NODE_BLOCK)
			printf("%*s", tab + 4, "");
		print(node->body);
	}
	else if (node->type == NODE_MEMBER)
	{
		print(node->right);
		printf("%s", token_type_name(node->tok->type));
		printf("%s", (node->tok + 1)->name);
	}
	else if (node->type == NODE_INT)
		printf("%lld", node->tok->int_val);
	else if (node->type == NODE_VAR)
		printf("%s", node->var->name);
	else if (node->type == NODE_STRING)
		printf("\"%s\"", node->tok->name);
	else if (node->type == NODE_FUNC_CALL)
	{
		printf("%s(", node->tok->name);
		for (int i = 0; i < node->arg_count; i++)
		{
			print(node->args[i]);
			if (i < node->arg_count - 1)
				printf(", ");
		}
		printf(")");
	}
	else if (node->type == NODE_ADDR || node->type == NODE_DEREF || node->type == NODE_NEG)
	{
		printf("%c(", node->tok->type);
		print(node->left);
		printf(")");
	}
	else if (node->type == NODE_CAST)
	{
		printf("((%s)", get_type_str(node->t));
		print(node->left);
		printf(")");
	}
	else if (node->type == NODE_BINARY)
	{
		print(node->left);
		printf(" %s ", token_type_name(node->tok->type));
		print(node->right);
	}
	else if (node->type == NODE_ASSIGN)
	{
		print(node->left);
		printf(" %s ", token_type_name(node->tok->type));
		print(node->right);
	}
	else if (node->type == NODE_CONTINUE)
		printf("continue ;");
	else if (node->type == NODE_BREAK)
		printf("break ;");
	else if (node->type == NODE_UNARY)
	{
		if (node->tok->type == '!')
		{
			printf("!(");
			print(node->left);
			printf(")");
		}
		else
		{
			print(node->left);
			printf("++");
		}
	}
	else if (node->type == NODE_QUESTION)
	{
		printf("((");
		print(node->condition);
		printf(") ? (");
		print(node->left);
		printf(") : (");
		print(node->right);
		printf(")");
	}
	if (node->next_in_comma)
	{
		printf(", ");
		print(node->next_in_comma);
	}
}
