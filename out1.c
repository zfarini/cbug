enum Token_Type:
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
	TOKEN_INC,
	TOKEN_DEC,
	TOKEN_BREAK,
	TOKEN_CONTINUE,
	TOKEN_UNSIGNED,
	TOKEN_SIGNED,
	TOKEN_SIZEOF,
	TOKEN_ADD_ASSIGN,
	TOKEN_SUB_ASSIGN,
	TOKEN_MUL_ASSIGN,
	TOKEN_DIV_ASSIGN,
	TOKEN_STRUCT,
	TOKEN_UNION,
	TOKEN_ARROW,
	TOKEN_ENUM,

enum Node_Type:
	NODE_NONE,
	NODE_PROGRAM,
	NODE_VAR,
	NODE_ARROW,
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
	NODE_QUESTION,
	NODE_MEMBER,

enum non-name:
	INT,
	PTR,
	VOID,
	ARRAY,
	SHORT,
	CHAR,
	LONG,
	STRUCT,
	FUNC,
	UNKNOWN,

struct S: (size=24, align=8)
	x: char
	[1 padding]
	y: short
	[4 padding]
	z: long
	l: char
	[7 padding]

struct Token: (size=40, align=8)
	type:    int
	[4 padding]
	int_val: long
	name:    char*
	line:    int
	col:     int
	str:     char*

struct Node: (size=1784, align=8)
	type:          int
	[4 padding]
	var:           Var*
	tok:           Token*
	left:          Node*
	right:         Node*
	next_stmt:     Node*
	body:          Node*
	condition:     Node*
	init:          Node*
	inc:           Node*
	next_in_block: Node*
	next_in_decl:  Node*
	first_stmt:    Node*
	next_in_comma: Node*
	cast_type:     Type*
	decl_type:     Type*
	ret_type:      Type*
	else_:         Node*
	t:             Type*
	func:          Func*
	member_idx:    int
	[4 padding]
	args:          Node*[100]
	params:        Node*[100]
	arg_count:     int
	param_count:   int
	stack_size:    int
	[4 padding]

struct FILE: (size=8, align=4)
	x: int
	y: int

struct Type: (size=2056, align=8)
	t:            int
	[4 padding]
	ptr_to:       Type*
	tok:          Token*
	array_size:   int
	size:         int
	is_unsigned:  int
	[4 padding]
	name:         char*
	field_type:   Type*[100]
	field_name:   char*[100]
	field_offset: int[100]
	field_count:  int
	[4 padding]

struct Scope: (size=840, align=8)
	parent:    Scope*
	prev:      Scope*
	child:     Scope*
	next:      Scope*
	vars:      Var*[100]
	var_count: int
	[4 padding]

struct Var: (size=48, align=8)
	type:   Type*
	name:   char*
	offset: int
	[4 padding]
	token:  Token*
	global: int
	[4 padding]
	decl:   Node*

struct Func: (size=16, align=8)
	ret_type: Type*
	name:     char*

struct Enum: (size=16, align=8)
	name:  char*
	value: int
	[4 padding]

struct Token_Name: (size=16, align=8)
	name: char*
	type: int
	[4 padding]


function binary() -> Node*  (192)


function parse_type() -> Type*  (193)


function parse() -> Node*  (194)


function function() -> Node*  (195)


function decl() -> Node*  (196)


function statement() -> Node*  (197)


function expr() -> Node*  (198)


function assign() -> Node*  (199)


function conditional() -> Node*  (200)


function logical_or() -> Node*  (201)


function logical_and() -> Node*  (202)


function equality() -> Node*  (203)


function relational() -> Node*  (204)


function add() -> Node*  (205)


function mul() -> Node*  (206)


function cast() -> Node*  (207)


function unary() -> Node*  (208)


function postfix() -> Node*  (209)


function primary() -> Node*  (210)


function error() -> void  (211)


function error_token() -> void  (212)


function read_entire_file() -> char*  (213)


function out() -> void  (214)


function malloc() -> void*  (216)


function assert() -> int  (217)


function calloc() -> void*  (218)


function isspace() -> int  (219)


function isdigit() -> int  (220)


function isalpha() -> int  (221)


function isalnum() -> int  (222)


function memcpy() -> void  (223)


function strcmp() -> int  (224)


function strdup() -> char*  (225)


function strlen() -> int  (226)


function strncmp() -> int  (227)


function strchr() -> int  (228)


function printf() -> int  (229)


function fprintf() -> int  (230)


function fopen() -> FILE*  (231)


function new_node() -> Node*  (232)


function type_match() -> int  (234)


function dbg() -> void  (235)


function fopen() -> FILE*  (236)


function fseek() -> int  (237)


function ftell() -> long  (238)


function fclose() -> int  (239)


function fread() -> long  (240)


function exit() -> void  (241)


function sprintf() -> int  (242)


char *filename;

char *program_str;

FILE *f;

Type *types;

int type_count;

Type **types_declared;

int types_declared_count;

char **strings_literal;

int strings_literal_count;

Type *type_long;

Type *type_int;

Type *type_short;

Type *type_char;

Type *type_void;

Func *funcs;

int func_count;

Scope *scopes;

int scope_count = 0;

Scope *curr_scope;

Token *tokens;

int ct;

Node *_nodes;

int _curr_node;

Var *vars;

int var_count = 0;

Enum *enums;

int enum_count;

Node *curr_func;

Token_Name *multi_char_tokens_type;

Token_Name *keywords;

char **token_type_name_c;

function token_type_name(int type) -> char*  (291)
{
    if (type == 256)
        return "int";
    else if (type == 257)
        return "identifier";
    else if (type == 274)
        return "string";
    else if (type < 255)
    {
        if (!(*(token_type_name_c + type)))
        {
            *(token_type_name_c + type) = ((char*)malloc(2))
            *(*(token_type_name_c + type) + 0) = ((char)type)
            *(*(token_type_name_c + type) + 1) = ((char)0)
        }

        return *(token_type_name_c + type);
    }
    else 
    {
        for (int i = 0; *(multi_char_tokens_type + i).name ;i++)
        {
            if (*(multi_char_tokens_type + i).type == type)
                return *(multi_char_tokens_type + i).name;

        }

        for (int i = 0; *(keywords + i).name ;i++)
        {
            if (*(keywords + i).type == type)
                return *(keywords + i).name;

        }

    }

    
}


function new_temp_token(int type) -> Token*  (325)
{
    Token *t = ((Token*)calloc(40, 1));
    t->type = type
    t->line = -(1)
    t->col = -(1)
    return t;
}


function get_backspace_char(char c) -> char  (334)
{
    if (((int)c) == 110)
        return 10;

    if (((int)c) == 116)
        return 9;

    if (((int)c) == 114)
        return 13;

    if (((int)c) == 118)
        return 11;

    if (((int)c) == 102)
        return 12;

    if (((int)c) == 97)
        return 7;

    if (((int)c) == 98)
        return 8;

    return c;
}


int multi_char_token_count = 0;

int keyword_count = 0;

function add_multi_char_token(char* name, int type) -> void  (349)
{
    *(multi_char_tokens_type + multi_char_token_count).name = name
    *(multi_char_tokens_type + multi_char_token_count).type = type
    multi_char_token_count++
}


function add_keyword(char* name, int type) -> void  (356)
{
    *(keywords + keyword_count).name = name
    *(keywords + keyword_count).type = type
    keyword_count++
}


function tokenize(char* s) -> Token*  (363)
{
    add_multi_char_token("==", 260)
    add_multi_char_token("!=", 261)
    add_multi_char_token("<=", 262)
    add_multi_char_token(">=", 263)
    add_multi_char_token("&&", 258)
    add_multi_char_token("||", 259)
    add_multi_char_token("++", 275)
    add_multi_char_token("--", 276)
    add_multi_char_token("+=", 282)
    add_multi_char_token("-=", 283)
    add_multi_char_token("*=", 284)
    add_multi_char_token("/=", 285)
    add_multi_char_token("->", 288)
    add_multi_char_token(0, 0)
    add_keyword("return", 264)
    add_keyword("for", 268)
    add_keyword("while", 267)
    add_keyword("if", 265)
    add_keyword("else", 266)
    add_keyword("int", 269)
    add_keyword("void", 270)
    add_keyword("char", 271)
    add_keyword("short", 272)
    add_keyword("long", 273)
    add_keyword("unsigned", 279)
    add_keyword("signed", 280)
    add_keyword("break", 277)
    add_keyword("continue", 278)
    add_keyword("sizeof", 281)
    add_keyword("long", 273)
    add_keyword("struct", 286)
    add_keyword("union", 287)
    add_keyword("enum", 289)
    int i = 0, j = 0;
    int line = 1;
    int col = 1;
    
    while (*(s + i))
    {
        Token *token = &(*(tokens + j));
        token->type = 0
        while (isspace(*(s + i)))
        {
            if (((int)*(s + i)) == 10)
            {
                line++
                col = 1
            }
            else 
                col++
            i++
        }

        if (!(*(s + i)))
            break ;

        if (((int)*(s + i)) == 35)
        {
            while (((int)*(s + i)) != 10)
                i++

            continue ;
        }
        else if (((int)*(s + i)) == 47 && ((int)*(s + i + 1)) == 47)
        {
            while (((int)*(s + i)) && ((int)*(s + i)) != 10)
                i++

            continue ;
        }

        if (((int)*(s + i)) == 47 && ((int)*(s + i + 1)) == 42)
        {
            i += i + 2
            while (((int)*(s + i)) && ((int)*(s + i)) != 42 || ((int)*(s + i + 1)) != 47)
                i++

            if (*(s + i))
                i += i + 2
            else 
                error("unclosed comment")
            continue ;
        }

        token->str = s + i
        token->line = line
        token->col = col
        int last = i;
        if (isdigit(*(s + i)))
        {
            token->type = 256
            token->int_val = ((long)0)
            while (isdigit(*(s + i)))
            {
                token->int_val = token->int_val * ((long)10) + ((long)((int)*(s + i)) - 48)
                i++
            }

        }
        else if (((int)*(s + i)) == 39)
        {
            i++
            token->type = 256
            if (((int)*(s + i)) == 92)
            {
                i++
                token->int_val = ((long)get_backspace_char(*(s + i)))
            }
            else 
                token->int_val = ((long)*(s + i))
            i++
            if (((int)*(s + i)) != 39)
                error_token(token, "missing terminating ' character")

            i++
        }
        else if (((int)*(s + i)) == 34)
        {
            i++
            token->type = 274
            int k = i;
            while (((int)*(s + i)) && ((int)*(s + i)) != 34 || ((int)*(s + i - 1)) == 92)
                i++

            if (((int)*(s + i)) != 34)
                error_token(token, "missing terminating \" character")

            char *name = ((char*)malloc(i - k + 1));
            memcpy(name, s + k, i - k)
            *(name + i - k) = ((char)0)
            token->name = name
            i++
        }
        else if (isalpha(*(s + i)) || ((int)*(s + i)) == 95)
        {
            int k = i;
            while (isalnum(*(s + i)) || ((int)*(s + i)) == 95)
                i++

            char *name = ((char*)malloc(i - k + 1));
            memcpy(name, s + k, i - k)
            *(name + i - k) = ((char)0)
            token->type = 257
            for (int l = 0; *(keywords + l).name ;l++)
            {
                if (!(strcmp(name, *(keywords + l).name)))
                {
                    token->type = *(keywords + l).type
                    break ;
                }

            }

            token->name = name
        }
        else 
        {
            for (int k = 0; *(multi_char_tokens_type + k).name ;k++)
            {
                if (!(strncmp(s + i, *(multi_char_tokens_type + k).name, strlen(*(multi_char_tokens_type + k).name))))
                {
                    token->type = *(multi_char_tokens_type + k).type
                    i += i + strlen(*(multi_char_tokens_type + k).name)
                    break ;
                }

            }

            if (!(token->type))
            {
                if (strchr("+-*/%()=;,<>{}&[]?:.!", *(s + i)))
                {
                    token->type = ((int)*(s + i))
                    i++
                }
                else 
                {
                    error_token(token, "unknown token `%c`", *(s + i))
                }

            }

        }

        col += col + i - last
        j++
    }

    *(tokens + j).type = 0
    *(tokens + j).line = line, *(tokens + j).col = col
    *(tokens + j).str = s + i
    if (((int)*(s + i - 1)) == 10)
        *(tokens + j).line++, *(tokens + j).col = 1

    return tokens;
}


function align(int n, int a) -> int  (548)
{
    return n + a - 1 / a * a;
}


function find(char* s, char c) -> char*  (553)
{
    int i;
    i = 0
    while (*(s + i))
    {
        if (((int)*(s + i)) == ((int)c))
            return s + i;

        i++
    }

    return 0;
}


function new_scope() -> Scope*  (569)
{
    Scope *scope = &(*(scopes + scope_count++));
    return scope;
}


function enter_scope() -> void  (575)
{
    Scope *scope = new_scope();
    scope->parent = curr_scope
    curr_scope = scope
}


function leave_scope() -> void  (582)
{
    curr_scope = curr_scope->parent
}


function new_type(int t) -> Type*  (587)
{
    Type *type = &(*(types + type_count++));
    type->t = t
    if (t == 1 || t == 3 || t == 8)
        type->is_unsigned = 1

    if (t == 1 || t == 3 || t == 6 || t == 8)
        type->size = 8
    else if (type->t == 0)
        type->size = 4
    else if (type->t == 4)
        type->size = 2
    else if (type->t == 5)
        type->size = 1

    return type;
}


function types_are_equal(Type* t1, Type* t2) -> int  (604)
{
    if (!(t1) || !(t2))
        return 0;

    if (t1 == t2)
        return 1;

    if (t1->is_unsigned != t2->is_unsigned)
        return 0;

    if (t1->t != t2->t)
        return 0;

    if (!(t1->ptr_to))
        return t2->ptr_to == 0;

    return types_are_equal(t1->ptr_to, t2->ptr_to);
}


function add_func(char* name, Type* ret_type) -> Func*  (619)
{
    Func *fn = &(*(funcs + func_count++));
    fn->name = name
    fn->ret_type = ret_type
    return fn;
}


function find_func(char* name) -> Func*  (627)
{
    for (int i = 0; i < func_count ;i++)
    {
        if (!(strcmp(name, *(funcs + i).name)))
            return &(*(funcs + i));

    }

    return 0;
}


function find_var(char* name) -> Var*  (637)
{
    Scope *scope = curr_scope;
    while (scope)
    {
        for (int i = 0; i < scope->var_count ;i++)
        {
            if (!(strcmp(*(scope->vars + i)->name, name)))
                return *(scope->vars + i);

        }

        scope = scope->parent
    }

    Func *func = find_func(name);
    if (!(func))
        return 0;

    Type *type = new_type(8);
    Var *v = &(*(vars + var_count++));
    v->type = type
    v->name = name
    v->token = &(*(tokens + ct))
    return v;
}


function new_var(Type* type, char* name) -> Var*  (661)
{
    for (int i = 0; i < curr_scope->var_count ;i++)
    {
        if (!(strcmp(*(curr_scope->vars + i)->name, name)))
            error_token(&(*(tokens + ct)), "redeclaration of variable \"%s\"\n", name)

    }

    Var *v = &(*(vars + var_count++));
    v->name = name
    v->token = &(*(tokens + ct))
    
    v->type = type
    *(curr_scope->vars + curr_scope->var_count++) = v
    if (!(type->size))
        error_token(&(*(tokens + ct)), "type with size 0?")

    if (curr_func && type->size)
    {
        if (type->t == 3)
        {
            curr_func->stack_size += curr_func->stack_size + type->ptr_to->size * type->array_size
        }
        else 
            curr_func->stack_size += curr_func->stack_size + type->size
        curr_func->stack_size = align(curr_func->stack_size, v->type->size)
        v->offset = curr_func->stack_size
        
    }

    return v;
}


function skip(int type) -> void  (692)
{
    if (*(tokens + ct).type != type)
        error_token(&(*(tokens + ct)), "expected `%s`", token_type_name(type))

    ct++
}


function is_typename(Token* tok) -> int  (699)
{
    if (tok->type == 269 || tok->type == 270 || tok->type == 271 || tok->type == 272 || tok->type == 273 || tok->type == 280 || tok->type == 279 || tok->type == 270)
        return 1;

    if (tok->type == 257)
    {
        for (int i = 0; i < types_declared_count ;i++)
        {
            if (!(strcmp(*(types_declared + i)->name, tok->name)))
                return 1;

        }

    }

    return 0;
}


function find_binary_op_type(Type* t1, Type* t2) -> Type*  (723)
{
    if (types_are_equal(t1, t2))
        return t1;

    if (t1->ptr_to && !(t2->ptr_to))
        

    return 0;
}


function strjoin(char* s1, char* s2) -> char*  (733)
{
    int l1 = strlen(s1);
    int l2 = strlen(s2);
    char *s = ((char*)malloc(l1 + l2 + 1));
    memcpy(s, s1, l1)
    memcpy(s + l1, s2, l2)
    *(s + l1 + l2) = ((char)0)
    return s;
}


function get_type_str(Type* type) -> char*  (744)
{
    if (type->t == 7)
    {
        return type->name;
    }

    if (type->t == 1)
    {
        return strjoin(get_type_str(type->ptr_to), "*");
    }
    else if (type->t == 3)
    {
        char *s;
        sprintf(s, "[%d]", type->array_size)
        return strjoin(get_type_str(type->ptr_to), s);
    }

    if (type->t == 2)
        return "void";

    if (type->t == 5)
        return "char";

    if (type->t == 0)
        return "int";

    if (type->t == 4)
        return "short";

    if (type->t == 6)
        return "long";

    if (type->t == 9)
        return "unknown";

    
}


function add_type(Node* node) -> Type*  (769)


function implicit_cast(Node** node, Type* type) -> void  (771)
{
    add_type(*(node))
    if (types_are_equal(type, *(node)->t))
        return ;

    Node *cast = new_node(22);
    cast->left = *(node)
    cast->t = type
    *(node) = cast
}


function find_common_type(Type* t1, Type* t2) -> Type*  (782)
{
    if (t1->ptr_to)
        return t1;

    if (t2->ptr_to)
        return t2;

    if (t1->size < 4)
        t1 = type_int

    if (t2->size < 4)
        t2 = type_int

    if (t1->size != t2->size)
        return ((t1->size < t2->size) ? (t2) : (t1);

    return ((t2->is_unsigned) ? (t2) : (t1);
}


function add_type(Node* node) -> Type*  (797)
{
    Type *t = type_void;
    if (!(node))
        return t;

    if (node->t)
        t = node->t
    else if (node->type == 4)
    {
        if (node->tok->int_val > ((long)2147483647) || node->tok->int_val < -(2147483648))
            t = type_long
        else 
            t = type_int
    }
    else if (node->type == 24)
    {
        t = add_type(node->left)
    }
    else if (node->type == 14)
    {
        if (node->tok->type == 275 || node->tok->type == 276)
        {
            t = add_type(node->left)
            if (t->t == 2)
                error_token(node->tok, "invalid operand for '%s' operator", token_type_name(node->tok->type))

        }
        else if (node->tok->type == 33)
        {
            add_type(node->left)
            t = type_int
        }
        else 
            
    }
    else if (node->type == 19)
    {
        t = new_type(1)
        t->ptr_to = type_char
    }
    else if (node->type == 2)
        t = node->var->type
    else if (node->type == 13)
        t = node->func->ret_type
    else if (node->type == 17)
    {
        t = new_type(1)
        t->ptr_to = add_type(node->left)
        if (t->ptr_to->t == 2)
            error_token(node->tok, "invalid operand for '&'")

    }
    else if (node->type == 16)
    {
        Type *tt = add_type(node->left);
        if (!(tt->ptr_to))
            error_token(node->tok, "derefrencing a non-pointer")

        if (tt->ptr_to->t == 2)
            error_token(node->tok, "derefrencing a void pointer")

        t = tt->ptr_to
    }
    else if (node->type == 7)
    {
        t = add_type(node->left)
        if (t->t == 2)
            error_token(node->tok, "invalid operand for '-'")

    }
    else if (node->type == 22)
    {
        t = node->cast_type
        add_type(node->left)
    }
    else if (node->type == 5)
    {
        int tok = node->tok->type;
        add_type(node->left)
        add_type(node->right)
        Type *t1 = node->left->t;
        Type *t2 = node->right->t;
        if (t1->t == 2 || t2->t == 2)
            

        if (t1->ptr_to || t2->ptr_to)
        {
            if (type_match(tok, 42, 47, 37, -(1)) || !(t1->ptr_to) && tok == 45 || t1->ptr_to && t2->ptr_to && tok == 43 || t1->ptr_to && t2->ptr_to && tok == 45 && !(types_are_equal(t1, t2)))
                error_token(node->tok, "invalid operands to binary expression ('%s' and '%s')", get_type_str(t1), get_type_str(t2))

            if (t1->ptr_to && !(t2->ptr_to) && tok == 43 || tok == 45)
                t = t1
            else if (t2->ptr_to && !(t1->ptr_to) && tok == 43)
                t = t2
            else 
                t = type_int
        }
        else 
        {
            Type *tt = find_common_type(node->left->t, node->right->t);
            implicit_cast(&(node->left), tt)
            implicit_cast(&(node->right), tt)
            if (type_match(node->tok->type, 43, 45, 42, 47, 37, -(1)))
                t = node->left->t
            else 
                t = type_int
        }

    }
    else if (node->type == 6)
    {
        t = add_type(node->left)
        
        add_type(node->right)
        implicit_cast(&(node->right), t)
    }
    else if (node->type == 23)
    {
        add_type(node->condition)
        add_type(node->left)
        add_type(node->right)
        Type *tt = find_common_type(node->left->t, node->right->t);
        implicit_cast(&(node->left), tt)
        implicit_cast(&(node->right), tt)
        t = tt
    }
    else 
        
    node->t = t
    add_type(node->next_in_comma)
    return t;
}


function parse(char* s) -> Node*  (928)
{
    add_func("ASSERT", type_void)
    tokenize(s)
    ct = 0
    Node *prog = new_node(1);
    curr_scope = new_scope()
    curr_scope->parent = ((Scope*)0)
    Node *curr = prog;
    while (*(tokens + ct).type)
    {
        int save = ct;
        if (*(tokens + ct).type == 289)
        {
            ct++
            printf("enum ")
            if (*(tokens + ct).type == 257)
            {
                printf("%s", *(tokens + ct).name)
                ct++
            }
            else 
                printf("non-name")
            printf(":\n")
            skip(123)
            int val = 0;
            while (*(tokens + ct).type != 125)
            {
                *(enums + enum_count).name = *(tokens + ct).name
                printf("\t%s", *(tokens + ct).name)
                skip(257)
                if (*(tokens + ct).type == 61)
                {
                    ct++
                    printf(" = %lld", *(tokens + ct).int_val)
                    if (*(tokens + ct).type != 256)
                        skip(256)

                    val = ((int)*(tokens + ct).int_val)
                    ct++
                }

                if (*(tokens + ct).type == 44)
                {
                    printf(",")
                    ct++
                }
                else if (*(tokens + ct).type != 125)
                    skip(125)

                *(enums + enum_count).value = val
                enum_count++
                val++
                printf("\n")
            }

            skip(125)
            skip(59)
            printf("\n")
        }
        else if (*(tokens + ct).type == 286)
        {
            Token *st_token = &(*(tokens + ct));
            Type *type = new_type(7);
            ct++
            type->name = *(tokens + ct).name
            skip(257)
            skip(123)
            int i = 0;
            int size = 0;
            int max = 0;
            while (*(tokens + ct).type && *(tokens + ct).type != 125)
            {
                Node *node = decl(1);
                node = node->next_in_decl
                while (node)
                {
                    *(type->field_name + i) = node->var->name
                    *(type->field_type + i) = node->var->type
                    
                    size = align(size, node->var->type->size)
                    *(type->field_offset + i) = size
                    if (node->var->type->size > max)
                        max = node->var->type->size

                    if (node->var->type->t == 3)
                        size += size + node->var->type->size * node->var->type->array_size
                    else 
                        size += size + node->var->type->size
                    i++
                    node = node->next_in_decl
                }

                skip(59)
            }

            if (!(size))
                error_token(st_token, "empty structs are not handled yet")

            type->size = align(size, max)
            type->field_count = i
            *(types_declared + types_declared_count++) = type
            for (int j = 0; j < types_declared_count ;j++)
            {
                Type *t = *(types_declared + j);
                for (int k = 0; k < t->field_count ;k++)
                {
                    Type *cur = *(t->field_type + k);
                    while (cur->ptr_to)
                    {
                        if (cur->ptr_to->t == 9 && !(strcmp(cur->ptr_to->tok->name, type->name)))
                        {
                            cur->ptr_to = type
                            break ;
                        }

                        cur = cur->ptr_to
                    }

                }

            }

            skip(125)
            skip(59)
            continue ;
        }
        else 
        {
            if (!(is_typename(&(*(tokens + ct)))))
                error_token(&(*(tokens + ct)), "expected a function or variable declaration")

            parse_type()
            skip(257)
            int globl = 0;
            if (*(tokens + ct).type != 40)
                globl = 1

            ct = save
            if (globl)
            {
                curr->next_stmt = decl(0)
                skip(59)
            }
            else 
                curr->next_stmt = function()
            if (curr->next_stmt)
                curr = curr->next_stmt

        }

    }

    for (int i = 0; i < types_declared_count ;i++)
    {
        Type *t = *(types_declared + i);
        int alignement = 0;
        int space = 0;
        for (int j = 0; j < t->field_count ;j++)
        {
            if (*(t->field_type + j)->ptr_to && *(t->field_type + j)->ptr_to->t == 9)
                error_token(*(t->field_type + j)->ptr_to->tok, "unknown type")

            if (*(t->field_type + j)->size > alignement)
                alignement = *(t->field_type + j)->size

            if (((int)strlen(*(t->field_name + j))) > space)
                space = strlen(*(t->field_name + j))

        }

        printf("struct %s: (size=%d, align=%d)\n", t->name, t->size, alignement)
        int size = 0;
        for (int j = 0; j < t->field_count ;j++)
        {
            int x = align(size, *(t->field_type + j)->size);
            if (x != size)
                printf("\t[%d padding]\n", x - size)

            size = x
            if (*(t->field_type + j)->t == 3)
                size += size + *(t->field_type + j)->size * *(t->field_type + j)->array_size
            else 
                size += size + *(t->field_type + j)->size
            printf("\t%s: %*s%s\n", *(t->field_name + j), ((int)space - strlen(*(t->field_name + j))), "", get_type_str(*(t->field_type + j)))
        }

        if (size != t->size)
            printf("\t[%d padding]\n", t->size - size)

        printf("\n")
    }

    return prog;
}


function find_type(char* name) -> Type*  (1116)
{
    for (int i = 0; i < types_declared_count ;i++)
    {
        if (!(strcmp(*(types_declared + i)->name, name)))
            return *(types_declared + i);

    }

    return 0;
}


function parse_base_type() -> Type*  (1126)
{
    int i = 0, s = 0, c = 0, l = 0, v = 0, u = 0, si = 0;
    Type *type = ((Type*)0);
    Token *start = &(*(tokens + ct));
    if (start->type == 257)
    {
        type = find_type(start->name)
        if (type)
        {
            ct++
            return type;
        }

    }

    while (1)
    {
        if (*(tokens + ct).type == 269)
            i++
        else if (*(tokens + ct).type == 270)
            v++
        else if (*(tokens + ct).type == 271)
            c++
        else if (*(tokens + ct).type == 272)
            s++
        else if (*(tokens + ct).type == 273)
            l++
        else if (*(tokens + ct).type == 279)
            u++
        else if (*(tokens + ct).type == 280)
            si++
        else 
            break ;
        ct++
    }

    int err = 0;
    if (i > 1 || v > 1 || c > 1 || s > 1 || u > 1 || si > 1 || l > 2)
        err = 1

    if (si && u)
        err = 1

    if (i + v + c + s > 1)
        err = 1

    if (l && v || c || s)
        err = 1

    if (l)
        type = new_type(6)
    else if (i)
        type = new_type(0)
    else if (v)
        type = new_type(2)
    else if (c)
        type = new_type(5)
    else if (s)
        type = new_type(4)
    else if (si || u)
        type = new_type(0)
    else 
    {
        type = new_type(9)
        type->tok = &(*(tokens + ct))
        ct++
    }

    if (type)
        type->is_unsigned = u

    if (err)
        error_token(start, "invalid type")

    return type;
}


function parse_type() -> Type*  (1194)
{
    Type *type = parse_base_type();
    while (*(tokens + ct).type == 42)
    {
        Type *new = new_type(1);
        new->t = 1
        new->ptr_to = type
        type = new
        ct++
    }

    return type;
}


function function() -> Node*  (1208)
{
    enter_scope()
    Type *ret_type = parse_type();
    Node *node = new_node(15);
    ct++
    curr_func = node
    curr_func->stack_size = 0
    skip(40)
    int count = 0;
    while (*(tokens + ct).type != 41)
    {
        *(node->params + count) = new_node(18)
        Type *type = parse_type();
        *(node->params + count)->var = new_var(type, *(tokens + ct).name)
        skip(257)
        count++
        if (*(tokens + ct).type == 44)
            ct++
        else if (*(tokens + ct).type != 41)
            break ;

    }

    skip(41)
    node->param_count = count
    node->func = add_func(node->tok->name, ret_type)
    if (*(tokens + ct).type != 59)
    {
        if (*(tokens + ct).type != 123)
            skip(123)

        node->body = statement()
    }
    else 
        skip(59)
    leave_scope()
    curr_func = ((Node*)0)
    return node;
}


function statement_or_decl() -> Node*  (1250)
{
    if (is_typename(&(*(tokens + ct))))
    {
        Node *node = decl(0);
        skip(59)
        return node;
    }

    return statement();
}


function decl(int is_struct) -> Node*  (1261)
{
    Node *decl = new_node(18);
    Type *base = parse_base_type();
    decl->decl_type = base
    Node *curr = decl;
    while (1)
    {
        curr->next_in_decl = new_node(18)
        Type *type = base;
        while (*(tokens + ct).type == 42)
        {
            Type *new = new_type(1);
            new->ptr_to = type
            type = new
            ct++
        }

        if (!(type->ptr_to) && type->t == 9)
            error_token(&(*(tokens + ct)), "unknown type")

        if (type->t == 2 && !(type->ptr_to))
            error_token(&(*(tokens + ct)), "variable type can't be void")

        if (*(tokens + ct).type != 257)
            skip(257)

        Var *var;
        if (*(tokens + ct + 1).type == 91)
        {
            Type *arr = new_type(3);
            arr->ptr_to = type
            arr->size = arr->ptr_to->size
            arr->array_size = ((int)*(tokens + ct + 2).int_val)
            type = arr
            if (is_struct)
            {
                var = &(*(vars + var_count++))
                var->name = *(tokens + ct).name
                var->type = type
            }
            else 
                var = new_var(type, *(tokens + ct).name)
            ct += ct + 2
            skip(256)
            skip(93)
        }
        else 
        {
            if (is_struct)
            {
                var = &(*(vars + var_count++))
                var->name = *(tokens + ct).name
                var->type = type
            }
            else 
                var = new_var(type, *(tokens + ct).name)
            ct++
        }

        var->decl = curr->next_in_decl
        if (!(curr_scope->parent))
            var->global = 1

        curr->next_in_decl->var = var
        if (*(tokens + ct).type == 61)
        {
            if (*(tokens + ct + 1).type == 123)
            {
                if (type->t != 3)
                    error_token(var->token, "invalid initiliazer")

                ct += ct + 2
                int end = 0;
                Node *init = ((Node*)0);
                Node *c = ((Node*)0);
                for (int i = 0;  ;i++)
                {
                    if (*(tokens + ct).type == 125)
                        end = 1

                    if (end && i >= type->array_size)
                        break ;

                    if (i >= type->array_size)
                    {
                        assign()
                        if (*(tokens + ct).type == 44)
                            ct++
                        else if (*(tokens + ct).type != 125)
                            skip(125)

                        continue ;
                    }

                    Node *value;
                    if (end)
                    {
                        value = new_node(4)
                        value->tok = new_temp_token(256)
                        value->tok->int_val = ((long)0)
                    }
                    else 
                    {
                        value = assign()
                    }

                    Node *add = new_node(5);
                    add->tok = new_temp_token(43)
                    add->left = new_node(2)
                    add->left->var = var
                    add->right = new_node(4)
                    add->right->tok = new_temp_token(269)
                    add->right->tok->int_val = ((long)i)
                    Node *deref = new_node(16);
                    deref->tok = new_temp_token(42)
                    deref->left = add
                    Node *a = new_node(6);
                    a->tok = new_temp_token(61)
                    a->left = deref
                    a->right = value
                    if (!(c))
                    {
                        c = a
                        init = a
                    }
                    else 
                    {
                        c->next_in_comma = a
                        c = c->next_in_comma
                    }

                    if (*(tokens + ct).type == 44)
                        ct++
                    else if (*(tokens + ct).type != 125)
                        skip(125)

                }

                skip(125)
                curr->next_in_decl->left = init
            }
            else 
            {
                ct++
                curr->next_in_decl->left = assign()
            }

            add_type(curr->next_in_decl->left)
        }

        if (*(tokens + ct).type != 44)
            break ;

        ct++
        curr = curr->next_in_decl
    }

    return decl;
}


function statement() -> Node*  (1414)
{
    Node *node = ((Node*)0);
    if (*(tokens + ct).type == 264)
    {
        node = new_node(8)
        ct++
        if (*(tokens + ct).type != 59)
            node->left = expr()
        else 
            node->left = new_node(0)
        skip(59)
    }
    else if (*(tokens + ct).type == 278)
    {
        node = new_node(20)
        ct++
        skip(59)
    }
    else if (*(tokens + ct).type == 277)
    {
        node = new_node(21)
        ct++
        skip(59)
    }
    else if (*(tokens + ct).type == 265)
    {
        node = new_node(9)
        ct++
        skip(40)
        node->condition = expr()
        skip(41)
        node->body = statement()
        if (*(tokens + ct).type == 266)
        {
            ct++
            node->else_ = statement()
        }

    }
    else if (*(tokens + ct).type == 267)
    {
        node = new_node(10)
        ct++
        skip(40)
        node->condition = expr()
        skip(41)
        node->body = statement()
    }
    else if (*(tokens + ct).type == 268)
    {
        enter_scope()
        node = new_node(11)
        ct++
        skip(40)
        if (*(tokens + ct).type != 59)
        {
            if (is_typename(&(*(tokens + ct))))
                node->init = decl(0)
            else 
                node->init = expr()
        }

        skip(59)
        if (*(tokens + ct).type != 59)
            node->condition = expr()

        skip(59)
        if (*(tokens + ct).type != 41)
            node->inc = expr()

        skip(41)
        node->body = statement()
        leave_scope()
    }
    else if (*(tokens + ct).type == 123)
    {
        node = new_node(12)
        ct++
        Node *curr = node;
        enter_scope()
        while (*(tokens + ct).type != 125 && *(tokens + ct).type)
        {
            curr->next_in_block = statement_or_decl()
            
            curr = curr->next_in_block
            
        }

        node->first_stmt = node->next_in_block
        node->next_in_block = ((Node*)0)
        leave_scope()
        curr->next_in_block = ((Node*)0)
        skip(125)
    }
    else 
    {
        if (*(tokens + ct).type != 59)
            node = expr()
        else 
            node = new_node(0)
        skip(59)
    }

    return node;
}


function expr() -> Node*  (1517)
{
    Node *node = assign();
    Node *curr = node;
    while (*(tokens + ct).type == 44)
    {
        ct++
        curr->next_in_comma = assign()
        curr = curr->next_in_comma
    }

    return node;
}


function assign() -> Node*  (1530)
{
    Node *left = conditional();
    if (type_match(*(tokens + ct).type, 61, 282, 283, 285, 284, -(1)))
    {
        add_type(left)
        if (left->type != 2 && left->type != 16 && left->type != 24 || left->t->t == 3 || left->t->t == 2)
            error_token(&(*(tokens + ct)), "expression is not assignable")

        Node *node = new_node(6);
        ct++
        node->left = left
        node->right = assign()
        if (node->tok->type != 61)
        {
            Node *right = new_node(5);
            right->tok = new_temp_token(*(node->tok->str + 0))
            right->left = left
            right->right = node->right
            node->right = right
        }

        add_type(node)
        return node;
    }

    add_type(left)
    return left;
}


function conditional() -> Node*  (1561)
{
    Node *left = logical_or();
    if (*(tokens + ct).type == 63)
    {
        Node *node = new_node(23);
        ct++
        node->condition = left
        node->left = expr()
        skip(58)
        node->right = conditional()
        return node;
    }

    return left;
}


function logical_or() -> Node*  (1577)
{
    return binary(logical_and, 259, -(1));
}


function logical_and() -> Node*  (1582)
{
    return binary(equality, 258, -(1));
}


function equality() -> Node*  (1587)
{
    return binary(relational, 260, 261, -(1));
}


function relational() -> Node*  (1592)
{
    return binary(add, 60, 62, 262, 263, -(1));
}


function add() -> Node*  (1597)
{
    return binary(mul, 43, 45, -(1));
}


function mul() -> Node*  (1602)
{
    return binary(cast, 42, 47, 37, -(1));
}


function cast() -> Node*  (1607)
{
    if (*(tokens + ct).type == 40 && is_typename(&(*(tokens + ct + 1))))
    {
        Node *node = new_node(22);
        ct++
        node->cast_type = parse_type()
        skip(41)
        node->left = cast()
        return node;
    }

    return unary();
}


function unary() -> Node*  (1621)
{
    if (*(tokens + ct).type == 43)
    {
        ct++
        return cast();
    }
    else if (*(tokens + ct).type == 45)
    {
        Node *node = new_node(7);
        ct++
        node->left = cast()
        return node;
    }
    else if (*(tokens + ct).type == 38)
    {
        Node *node = new_node(17);
        ct++
        node->left = cast()
        return node;
    }
    else if (*(tokens + ct).type == 42)
    {
        Node *node = new_node(16);
        ct++
        node->left = cast()
        return node;
    }
    else if (*(tokens + ct).type == 33)
    {
        Node *node = new_node(14);
        ct++
        node->left = cast()
        return node;
    }
    else if (*(tokens + ct).type == 281)
    {
        Node *node = new_node(4);
        node->tok = new_temp_token(256)
        ct++
        Type *t = ((Type*)0);
        if (*(tokens + ct).type == 40 && is_typename(&(*(tokens + ct + 1))))
        {
            ct++
            t = parse_type()
            skip(41)
        }
        else 
        {
            Node *left = unary();
            t = add_type(left)
        }

        
        if (t->t == 3)
            node->tok->int_val = ((long)t->size * t->array_size)
        else 
            node->tok->int_val = ((long)t->size)
        return node;
    }
    else if (*(tokens + ct).type == 275 || *(tokens + ct).type == 276)
    {
        Node *node = new_node(5);
        node->tok->type = ((*(tokens + ct).type == 275) ? (43) : (45)
        ct++
        node->left = unary()
        node->right = new_node(4)
        node->right->tok = new_temp_token(256)
        node->right->tok->int_val = ((long)1)
        Node *assign = new_node(6);
        assign->tok = new_temp_token(61)
        assign->left = node->left
        assign->right = node
        return assign;
    }

    return postfix();
}


function postfix() -> Node*  (1699)
{
    Node *left = primary();
    while (1)
    {
        if (*(tokens + ct).type == 91)
        {
            ct++
            Node *index = expr();
            skip(93)
            Node *node = new_node(5);
            node->tok = new_temp_token(43)
            node->left = left
            node->right = index
            Node *deref = new_node(16);
            deref->tok = new_temp_token(42)
            deref->left = node
            left = deref
        }
        else if (*(tokens + ct).type == 275 || *(tokens + ct).type == 276)
        {
            Node *node = new_node(14);
            node->left = left
            left = node
            ct++
        }
        else if (*(tokens + ct).type == 46 || *(tokens + ct).type == 288)
        {
            Node *tmp = new_node(24);
            tmp->right = left
            Type *type = add_type(left);
            if (*(tokens + ct).type == 288 && !(type->t == 1 && type->ptr_to->t == 7))
            {
                error_token(&(*(tokens + ct)), "expected struct pointer")
            }

            if (*(tokens + ct).type == 288)
                type = type->ptr_to

            if (type->t != 7)
                error_token(&(*(tokens + ct)), "expected struct type")

            ct++
            int i = 0;
            for (; i < type->field_count ;i++)
            {
                if (!(strcmp(*(type->field_name + i), *(tokens + ct).name)))
                    break ;

            }

            if (i == type->field_count)
                error_token(&(*(tokens + ct)), "undeclared struct member")

            Type *char_ptr = new_type(1);
            char_ptr->ptr_to = type_char
            Node *addr = left;
            if (*(tokens + ct - 1).type == 46)
            {
                addr = new_node(17)
                addr->left = left
            }

            implicit_cast(&(addr), char_ptr)
            Node *add = new_node(5);
            add->tok = new_temp_token(43)
            add->left = addr
            add->right = new_node(4)
            add->right->tok = new_temp_token(256)
            add->right->tok->int_val = ((long)*(type->field_offset + i))
            Type *t = new_type(1);
            Node *node;
            if (*(type->field_type + i)->t == 3)
            {
                t = *(type->field_type + i)
                implicit_cast(&(add), t)
                node = add
            }
            else 
            {
                t->ptr_to = *(type->field_type + i)
                implicit_cast(&(add), t)
                node = new_node(16)
                node->left = add
            }

            tmp->left = node
            skip(257)
            left = tmp
        }
        else 
            break ;
    }

    return left;
}


function primary() -> Node*  (1796)
{
    Node *node = ((Node*)0);
    if (*(tokens + ct).type == 256)
    {
        node = new_node(4)
        ct++
    }
    else if (*(tokens + ct).type == 274)
    {
        node = new_node(19)
        ct++
    }
    else if (*(tokens + ct).type == 40)
    {
        ct++
        node = expr()
        skip(41)
    }
    else if (*(tokens + ct).type == 257 && *(tokens + ct + 1).type == 40)
    {
        node = new_node(13)
        node->func = find_func(*(tokens + ct).name)
        if (!(node->func))
            error_token(node->tok, "undeclared function \"%s\"", *(tokens + ct).name)

        ct += ct + 2
        int count = 0;
        while (*(tokens + ct).type != 41)
        {
            if (!(strcmp(node->tok->name, "ASSERT")) && *(tokens + ct).type == 123)
                *(node->args + count) = statement()
            else 
                *(node->args + count) = assign()
            count++
            if (*(tokens + ct).type == 44)
                ct++
            else if (*(tokens + ct).type != 41)
                skip(41)

        }

        ct++
        node->arg_count = count
    }
    else if (*(tokens + ct).type == 257)
    {
        Var *var = find_var(*(tokens + ct).name);
        if (!(var))
        {
            for (int i = 0; i < enum_count ;i++)
            {
                if (!(strcmp(*(tokens + ct).name, *(enums + i).name)))
                {
                    node = new_node(4)
                    ct++
                    node->tok = new_temp_token(256)
                    node->tok->int_val = ((long)*(enums + i).value)
                    return node;
                }

            }

            error_token(&(*(tokens + ct)), "undeclared variable `%s`\n", *(tokens + ct).name)
        }

        node = new_node(2)
        node->var = var
        ct++
    }
    else 
        error_token(&(*(tokens + ct)), "expected an expression")
    return node;
}


function get_inst_suffix(int size) -> char*  (1867)
{
    if (size == 1)
        return "b";
    else if (size == 2)
        return "w";
    else if (size == 4)
        return "l";
    else if (size == 8)
        return "q";

    
}


function get_size_name(int size) -> char*  (1880)
{
    if (size == 1)
        return "byte";
    else if (size == 2)
        return "short";
    else if (size == 4)
        return "long";
    else if (size == 8)
        return "quad";

    
}


function log2_int(int x) -> int  (1893)
{
    int y = 0;
    while (x > 1)
    {
        x /= x / 2
        y++
    }

    return y;
}


function get_register_by_size(char* reg, int size) -> char*  (1904)
{
    char ***(rax + 0) = "al", *(rax + 1) = "ax", *(rax + 2) = "eax", *(rax + 3) = "rax";
    char ***(rdx + 0) = "dh", *(rdx + 1) = "dx", *(rdx + 2) = "edx", *(rdx + 3) = "rdx";
    char ***(rcx + 0) = "ch", *(rcx + 1) = "cx", *(rcx + 2) = "ecx", *(rcx + 3) = "rcx";
    char ***(rdi + 0) = "dil", *(rdi + 1) = "di", *(rdi + 2) = "edi", *(rdi + 3) = "rdi";
    char ***(rsi + 0) = "sil", *(rsi + 1) = "si", *(rsi + 2) = "esi", *(rsi + 3) = "rsi";
    char ***(r8 + 0) = "r8b", *(r8 + 1) = "r8w", *(r8 + 2) = "r8d", *(r8 + 3) = "r8";
    char ***(r9 + 0) = "r9b", *(r9 + 1) = "r9w", *(r9 + 2) = "r9d", *(r9 + 3) = "r9";
    char ***(r10 + 0) = "r10b", *(r10 + 1) = "r10w", *(r10 + 2) = "r10d", *(r10 + 3) = "r10";
    char ***(r11 + 0) = "r11b", *(r11 + 1) = "r11w", *(r11 + 2) = "r11d", *(r11 + 3) = "r11";
    size = log2_int(size)
    if (!(strcmp(reg, "rax")))
        return *(rax + size);

    if (!(strcmp(reg, "rdx")))
        return *(rdx + size);

    if (!(strcmp(reg, "rcx")))
        return *(rcx + size);

    if (!(strcmp(reg, "rdi")))
        return *(rdi + size);

    if (!(strcmp(reg, "rsi")))
        return *(rsi + size);

    if (!(strcmp(reg, "r8")))
        return *(r8 + size);

    if (!(strcmp(reg, "r9")))
        return *(r9 + size);

    if (!(strcmp(reg, "r10")))
        return *(r10 + size);

    if (!(strcmp(reg, "r11")))
        return *(r11 + size);

    
}


function add_string_lit(char* s) -> int  (1939)
{
    for (int i = 0; i < strings_literal_count ;i++)
    {
        if (!(strcmp(s, *(strings_literal + i))))
            return i;

    }

    *(strings_literal + strings_literal_count) = s
    return strings_literal_count++;
}


int curr_label = 0;

int loop_counter = 0;

int curr_loop_label;

int curr_loop_is_for;

int stack_size = 0;

function push(char* reg) -> void  (1959)
{
    stack_size += stack_size + 8
    out("pushq %%%s // %d", reg, stack_size)
}


function pop(char* reg) -> void  (1965)
{
    stack_size -= stack_size - 8
    out("popq %%%s // %d", reg, stack_size)
    
}


function gen(Node* node) -> void  (1972)
{
    if (!(node) || node->type == 0)
        return ;

    if (node->type == 1)
    {
        Node *curr = node->next_stmt;
        while (curr)
        {
            gen(curr)
            curr = curr->next_stmt
        }

    }
    else if (node->type == 15)
    {
        if (!(node->body))
            return ;

        if (!(strcmp(node->tok->name, "main")))
            fprintf(f, ".globl\t_main\n")

        stack_size = 0
        dbg("//%s %s(", get_type_str(node->func->ret_type), node->tok->name)
        for (int i = 0; i < node->param_count ;i++)
        {
            dbg("%s %s", get_type_str(*(node->params + i)->var->type), *(node->params + i)->var->name)
            if (i < node->param_count - 1)
                dbg(", ")

        }

        dbg(")\n")
        fprintf(f, "_%s:\n", node->tok->name)
        out("pushq %%rbp")
        out("movq %%rsp, %%rbp")
        stack_size = node->stack_size
        out("subq $%d, %%rsp // %d", node->stack_size, stack_size)
        char ***(reg + 0) = "rdi", *(reg + 1) = "rsi", *(reg + 2) = "rdx", *(reg + 3) = "rcx", *(reg + 4) = "r8", *(reg + 5) = "r9";
        for (int i = 0; i < node->param_count && i < 6 ;i++)
        {
            Var *v = *(node->params + i)->var;
            out("mov%s %%%s, -%d(%%rbp) //%s", get_inst_suffix(v->type->size), get_register_by_size(*(reg + i), v->type->size), v->offset, v->name)
        }

        if (node->param_count > 6)
        {
            int offset = *(node->params + 5)->var->offset + 8;
            int offset2 = 16;
            for (int i = 6; i < node->param_count ;i++)
            {
                out("movq %d(%%rbp), %%rax", offset2)
                out("mov%s %%%s, -%d(%%rbp) // %s", get_inst_suffix(*(node->params + i)->var->type->size), get_register_by_size("rax", *(node->params + i)->var->type->size), *(node->params + i)->var->offset, *(node->params + i)->var->name)
                offset += offset + 8
                offset2 += offset2 + 8
            }

        }

        gen(node->body)
        stack_size -= stack_size - node->stack_size
        out("addq $%d, %%rsp // %d", node->stack_size, stack_size)
        out("movq $0, %%rax")
        out("movq %%rbp, %%rsp")
        out("popq %%rbp")
        out("ret\n")
    }
    else if (node->type == 12)
    {
        Node *curr = node->first_stmt;
        dbg("//{ (%d)\n", node->tok->line)
        while (curr)
        {
            gen(curr)
            curr = curr->next_in_block
        }

        dbg("//}\n")
    }
    else if (node->type == 24)
    {
        gen(node->left)
    }
    else if (node->type == 18)
    {
        Node *curr = node->next_in_decl;
        while (curr)
        {
            if (curr->var->global)
            {
            }
            else if (!(curr->var->global) && curr->left)
                gen(curr->left)

            curr = curr->next_in_decl
        }

    }
    else if (node->type == 8)
    {
        gen(node->left)
        out("movq %%rbp, %%rsp")
        out("popq %%rbp")
        out("ret")
    }
    else if (node->type == 9)
    {
        int label = curr_label++;
        fprintf(f, "//if begin\n")
        gen(node->condition)
        out("cmpq $0, %%rax")
        out("je ELSE%d", label)
        gen(node->body)
        out("jmp END_IF%d", label)
        fprintf(f, "ELSE%d:\n", label)
        if (node->else_)
            gen(node->else_)

        fprintf(f, "END_IF%d:\n", label)
    }
    else if (node->type == 10)
    {
        int label = curr_label++;
        fprintf(f, "WHILE%d:\n", label)
        gen(node->condition)
        out("cmpq $0, %%rax")
        out("je WHILE_END%d", label)
        loop_counter++
        int s1 = curr_loop_label;
        int s2 = curr_loop_is_for;
        curr_loop_label = label
        curr_loop_is_for = 0
        gen(node->body)
        curr_loop_label = s1
        curr_loop_is_for = s2
        loop_counter++
        out("jmp WHILE%d", label)
        fprintf(f, "WHILE_END%d:\n", label)
    }
    else if (node->type == 11)
    {
        int label = curr_label++;
        fprintf(f, "//for init\n")
        gen(node->init)
        fprintf(f, "FOR%d:\n", label)
        if (node->condition)
        {
            gen(node->condition)
            out("cmpq $0, %%rax")
            out("je FOR_END%d", label)
        }

        loop_counter++
        int s1 = curr_loop_label;
        int s2 = curr_loop_is_for;
        curr_loop_label = label
        curr_loop_is_for = 1
        gen(node->body)
        loop_counter++
        curr_loop_label = s1
        curr_loop_is_for = s2
        fprintf(f, "FOR_INC%d:\n", label)
        gen(node->inc)
        out("jmp FOR%d", label)
        fprintf(f, "FOR_END%d:\n", label)
    }
    else if (node->type == 4)
    {
        if (node->t->t == 6)
            out("movabsq $%lld, %%rax", node->tok->int_val)
        else 
            out("movq $%lld, %%rax", node->tok->int_val)
    }
    else if (node->type == 19)
    {
        int id = add_string_lit(node->tok->name);
        out("leaq L_.str.%d(%%rip), %%rax", id)
    }
    else if (node->type == 2)
    {
        if (node->t->t == 3 || node->t->t == 7)
        {
            if (node->var->global)
            {
                out("movq _%s@GOTPCREL(%%rip), %%rax", node->var->name)
            }
            else 
            {
                out("movq %%rbp, %%rax // %s", node->var->name)
                out("subq $%d, %%rax", node->var->offset)
            }

        }
        else if (node->t->t == 8)
        {
            out("leaq _%s(%%rip), %%rax", node->tok->name)
        }
        else 
        {
            if (node->var->global)
            {
                if (node->t->is_unsigned)
                {
                    if (node->t->size < 4)
                        out("movz%sq _%s(%%rip), %%rax // %s", get_inst_suffix(node->t->size), node->var->name, node->var->name)
                    else 
                        out("mov%s _%s(%%rip), %%%s // %s", get_inst_suffix(node->t->size), node->var->name, get_register_by_size("rax", node->t->size), node->var->name)
                }
                else 
                {
                    if (node->t->size < 8)
                    {
                        out("movs%sq _%s(%%rip), %%rax", get_inst_suffix(node->t->size), node->var->name)
                    }
                    else 
                        out("movq _%s(%%rip), %%rax", node->var->name)
                }

            }
            else 
            {
                if (node->t->is_unsigned)
                {
                    if (node->t->size < 4)
                        out("movz%sq -%d(%%rbp), %%rax // %s", get_inst_suffix(node->t->size), node->var->offset, node->var->name)
                    else 
                        out("mov%s -%d(%%rbp), %%%s // %s", get_inst_suffix(node->t->size), node->var->offset, get_register_by_size("rax", node->t->size), node->var->name)
                }
                else 
                {
                    if (node->t->size < 8)
                    {
                        out("movs%sq -%d(%%rbp), %%rax // %s", get_inst_suffix(node->t->size), node->var->offset, node->var->name)
                    }
                    else 
                        out("movq -%d(%%rbp), %%rax // %s", node->var->offset, node->var->name)
                }

            }

        }

    }
    else if (node->type == 13)
    {
        if (!(strcmp(node->tok->name, "ASSERT")))
        {
            int label = curr_label++;
            char *s2 = node->tok->str;
            while (((int)*(s2)) != 10)
                s2++

            fprintf(f, "//%.*s", ((int)s2 - node->tok->str + 1), node->tok->str)
            gen(*(node->args + 0))
            out("movq %%rax, %%r12")
            gen(*(node->args + 1))
            out("cmpq %%r12, %%rax")
            out("je ASSERT_OK%d", label)
            out("movq $%d, %%rdi", node->tok->line)
            out("movq %%r12, %%rsi", node->tok->line)
            out("movq %%rax, %%rdx", node->tok->line)
            out("callq _error")
            fprintf(f, "ASSERT_OK%d:\n", label)
        }
        else 
        {
            char ***(reg + 0) = "rdi", *(reg + 1) = "rsi", *(reg + 2) = "rdx", *(reg + 3) = "rcx", *(reg + 4) = "r8", *(reg + 5) = "r9";
            dbg("//call %s\n", node->tok->name)
            for (int i = 0; i < node->arg_count && i < 6 ;i++)
            {
                gen(*(node->args + i))
                push("rax")
            }

            for (int i = 0; i < node->arg_count && i < 6 ;i++)
            {
                int last = node->arg_count;
                if (last > 6)
                    last = 6

                pop(*(reg + last - i - 1))
            }

            int s = stack_size;
            if (node->arg_count > 6)
                s += s + node->arg_count - 6 * 8

            int target = align(s, 16);
            
            out("subq $%d, %%rsp // %d", target - s, stack_size + target - s)
            stack_size += stack_size + target - s
            for (int i = node->arg_count - 1; i >= 6 ;i++)
            {
                gen(*(node->args + i))
                push("rax")
            }

            out("xorq %%rax, %%rax")
            
            out("callq _%s", node->tok->name)
            int add = target - s;
            if (node->arg_count > 6)
                add += add + node->arg_count - 6 * 8

            stack_size -= stack_size - add
            out("addq $%d, %%rsp // %d", add, stack_size)
        }

    }
    else if (node->type == 17)
    {
        if (node->left->type == 24)
            node->left = node->left->left

        if (node->left->type == 16)
        {
            gen(node->left->left)
        }
        else if (node->left->type == 2)
        {
            if (node->left->var->global)
            {
                out("movq _%s@GOTPCREL(%%rip), %%rax", node->left->var->name)
            }
            else 
            {
                out("movq %%rbp, %%rax // &%s", node->left->var->name)
                out("subq $%d, %%rax", node->left->var->offset)
            }

        }
        else if (node->left->type == 22)
        {
            node->left = node->left->left
            gen(node)
        }
        else 
            
    }
    else if (node->type == 16)
    {
        gen(node->left)
        if (!(node->left->t->ptr_to))
            error_token(node->tok, "dereferencing a non-pointer lvalue")

        if (node->t->t == 7)
            
        else if (node->t->size < 8)
            out("movs%sq (%%rax), %%rax", get_inst_suffix(node->t->size))
        else 
            out("movq (%%rax), %%rax")
    }
    else if (node->type == 7)
    {
        gen(node->left)
        if (node->left->t->ptr_to)
            error_token(node->tok, "negating a pointer")

        out("xorq %%r10, %%r10")
        out("subq %%rax, %%r10")
        out("movq %%r10, %%rax")
    }
    else if (node->type == 22)
    {
        dbg("//cast to (%s)\n", get_type_str(node->t))
        gen(node->left)
        Type *t1 = node->left->t;
        Type *t2 = node->t;
        if (node->t->t == 3)
        {
            t2 = new_type(1)
            t2->ptr_to = node->t->ptr_to
        }

        if (!(t1->is_unsigned) && !(t2->is_unsigned))
        {
            if (t2->size < t1->size)
            {
                out("movs%sq %%%s, %%r10", get_inst_suffix(t2->size), get_register_by_size("rax", t2->size))
                out("movq %%r10, %%rax")
            }
            else 
                
        }
        else if (t2->is_unsigned)
        {
            out("xorq %%r10, %%r10")
            out("mov%s %%%s, %%%s", get_inst_suffix(t2->size), get_register_by_size("rax", t2->size), get_register_by_size("r10", t2->size))
            out("movq %%r10, %%rax")
        }
        else 
        {
            if (t2->size < 8)
            {
                out("xorq %%r10, %%r10")
                out("mov%s %%%s, %%%s", get_inst_suffix(t2->size), get_register_by_size("rax", t2->size), get_register_by_size("r10", t2->size))
                out("movs%sq %%%s, %%rax", get_inst_suffix(t2->size), get_register_by_size("r10", t2->size))
            }

        }

    }
    else if (node->type == 5)
    {
        gen(node->left)
        if (type_match(node->tok->type, 258, 259, -(1)))
        {
            int label = curr_label++;
            int is_and = node->tok->type == 258;
            out("cmpq $0, %%rax")
            out("movq $%d, %%rax", !(is_and))
            out("j%se AND_OR%d", ((is_and) ? ("") : ("n"), label)
            gen(node->right)
            out("cmpq $0, %%rax")
            out("setne %%al")
            out("movzbq %%al, %%rax")
            fprintf(f, "AND_OR%d:\n", label)
        }
        else 
        {
            push("rax")
            gen(node->right)
            out("movq %%rax, %%r10")
            pop("rax")
            
            
            if (node->tok->type == 43 || node->tok->type == 45)
            {
                if (node->left->t->ptr_to && !(node->right->t->ptr_to))
                    out("imulq $%d, %%r10", node->left->t->ptr_to->size)
                else if (node->right->t->ptr_to && !(node->left->t->ptr_to) && node->tok->type == 43)
                    out("imulq $%d, %%rax", node->right->t->ptr_to->size)

            }

            if (node->tok->type == 43)
                out("addq %%r10, %%rax")
            else if (node->tok->type == 45)
                out("subq %%r10, %%rax")
            else if (node->tok->type == 42)
                out("imulq %%r10, %%rax")
            else if (node->tok->type == 47 || node->tok->type == 37)
            {
                if (!(node->t->is_unsigned))
                {
                    out("cqto")
                    out("idivq %%r10")
                }
                else 
                {
                    out("xorq %%rdx, %%rdx")
                    out("divq %%r10")
                }

                if (node->tok->type == 37)
                    out("movq %%rdx, %%rax")

            }
            else if (type_match(node->tok->type, 260, 261, 262, 263, 60, 62, -(1)))
            {
                char *s = "";
                if (node->tok->type == 260)
                    s = "e"
                else if (node->tok->type == 261)
                    s = "ne"
                else if (node->tok->type == 60)
                    s = "l"
                else if (node->tok->type == 62)
                    s = "g"
                else if (node->tok->type == 262)
                    s = "le"
                else if (node->tok->type == 263)
                    s = "ge"
                else 
                    
                out("cmpq %%r10, %%rax")
                out("set%s %%al", s)
                out("andb $1, %%al")
                out("movzbq %%al, %%rax")
            }

            if (node->left->t->ptr_to && node->right->t->ptr_to && node->tok->type == 45)
            {
                out("movq $%d, %%r10", node->left->t->ptr_to->size)
                out("xorq %%rdx, %%rdx")
                out("divq %%r10")
            }

        }

    }
    else if (node->type == 6)
    {
        if (node->left->type == 24)
            node->left = node->left->left

        if (node->left->type == 16)
        {
            gen(node->right)
            if (node->t->t == 7)
            {
                
                push("rax")
                gen(node->left)
                pop("rsi")
                out("movq %%rax, %%rdi")
                out("movq $%d, %%rdx", node->t->size)
                out("callq _memcpy")
            }
            else 
            {
                push("rax")
                gen(node->left->left)
                if (!(node->left->left->t->ptr_to))
                    error_token(node->tok, "dereferencing a non-pointer lvalue")

                pop("r10")
                out("mov%s %%%s, (%%rax)", get_inst_suffix(node->t->size), get_register_by_size("r10", node->t->size))
            }

        }
        else if (node->left->type == 2)
        {
            gen(node->right)
            node->left->t = node->left->var->type
            
            if (node->t->t == 3)
                error_token(node->tok, "array is constant")

            if (node->left->var->global)
            {
                if (node->t->t == 7)
                    

                out("mov%s %%%s, _%s(%%rip)", get_inst_suffix(node->t->size), get_register_by_size("rax", node->t->size), node->left->var->name)
            }
            else 
            {
                if (node->t->t == 7)
                {
                    
                    out("movq %%rbp, %%rdi")
                    out("subq $%d, %%rdi", node->left->var->offset)
                    out("movq %%rax, %%rsi")
                    out("movq $%d, %%rdx", node->left->var->type->size)
                    out("callq _memcpy")
                }
                else 
                {
                    out("mov%s %%%s, -%d(%%rbp) // %s = rax", get_inst_suffix(node->t->size), get_register_by_size("rax", node->t->size), node->left->var->offset, node->left->var->name)
                }

            }

        }
        else 
            
    }
    else if (node->type == 20)
    {
        if (!(loop_counter))
            error_token(node->tok, "'continue' statement not in loop statement")

        if (curr_loop_is_for)
            out("jmp FOR_INC%d", curr_loop_label)
        else 
            out("jmp WHILE%d", curr_loop_label)
    }
    else if (node->type == 21)
    {
        if (!(loop_counter))
            error_token(node->tok, "'break' statement not in loop statement")

        if (curr_loop_is_for)
            out("jmp FOR_END%d", curr_loop_label)
        else 
            out("jmp WHILE_END%d", curr_loop_label)
    }
    else if (node->type == 14)
    {
        gen(node->left)
        if (node->tok->type == 33)
        {
            out("cmpq $0, %%rax")
            out("setne %%al")
            out("xorb $-1, %%al")
            out("andb $1, %%al")
            out("movzbq %%al, %%rax")
        }
        else if (node->tok->type == 275 || node->tok->type == 276)
        {
            push("rax")
            Node *one = new_node(4);
            one->tok = new_temp_token(256)
            one->tok->int_val = ((long)((node->tok->type == 275) ? (1) : (-(1)))
            Node *assign = new_node(6);
            assign->tok = new_temp_token(61)
            assign->left = node->left
            assign->right = new_node(5)
            assign->right->tok = new_temp_token(43)
            assign->right->left = node->left
            assign->right->right = one
            add_type(assign)
            gen(assign)
            pop("rax")
        }
        else 
            
    }
    else if (node->type == 23)
    {
        int label = curr_label++;
        gen(node->condition)
        out("cmpq $0, %%rax")
        out("je QUES%d", label)
        gen(node->left)
        out("jmp QUES_END%d", label)
        fprintf(f, "QUES%d:\n", label)
        gen(node->right)
        fprintf(f, "QUES_END%d:\n", label)
    }
    else 
        
    if (node->next_in_comma)
        gen(node->next_in_comma)

}


int tab;

function print(Node* node) -> void  (2647)
{
    if (!(node))
        return ;

    if (!(node) || node->type == 0)
        return ;
    else if (node->type == 1)
    {
        Node *curr = node->next_stmt;
        while (curr)
        {
            print(curr)
            curr = curr->next_stmt
        }

    }
    else if (node->type == 15)
    {
        printf("\nfunction %s(", node->tok->name)
        for (int i = 0; i < node->param_count ;i++)
        {
            printf("%s %s", get_type_str(*(node->params + i)->var->type), *(node->params + i)->var->name)
            if (i < node->param_count - 1)
                printf(", ")

        }

        printf(") -> %s  (%d)\n", get_type_str(node->func->ret_type), node->tok->line)
        print(node->body)
        printf("\n")
    }
    else if (node->type == 12)
    {
        printf("%*s{\n", tab, "")
        tab += tab + 4
        Node *curr = node->first_stmt;
        while (curr)
        {
            printf("%*s", tab, "")
            print(curr)
            printf("\n")
            curr = curr->next_in_block
        }

        tab -= tab - 4
        printf("%*s}\n", tab, "")
    }
    else if (node->type == 18)
    {
        Node *curr = node->next_in_decl;
        if (curr->var->global)
            printf("\n")

        printf("%s ", get_type_str(node->decl_type))
        while (curr)
        {
            Type *t = curr->var->type;
            while (t != node->decl_type)
            {
                t = t->ptr_to
                printf("*")
            }

            if (!(curr->left))
                printf("%s", curr->var->name)
            else 
                print(curr->left)
            if (curr->next_in_decl)
                printf(", ")
            else 
                printf(";")
            if (curr->var->global)
                printf("\n")

            curr = curr->next_in_decl
        }

    }
    else if (node->type == 8)
    {
        printf("return ")
        if (node->left)
            print(node->left)

        printf(";")
    }
    else if (node->type == 9 || node->type == 10)
    {
        printf("%s (", token_type_name(node->tok->type))
        print(node->condition)
        printf(")\n")
        if (node->body->type != 12)
            printf("%*s", tab + 4, "")

        print(node->body)
        if (node->body->type != 12)
            printf("\n")

        if (node->else_)
        {
            printf("%*selse ", tab, "")
            if (node->else_->type != 9)
            {
                printf("\n")
                if (node->else_->type != 12)
                    printf("%*s", tab + 4, "")

            }

            print(node->else_)
        }

    }
    else if (node->type == 11)
    {
        printf("for (")
        print(node->init)
        if (!(node->init) || node->init->type != 18)
            printf(";")

        printf(" ")
        print(node->condition)
        printf(" ;")
        print(node->inc)
        printf(")\n")
        if (node->body->type != 12)
            printf("%*s", tab + 4, "")

        print(node->body)
    }
    else if (node->type == 24)
    {
        print(node->right)
        printf("%s", token_type_name(node->tok->type))
        printf("%s", node->tok + 1->name)
    }
    else if (node->type == 4)
        printf("%lld", node->tok->int_val)
    else if (node->type == 2)
        printf("%s", node->var->name)
    else if (node->type == 19)
        printf("\"%s\"", node->tok->name)
    else if (node->type == 13)
    {
        printf("%s(", node->tok->name)
        for (int i = 0; i < node->arg_count ;i++)
        {
            print(*(node->args + i))
            if (i < node->arg_count - 1)
                printf(", ")

        }

        printf(")")
    }
    else if (node->type == 17 || node->type == 16 || node->type == 7)
    {
        printf("%c(", node->tok->type)
        print(node->left)
        printf(")")
    }
    else if (node->type == 22)
    {
        printf("((%s)", get_type_str(node->t))
        print(node->left)
        printf(")")
    }
    else if (node->type == 5)
    {
        print(node->left)
        printf(" %s ", token_type_name(node->tok->type))
        print(node->right)
    }
    else if (node->type == 6)
    {
        print(node->left)
        printf(" %s ", token_type_name(node->tok->type))
        print(node->right)
    }
    else if (node->type == 20)
        printf("continue ;")
    else if (node->type == 21)
        printf("break ;")
    else if (node->type == 14)
    {
        if (node->tok->type == 33)
        {
            printf("!(")
            print(node->left)
            printf(")")
        }
        else 
        {
            print(node->left)
            printf("++")
        }

    }
    else if (node->type == 23)
    {
        printf("((")
        print(node->condition)
        printf(") ? (")
        print(node->left)
        printf(") : (")
        print(node->right)
        printf(")")
    }

    if (node->next_in_comma)
    {
        printf(", ")
        print(node->next_in_comma)
    }

}


function read_entire_file(char* name) -> char*  (2847)
{
    char *buffer = ((char*)0);
    long length;
    FILE *file = fopen(name, "r");
    if (file)
    {
        fseek(file, 0, 2)
        length = ftell(file)
        fseek(file, 0, 0)
        buffer = ((char*)malloc(length + ((long)1)))
        if (buffer)
            fread(buffer, 1, length, file)

        *(buffer + length) = ((char)0)
        fclose(file)
    }

    return buffer;
}


function main() -> int  (2866)
{
    filename = "final.c"
    type_long = new_type(6)
    type_int = new_type(0)
    type_short = new_type(4)
    type_char = new_type(5)
    type_void = new_type(2)
    program_str = read_entire_file(filename)
    Node *node = parse(program_str);
    char *out_name = strdup(filename);
    *(out_name + strlen(out_name) - 1) = ((char)115)
    f = fopen(out_name, "w")
    
    print(node)
    gen(node)
    out(".section	__DATA,__data")
    for (int i = 0; i < curr_scope->var_count ;i++)
    {
        Node *decl = *(curr_scope->vars + i)->decl;
        if (decl->left && decl->left->right->type != 4)
        {
            printf("error name: %s %c\n", decl->var->name, decl->left->tok->type)
            error_token(decl->left->tok, "todo: evaluate constant expressions\n")
        }

        if (decl->var->type->t == 3)
        {
            out(".comm _%s,%d,%d\n", decl->var->name, decl->var->type->array_size * decl->var->type->size, 4)
        }
        else 
        {
            out(".globl _%s", decl->var->name)
            int align = log2_int(decl->var->type->size);
            if (align)
                out(".p2align %d", align)

            fprintf(f, "_%s:\n", *(curr_scope->vars + i)->name)
            out(".%s %d\n", get_size_name(*(curr_scope->vars + i)->type->size), ((!(decl->left)) ? (((long)0)) : (decl->left->right->tok->int_val))
        }

    }

    for (int i = 0; i < strings_literal_count ;i++)
    {
        fprintf(f, "L_.str.%d:\n", i)
        out(".asciz \"%s\"", *(strings_literal + i))
    }

}

