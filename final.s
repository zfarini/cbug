//char* token_type_name(int type)
_token_type_name:
	pushq %rbp
	movq %rsp, %rbp
	subq $12, %rsp // 12
	movl %edi, -4(%rbp) //type
//{ (292)
//if begin
	movslq -4(%rbp), %rax // type
	pushq %rax // 20
	movq $256, %rax
	movq %rax, %r10
	popq %rax // 12
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE0
	leaq L_.str.0(%rip), %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF0
ELSE0:
//if begin
	movslq -4(%rbp), %rax // type
	pushq %rax // 20
	movq $257, %rax
	movq %rax, %r10
	popq %rax // 12
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE1
	leaq L_.str.1(%rip), %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF1
ELSE1:
//if begin
	movslq -4(%rbp), %rax // type
	pushq %rax // 20
	movq $274, %rax
	movq %rax, %r10
	popq %rax // 12
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE2
	leaq L_.str.2(%rip), %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF2
ELSE2:
//if begin
	movslq -4(%rbp), %rax // type
	pushq %rax // 20
	movq $255, %rax
	movq %rax, %r10
	popq %rax // 12
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE3
//{ (300)
//if begin
	movq _token_type_name_c@GOTPCREL(%rip), %rax
	pushq %rax // 20
	movslq -4(%rbp), %rax // type
	movq %rax, %r10
	popq %rax // 12
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE4
//{ (302)
//cast to (char*)
//call malloc
	movq $2, %rax
	pushq %rax // 20
	popq %rdi // 12
	subq $4, %rsp // 16
	xorq %rax, %rax
	callq _malloc
	addq $4, %rsp // 12
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 20
	movq _token_type_name_c@GOTPCREL(%rip), %rax
	pushq %rax // 28
	movslq -4(%rbp), %rax // type
	movq %rax, %r10
	popq %rax // 20
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 12
	movq %r10, (%rax)
//cast to (char)
	movslq -4(%rbp), %rax // type
	movsbq %al, %r10
	movq %r10, %rax
	pushq %rax // 20
	movq _token_type_name_c@GOTPCREL(%rip), %rax
	pushq %rax // 28
	movslq -4(%rbp), %rax // type
	movq %rax, %r10
	popq %rax // 20
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 28
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 20
	imulq $1, %r10
	addq %r10, %rax
	popq %r10 // 12
	movb %r10b, (%rax)
//cast to (char)
	movq $0, %rax
	movsbq %al, %r10
	movq %r10, %rax
	pushq %rax // 20
	movq _token_type_name_c@GOTPCREL(%rip), %rax
	pushq %rax // 28
	movslq -4(%rbp), %rax // type
	movq %rax, %r10
	popq %rax // 20
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 28
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 20
	imulq $1, %r10
	addq %r10, %rax
	popq %r10 // 12
	movb %r10b, (%rax)
//}
	jmp END_IF4
ELSE4:
END_IF4:
	movq _token_type_name_c@GOTPCREL(%rip), %rax
	pushq %rax // 20
	movslq -4(%rbp), %rax // type
	movq %rax, %r10
	popq %rax // 12
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	popq %rbp
	ret
//}
	jmp END_IF3
ELSE3:
//{ (310)
//for init
	movq $0, %rax
	movl %eax, -8(%rbp) // i = rax
FOR5:
//cast to (char**)
//cast to (char*)
	movq _multi_char_tokens_type@GOTPCREL(%rip), %rax
	pushq %rax // 20
	movslq -8(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 12
	imulq $16, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 20
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 12
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	cmpq $0, %rax
	je FOR_END5
//{ (312)
//if begin
//cast to (int*)
//cast to (char*)
	movq _multi_char_tokens_type@GOTPCREL(%rip), %rax
	pushq %rax // 20
	movslq -8(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 12
	imulq $16, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 20
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 12
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 20
	movslq -4(%rbp), %rax // type
	movq %rax, %r10
	popq %rax // 12
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE6
//cast to (char**)
//cast to (char*)
	movq _multi_char_tokens_type@GOTPCREL(%rip), %rax
	pushq %rax // 20
	movslq -8(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 12
	imulq $16, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 20
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 12
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF6
ELSE6:
END_IF6:
//}
FOR_INC5:
	movslq -8(%rbp), %rax // i
	pushq %rax // 20
	movslq -8(%rbp), %rax // i
	pushq %rax // 28
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 20
	addq %r10, %rax
	movl %eax, -8(%rbp) // i = rax
	popq %rax // 12
	jmp FOR5
FOR_END5:
//for init
	movq $0, %rax
	movl %eax, -12(%rbp) // i = rax
FOR7:
//cast to (char**)
//cast to (char*)
	movq _keywords@GOTPCREL(%rip), %rax
	pushq %rax // 20
	movslq -12(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 12
	imulq $16, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 20
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 12
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	cmpq $0, %rax
	je FOR_END7
//{ (317)
//if begin
//cast to (int*)
//cast to (char*)
	movq _keywords@GOTPCREL(%rip), %rax
	pushq %rax // 20
	movslq -12(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 12
	imulq $16, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 20
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 12
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 20
	movslq -4(%rbp), %rax // type
	movq %rax, %r10
	popq %rax // 12
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE8
//cast to (char**)
//cast to (char*)
	movq _keywords@GOTPCREL(%rip), %rax
	pushq %rax // 20
	movslq -12(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 12
	imulq $16, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 20
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 12
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF8
ELSE8:
END_IF8:
//}
FOR_INC7:
	movslq -12(%rbp), %rax // i
	pushq %rax // 20
	movslq -12(%rbp), %rax // i
	pushq %rax // 28
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 20
	addq %r10, %rax
	movl %eax, -12(%rbp) // i = rax
	popq %rax // 12
	jmp FOR7
FOR_END7:
//}
END_IF3:
END_IF2:
END_IF1:
END_IF0:
//}
	addq $12, %rsp // 0
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

//Token* new_temp_token(int type)
_new_temp_token:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp // 16
	movl %edi, -4(%rbp) //type
//{ (326)
//cast to (Token*)
//call calloc
	movq $40, %rax
	pushq %rax // 24
	movq $1, %rax
	pushq %rax // 32
	popq %rsi // 24
	popq %rdi // 16
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _calloc
	addq $0, %rsp // 16
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq %rax, -16(%rbp) // t = rax
	movslq -4(%rbp), %rax // type
	pushq %rax // 24
//cast to (int*)
//cast to (char*)
	movq -16(%rbp), %rax // t
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 32
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 24
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 16
	movl %r10d, (%rax)
	movq $1, %rax
	xorq %r10, %r10
	subq %rax, %r10
	movq %r10, %rax
	pushq %rax // 24
//cast to (int*)
//cast to (char*)
	movq -16(%rbp), %rax // t
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 32
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 24
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 16
	movl %r10d, (%rax)
	movq $1, %rax
	xorq %r10, %r10
	subq %rax, %r10
	movq %r10, %rax
	pushq %rax // 24
//cast to (int*)
//cast to (char*)
	movq -16(%rbp), %rax // t
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 32
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 24
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 16
	movl %r10d, (%rax)
	movq -16(%rbp), %rax // t
	movq %rbp, %rsp
	popq %rbp
	ret
//}
	addq $16, %rsp // 0
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

//char get_backspace_char(char c)
_get_backspace_char:
	pushq %rbp
	movq %rsp, %rbp
	subq $1, %rsp // 1
	movb %dil, -1(%rbp) //c
//{ (335)
//if begin
//cast to (int)
	movsbq -1(%rbp), %rax // c
	pushq %rax // 9
	movq $110, %rax
	movq %rax, %r10
	popq %rax // 1
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE9
	movq $10, %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF9
ELSE9:
END_IF9:
//if begin
//cast to (int)
	movsbq -1(%rbp), %rax // c
	pushq %rax // 9
	movq $116, %rax
	movq %rax, %r10
	popq %rax // 1
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE10
	movq $9, %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF10
ELSE10:
END_IF10:
//if begin
//cast to (int)
	movsbq -1(%rbp), %rax // c
	pushq %rax // 9
	movq $114, %rax
	movq %rax, %r10
	popq %rax // 1
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE11
	movq $13, %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF11
ELSE11:
END_IF11:
//if begin
//cast to (int)
	movsbq -1(%rbp), %rax // c
	pushq %rax // 9
	movq $118, %rax
	movq %rax, %r10
	popq %rax // 1
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE12
	movq $11, %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF12
ELSE12:
END_IF12:
//if begin
//cast to (int)
	movsbq -1(%rbp), %rax // c
	pushq %rax // 9
	movq $102, %rax
	movq %rax, %r10
	popq %rax // 1
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE13
	movq $12, %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF13
ELSE13:
END_IF13:
//if begin
//cast to (int)
	movsbq -1(%rbp), %rax // c
	pushq %rax // 9
	movq $97, %rax
	movq %rax, %r10
	popq %rax // 1
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE14
	movq $7, %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF14
ELSE14:
END_IF14:
//if begin
//cast to (int)
	movsbq -1(%rbp), %rax // c
	pushq %rax // 9
	movq $98, %rax
	movq %rax, %r10
	popq %rax // 1
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE15
	movq $8, %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF15
ELSE15:
END_IF15:
	movsbq -1(%rbp), %rax // c
	movq %rbp, %rsp
	popq %rbp
	ret
//}
	addq $1, %rsp // 0
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

//void add_multi_char_token(char* name, int type)
_add_multi_char_token:
	pushq %rbp
	movq %rsp, %rbp
	subq $12, %rsp // 12
	movq %rdi, -8(%rbp) //name
	movl %esi, -12(%rbp) //type
//{ (350)
	movq -8(%rbp), %rax // name
	pushq %rax // 20
//cast to (char**)
//cast to (char*)
	movq _multi_char_tokens_type@GOTPCREL(%rip), %rax
	pushq %rax // 28
	movslq _multi_char_token_count(%rip), %rax
	movq %rax, %r10
	popq %rax // 20
	imulq $16, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 28
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 20
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 12
	movq %r10, (%rax)
	movslq -12(%rbp), %rax // type
	pushq %rax // 20
//cast to (int*)
//cast to (char*)
	movq _multi_char_tokens_type@GOTPCREL(%rip), %rax
	pushq %rax // 28
	movslq _multi_char_token_count(%rip), %rax
	movq %rax, %r10
	popq %rax // 20
	imulq $16, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 28
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 20
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 12
	movl %r10d, (%rax)
	movslq _multi_char_token_count(%rip), %rax
	pushq %rax // 20
	movslq _multi_char_token_count(%rip), %rax
	pushq %rax // 28
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 20
	addq %r10, %rax
	movl %eax, _multi_char_token_count(%rip)
	popq %rax // 12
//}
	addq $12, %rsp // 0
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

//void add_keyword(char* name, int type)
_add_keyword:
	pushq %rbp
	movq %rsp, %rbp
	subq $12, %rsp // 12
	movq %rdi, -8(%rbp) //name
	movl %esi, -12(%rbp) //type
//{ (357)
	movq -8(%rbp), %rax // name
	pushq %rax // 20
//cast to (char**)
//cast to (char*)
	movq _keywords@GOTPCREL(%rip), %rax
	pushq %rax // 28
	movslq _keyword_count(%rip), %rax
	movq %rax, %r10
	popq %rax // 20
	imulq $16, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 28
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 20
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 12
	movq %r10, (%rax)
	movslq -12(%rbp), %rax // type
	pushq %rax // 20
//cast to (int*)
//cast to (char*)
	movq _keywords@GOTPCREL(%rip), %rax
	pushq %rax // 28
	movslq _keyword_count(%rip), %rax
	movq %rax, %r10
	popq %rax // 20
	imulq $16, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 28
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 20
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 12
	movl %r10d, (%rax)
	movslq _keyword_count(%rip), %rax
	pushq %rax // 20
	movslq _keyword_count(%rip), %rax
	pushq %rax // 28
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 20
	addq %r10, %rax
	movl %eax, _keyword_count(%rip)
	popq %rax // 12
//}
	addq $12, %rsp // 0
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

//Token* tokenize(char* s)
_tokenize:
	pushq %rbp
	movq %rsp, %rbp
	subq $72, %rsp // 72
	movq %rdi, -8(%rbp) //s
//{ (364)
//call add_multi_char_token
	leaq L_.str.3(%rip), %rax
	pushq %rax // 80
	movq $260, %rax
	pushq %rax // 88
	popq %rsi // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _add_multi_char_token
	addq $8, %rsp // 72
//call add_multi_char_token
	leaq L_.str.4(%rip), %rax
	pushq %rax // 80
	movq $261, %rax
	pushq %rax // 88
	popq %rsi // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _add_multi_char_token
	addq $8, %rsp // 72
//call add_multi_char_token
	leaq L_.str.5(%rip), %rax
	pushq %rax // 80
	movq $262, %rax
	pushq %rax // 88
	popq %rsi // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _add_multi_char_token
	addq $8, %rsp // 72
//call add_multi_char_token
	leaq L_.str.6(%rip), %rax
	pushq %rax // 80
	movq $263, %rax
	pushq %rax // 88
	popq %rsi // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _add_multi_char_token
	addq $8, %rsp // 72
//call add_multi_char_token
	leaq L_.str.7(%rip), %rax
	pushq %rax // 80
	movq $258, %rax
	pushq %rax // 88
	popq %rsi // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _add_multi_char_token
	addq $8, %rsp // 72
//call add_multi_char_token
	leaq L_.str.8(%rip), %rax
	pushq %rax // 80
	movq $259, %rax
	pushq %rax // 88
	popq %rsi // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _add_multi_char_token
	addq $8, %rsp // 72
//call add_multi_char_token
	leaq L_.str.9(%rip), %rax
	pushq %rax // 80
	movq $275, %rax
	pushq %rax // 88
	popq %rsi // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _add_multi_char_token
	addq $8, %rsp // 72
//call add_multi_char_token
	leaq L_.str.10(%rip), %rax
	pushq %rax // 80
	movq $276, %rax
	pushq %rax // 88
	popq %rsi // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _add_multi_char_token
	addq $8, %rsp // 72
//call add_multi_char_token
	leaq L_.str.11(%rip), %rax
	pushq %rax // 80
	movq $282, %rax
	pushq %rax // 88
	popq %rsi // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _add_multi_char_token
	addq $8, %rsp // 72
//call add_multi_char_token
	leaq L_.str.12(%rip), %rax
	pushq %rax // 80
	movq $283, %rax
	pushq %rax // 88
	popq %rsi // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _add_multi_char_token
	addq $8, %rsp // 72
//call add_multi_char_token
	leaq L_.str.13(%rip), %rax
	pushq %rax // 80
	movq $284, %rax
	pushq %rax // 88
	popq %rsi // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _add_multi_char_token
	addq $8, %rsp // 72
//call add_multi_char_token
	leaq L_.str.14(%rip), %rax
	pushq %rax // 80
	movq $285, %rax
	pushq %rax // 88
	popq %rsi // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _add_multi_char_token
	addq $8, %rsp // 72
//call add_multi_char_token
	leaq L_.str.15(%rip), %rax
	pushq %rax // 80
	movq $288, %rax
	pushq %rax // 88
	popq %rsi // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _add_multi_char_token
	addq $8, %rsp // 72
//call add_multi_char_token
	movq $0, %rax
	pushq %rax // 80
	movq $0, %rax
	pushq %rax // 88
	popq %rsi // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _add_multi_char_token
	addq $8, %rsp // 72
//call add_keyword
	leaq L_.str.16(%rip), %rax
	pushq %rax // 80
	movq $264, %rax
	pushq %rax // 88
	popq %rsi // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _add_keyword
	addq $8, %rsp // 72
//call add_keyword
	leaq L_.str.17(%rip), %rax
	pushq %rax // 80
	movq $268, %rax
	pushq %rax // 88
	popq %rsi // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _add_keyword
	addq $8, %rsp // 72
//call add_keyword
	leaq L_.str.18(%rip), %rax
	pushq %rax // 80
	movq $267, %rax
	pushq %rax // 88
	popq %rsi // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _add_keyword
	addq $8, %rsp // 72
//call add_keyword
	leaq L_.str.19(%rip), %rax
	pushq %rax // 80
	movq $265, %rax
	pushq %rax // 88
	popq %rsi // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _add_keyword
	addq $8, %rsp // 72
//call add_keyword
	leaq L_.str.20(%rip), %rax
	pushq %rax // 80
	movq $266, %rax
	pushq %rax // 88
	popq %rsi // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _add_keyword
	addq $8, %rsp // 72
//call add_keyword
	leaq L_.str.0(%rip), %rax
	pushq %rax // 80
	movq $269, %rax
	pushq %rax // 88
	popq %rsi // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _add_keyword
	addq $8, %rsp // 72
//call add_keyword
	leaq L_.str.21(%rip), %rax
	pushq %rax // 80
	movq $270, %rax
	pushq %rax // 88
	popq %rsi // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _add_keyword
	addq $8, %rsp // 72
//call add_keyword
	leaq L_.str.22(%rip), %rax
	pushq %rax // 80
	movq $271, %rax
	pushq %rax // 88
	popq %rsi // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _add_keyword
	addq $8, %rsp // 72
//call add_keyword
	leaq L_.str.23(%rip), %rax
	pushq %rax // 80
	movq $272, %rax
	pushq %rax // 88
	popq %rsi // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _add_keyword
	addq $8, %rsp // 72
//call add_keyword
	leaq L_.str.24(%rip), %rax
	pushq %rax // 80
	movq $273, %rax
	pushq %rax // 88
	popq %rsi // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _add_keyword
	addq $8, %rsp // 72
//call add_keyword
	leaq L_.str.25(%rip), %rax
	pushq %rax // 80
	movq $279, %rax
	pushq %rax // 88
	popq %rsi // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _add_keyword
	addq $8, %rsp // 72
//call add_keyword
	leaq L_.str.26(%rip), %rax
	pushq %rax // 80
	movq $280, %rax
	pushq %rax // 88
	popq %rsi // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _add_keyword
	addq $8, %rsp // 72
//call add_keyword
	leaq L_.str.27(%rip), %rax
	pushq %rax // 80
	movq $277, %rax
	pushq %rax // 88
	popq %rsi // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _add_keyword
	addq $8, %rsp // 72
//call add_keyword
	leaq L_.str.28(%rip), %rax
	pushq %rax // 80
	movq $278, %rax
	pushq %rax // 88
	popq %rsi // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _add_keyword
	addq $8, %rsp // 72
//call add_keyword
	leaq L_.str.29(%rip), %rax
	pushq %rax // 80
	movq $281, %rax
	pushq %rax // 88
	popq %rsi // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _add_keyword
	addq $8, %rsp // 72
//call add_keyword
	leaq L_.str.24(%rip), %rax
	pushq %rax // 80
	movq $273, %rax
	pushq %rax // 88
	popq %rsi // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _add_keyword
	addq $8, %rsp // 72
//call add_keyword
	leaq L_.str.30(%rip), %rax
	pushq %rax // 80
	movq $286, %rax
	pushq %rax // 88
	popq %rsi // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _add_keyword
	addq $8, %rsp // 72
//call add_keyword
	leaq L_.str.31(%rip), %rax
	pushq %rax // 80
	movq $287, %rax
	pushq %rax // 88
	popq %rsi // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _add_keyword
	addq $8, %rsp // 72
//call add_keyword
	leaq L_.str.32(%rip), %rax
	pushq %rax // 80
	movq $289, %rax
	pushq %rax // 88
	popq %rsi // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _add_keyword
	addq $8, %rsp // 72
	movq $0, %rax
	movl %eax, -12(%rbp) // i = rax
	movq $0, %rax
	movl %eax, -16(%rbp) // j = rax
	movq $1, %rax
	movl %eax, -20(%rbp) // line = rax
	movq $1, %rax
	movl %eax, -24(%rbp) // col = rax
WHILE16:
	movq -8(%rbp), %rax // s
	pushq %rax // 80
	movslq -12(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 72
	imulq $1, %r10
	addq %r10, %rax
	movsbq (%rax), %rax
	cmpq $0, %rax
	je WHILE_END16
//{ (404)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 80
	movslq -16(%rbp), %rax // j
	movq %rax, %r10
	popq %rax // 72
	imulq $40, %r10
	addq %r10, %rax
	movq %rax, -32(%rbp) // token = rax
	movq $0, %rax
	pushq %rax // 80
//cast to (int*)
//cast to (char*)
	movq -32(%rbp), %rax // token
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 88
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 80
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 72
	movl %r10d, (%rax)
WHILE17:
//call isspace
	movq -8(%rbp), %rax // s
	pushq %rax // 80
	movslq -12(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 72
	imulq $1, %r10
	addq %r10, %rax
	movsbq (%rax), %rax
	pushq %rax // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _isspace
	addq $8, %rsp // 72
	cmpq $0, %rax
	je WHILE_END17
//{ (408)
//if begin
//cast to (int)
	movq -8(%rbp), %rax // s
	pushq %rax // 80
	movslq -12(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 72
	imulq $1, %r10
	addq %r10, %rax
	movsbq (%rax), %rax
	pushq %rax // 80
	movq $10, %rax
	movq %rax, %r10
	popq %rax // 72
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE18
//{ (410)
	movslq -20(%rbp), %rax // line
	pushq %rax // 80
	movslq -20(%rbp), %rax // line
	pushq %rax // 88
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 80
	addq %r10, %rax
	movl %eax, -20(%rbp) // line = rax
	popq %rax // 72
	movq $1, %rax
	movl %eax, -24(%rbp) // col = rax
//}
	jmp END_IF18
ELSE18:
	movslq -24(%rbp), %rax // col
	pushq %rax // 80
	movslq -24(%rbp), %rax // col
	pushq %rax // 88
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 80
	addq %r10, %rax
	movl %eax, -24(%rbp) // col = rax
	popq %rax // 72
END_IF18:
	movslq -12(%rbp), %rax // i
	pushq %rax // 80
	movslq -12(%rbp), %rax // i
	pushq %rax // 88
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 80
	addq %r10, %rax
	movl %eax, -12(%rbp) // i = rax
	popq %rax // 72
//}
	jmp WHILE17
WHILE_END17:
//if begin
	movq -8(%rbp), %rax // s
	pushq %rax // 80
	movslq -12(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 72
	imulq $1, %r10
	addq %r10, %rax
	movsbq (%rax), %rax
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE19
	jmp WHILE_END16
	jmp END_IF19
ELSE19:
END_IF19:
//if begin
//cast to (int)
	movq -8(%rbp), %rax // s
	pushq %rax // 80
	movslq -12(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 72
	imulq $1, %r10
	addq %r10, %rax
	movsbq (%rax), %rax
	pushq %rax // 80
	movq $35, %rax
	movq %rax, %r10
	popq %rax // 72
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE20
//{ (421)
WHILE21:
//cast to (int)
	movq -8(%rbp), %rax // s
	pushq %rax // 80
	movslq -12(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 72
	imulq $1, %r10
	addq %r10, %rax
	movsbq (%rax), %rax
	pushq %rax // 80
	movq $10, %rax
	movq %rax, %r10
	popq %rax // 72
	cmpq %r10, %rax
	setne %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je WHILE_END21
	movslq -12(%rbp), %rax // i
	pushq %rax // 80
	movslq -12(%rbp), %rax // i
	pushq %rax // 88
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 80
	addq %r10, %rax
	movl %eax, -12(%rbp) // i = rax
	popq %rax // 72
	jmp WHILE21
WHILE_END21:
	jmp WHILE16
//}
	jmp END_IF20
ELSE20:
//if begin
//cast to (int)
	movq -8(%rbp), %rax // s
	pushq %rax // 80
	movslq -12(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 72
	imulq $1, %r10
	addq %r10, %rax
	movsbq (%rax), %rax
	pushq %rax // 80
	movq $47, %rax
	movq %rax, %r10
	popq %rax // 72
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR23
//cast to (int)
	movq -8(%rbp), %rax // s
	pushq %rax // 80
	movslq -12(%rbp), %rax // i
	pushq %rax // 88
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 80
	addq %r10, %rax
	movq %rax, %r10
	popq %rax // 72
	imulq $1, %r10
	addq %r10, %rax
	movsbq (%rax), %rax
	pushq %rax // 80
	movq $47, %rax
	movq %rax, %r10
	popq %rax // 72
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR23:
	cmpq $0, %rax
	je ELSE22
//{ (427)
WHILE24:
//cast to (int)
	movq -8(%rbp), %rax // s
	pushq %rax // 80
	movslq -12(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 72
	imulq $1, %r10
	addq %r10, %rax
	movsbq (%rax), %rax
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR25
//cast to (int)
	movq -8(%rbp), %rax // s
	pushq %rax // 80
	movslq -12(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 72
	imulq $1, %r10
	addq %r10, %rax
	movsbq (%rax), %rax
	pushq %rax // 80
	movq $10, %rax
	movq %rax, %r10
	popq %rax // 72
	cmpq %r10, %rax
	setne %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR25:
	cmpq $0, %rax
	je WHILE_END24
	movslq -12(%rbp), %rax // i
	pushq %rax // 80
	movslq -12(%rbp), %rax // i
	pushq %rax // 88
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 80
	addq %r10, %rax
	movl %eax, -12(%rbp) // i = rax
	popq %rax // 72
	jmp WHILE24
WHILE_END24:
	jmp WHILE16
//}
	jmp END_IF22
ELSE22:
END_IF22:
END_IF20:
//if begin
//cast to (int)
	movq -8(%rbp), %rax // s
	pushq %rax // 80
	movslq -12(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 72
	imulq $1, %r10
	addq %r10, %rax
	movsbq (%rax), %rax
	pushq %rax // 80
	movq $47, %rax
	movq %rax, %r10
	popq %rax // 72
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR27
//cast to (int)
	movq -8(%rbp), %rax // s
	pushq %rax // 80
	movslq -12(%rbp), %rax // i
	pushq %rax // 88
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 80
	addq %r10, %rax
	movq %rax, %r10
	popq %rax // 72
	imulq $1, %r10
	addq %r10, %rax
	movsbq (%rax), %rax
	pushq %rax // 80
	movq $42, %rax
	movq %rax, %r10
	popq %rax // 72
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR27:
	cmpq $0, %rax
	je ELSE26
//{ (433)
	movslq -12(%rbp), %rax // i
	pushq %rax // 80
	movq $2, %rax
	movq %rax, %r10
	popq %rax // 72
	addq %r10, %rax
	movl %eax, -12(%rbp) // i = rax
WHILE28:
//cast to (int)
	movq -8(%rbp), %rax // s
	pushq %rax // 80
	movslq -12(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 72
	imulq $1, %r10
	addq %r10, %rax
	movsbq (%rax), %rax
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR29
//cast to (int)
	movq -8(%rbp), %rax // s
	pushq %rax // 80
	movslq -12(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 72
	imulq $1, %r10
	addq %r10, %rax
	movsbq (%rax), %rax
	pushq %rax // 80
	movq $42, %rax
	movq %rax, %r10
	popq %rax // 72
	cmpq %r10, %rax
	setne %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR30
//cast to (int)
	movq -8(%rbp), %rax // s
	pushq %rax // 80
	movslq -12(%rbp), %rax // i
	pushq %rax // 88
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 80
	addq %r10, %rax
	movq %rax, %r10
	popq %rax // 72
	imulq $1, %r10
	addq %r10, %rax
	movsbq (%rax), %rax
	pushq %rax // 80
	movq $47, %rax
	movq %rax, %r10
	popq %rax // 72
	cmpq %r10, %rax
	setne %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR30:
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR29:
	cmpq $0, %rax
	je WHILE_END28
	movslq -12(%rbp), %rax // i
	pushq %rax // 80
	movslq -12(%rbp), %rax // i
	pushq %rax // 88
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 80
	addq %r10, %rax
	movl %eax, -12(%rbp) // i = rax
	popq %rax // 72
	jmp WHILE28
WHILE_END28:
//if begin
	movq -8(%rbp), %rax // s
	pushq %rax // 80
	movslq -12(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 72
	imulq $1, %r10
	addq %r10, %rax
	movsbq (%rax), %rax
	cmpq $0, %rax
	je ELSE31
	movslq -12(%rbp), %rax // i
	pushq %rax // 80
	movq $2, %rax
	movq %rax, %r10
	popq %rax // 72
	addq %r10, %rax
	movl %eax, -12(%rbp) // i = rax
	jmp END_IF31
ELSE31:
//call error
	leaq L_.str.33(%rip), %rax
	pushq %rax // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _error
	addq $8, %rsp // 72
END_IF31:
	jmp WHILE16
//}
	jmp END_IF26
ELSE26:
END_IF26:
	movq -8(%rbp), %rax // s
	pushq %rax // 80
	movslq -12(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 72
	imulq $1, %r10
	addq %r10, %rax
	pushq %rax // 80
//cast to (char**)
//cast to (char*)
	movq -32(%rbp), %rax // token
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 88
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 80
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 72
	movq %r10, (%rax)
	movslq -20(%rbp), %rax // line
	pushq %rax // 80
//cast to (int*)
//cast to (char*)
	movq -32(%rbp), %rax // token
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 88
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 80
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 72
	movl %r10d, (%rax)
	movslq -24(%rbp), %rax // col
	pushq %rax // 80
//cast to (int*)
//cast to (char*)
	movq -32(%rbp), %rax // token
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 88
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 80
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 72
	movl %r10d, (%rax)
	movslq -12(%rbp), %rax // i
	movl %eax, -36(%rbp) // last = rax
//if begin
//call isdigit
	movq -8(%rbp), %rax // s
	pushq %rax // 80
	movslq -12(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 72
	imulq $1, %r10
	addq %r10, %rax
	movsbq (%rax), %rax
	pushq %rax // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _isdigit
	addq $8, %rsp // 72
	cmpq $0, %rax
	je ELSE32
//{ (449)
	movq $256, %rax
	pushq %rax // 80
//cast to (int*)
//cast to (char*)
	movq -32(%rbp), %rax // token
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 88
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 80
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 72
	movl %r10d, (%rax)
//cast to (long)
	movq $0, %rax
	pushq %rax // 80
//cast to (long*)
//cast to (char*)
	movq -32(%rbp), %rax // token
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 88
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 80
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 72
	movq %r10, (%rax)
WHILE33:
//call isdigit
	movq -8(%rbp), %rax // s
	pushq %rax // 80
	movslq -12(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 72
	imulq $1, %r10
	addq %r10, %rax
	movsbq (%rax), %rax
	pushq %rax // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _isdigit
	addq $8, %rsp // 72
	cmpq $0, %rax
	je WHILE_END33
//{ (454)
//cast to (long*)
//cast to (char*)
	movq -32(%rbp), %rax // token
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 80
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 72
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 80
//cast to (long)
	movq $10, %rax
	movq %rax, %r10
	popq %rax // 72
	imulq %r10, %rax
	pushq %rax // 80
//cast to (long)
//cast to (int)
	movq -8(%rbp), %rax // s
	pushq %rax // 88
	movslq -12(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 80
	imulq $1, %r10
	addq %r10, %rax
	movsbq (%rax), %rax
	pushq %rax // 88
	movq $48, %rax
	movq %rax, %r10
	popq %rax // 80
	subq %r10, %rax
	movq %rax, %r10
	popq %rax // 72
	addq %r10, %rax
	pushq %rax // 80
//cast to (long*)
//cast to (char*)
	movq -32(%rbp), %rax // token
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 88
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 80
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 72
	movq %r10, (%rax)
	movslq -12(%rbp), %rax // i
	pushq %rax // 80
	movslq -12(%rbp), %rax // i
	pushq %rax // 88
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 80
	addq %r10, %rax
	movl %eax, -12(%rbp) // i = rax
	popq %rax // 72
//}
	jmp WHILE33
WHILE_END33:
//}
	jmp END_IF32
ELSE32:
//if begin
//cast to (int)
	movq -8(%rbp), %rax // s
	pushq %rax // 80
	movslq -12(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 72
	imulq $1, %r10
	addq %r10, %rax
	movsbq (%rax), %rax
	pushq %rax // 80
	movq $39, %rax
	movq %rax, %r10
	popq %rax // 72
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE34
//{ (460)
	movslq -12(%rbp), %rax // i
	pushq %rax // 80
	movslq -12(%rbp), %rax // i
	pushq %rax // 88
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 80
	addq %r10, %rax
	movl %eax, -12(%rbp) // i = rax
	popq %rax // 72
	movq $256, %rax
	pushq %rax // 80
//cast to (int*)
//cast to (char*)
	movq -32(%rbp), %rax // token
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 88
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 80
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 72
	movl %r10d, (%rax)
//if begin
//cast to (int)
	movq -8(%rbp), %rax // s
	pushq %rax // 80
	movslq -12(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 72
	imulq $1, %r10
	addq %r10, %rax
	movsbq (%rax), %rax
	pushq %rax // 80
	movq $92, %rax
	movq %rax, %r10
	popq %rax // 72
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE35
//{ (464)
	movslq -12(%rbp), %rax // i
	pushq %rax // 80
	movslq -12(%rbp), %rax // i
	pushq %rax // 88
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 80
	addq %r10, %rax
	movl %eax, -12(%rbp) // i = rax
	popq %rax // 72
//cast to (long)
//call get_backspace_char
	movq -8(%rbp), %rax // s
	pushq %rax // 80
	movslq -12(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 72
	imulq $1, %r10
	addq %r10, %rax
	movsbq (%rax), %rax
	pushq %rax // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _get_backspace_char
	addq $8, %rsp // 72
	pushq %rax // 80
//cast to (long*)
//cast to (char*)
	movq -32(%rbp), %rax // token
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 88
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 80
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 72
	movq %r10, (%rax)
//}
	jmp END_IF35
ELSE35:
//cast to (long)
	movq -8(%rbp), %rax // s
	pushq %rax // 80
	movslq -12(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 72
	imulq $1, %r10
	addq %r10, %rax
	movsbq (%rax), %rax
	pushq %rax // 80
//cast to (long*)
//cast to (char*)
	movq -32(%rbp), %rax // token
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 88
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 80
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 72
	movq %r10, (%rax)
END_IF35:
	movslq -12(%rbp), %rax // i
	pushq %rax // 80
	movslq -12(%rbp), %rax // i
	pushq %rax // 88
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 80
	addq %r10, %rax
	movl %eax, -12(%rbp) // i = rax
	popq %rax // 72
//if begin
//cast to (int)
	movq -8(%rbp), %rax // s
	pushq %rax // 80
	movslq -12(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 72
	imulq $1, %r10
	addq %r10, %rax
	movsbq (%rax), %rax
	pushq %rax // 80
	movq $39, %rax
	movq %rax, %r10
	popq %rax // 72
	cmpq %r10, %rax
	setne %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE36
//call error_token
	movq -32(%rbp), %rax // token
	pushq %rax // 80
	leaq L_.str.34(%rip), %rax
	pushq %rax // 88
	popq %rsi // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _error_token
	addq $8, %rsp // 72
	jmp END_IF36
ELSE36:
END_IF36:
	movslq -12(%rbp), %rax // i
	pushq %rax // 80
	movslq -12(%rbp), %rax // i
	pushq %rax // 88
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 80
	addq %r10, %rax
	movl %eax, -12(%rbp) // i = rax
	popq %rax // 72
//}
	jmp END_IF34
ELSE34:
//if begin
//cast to (int)
	movq -8(%rbp), %rax // s
	pushq %rax // 80
	movslq -12(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 72
	imulq $1, %r10
	addq %r10, %rax
	movsbq (%rax), %rax
	pushq %rax // 80
	movq $34, %rax
	movq %rax, %r10
	popq %rax // 72
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE37
//{ (476)
	movslq -12(%rbp), %rax // i
	pushq %rax // 80
	movslq -12(%rbp), %rax // i
	pushq %rax // 88
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 80
	addq %r10, %rax
	movl %eax, -12(%rbp) // i = rax
	popq %rax // 72
	movq $274, %rax
	pushq %rax // 80
//cast to (int*)
//cast to (char*)
	movq -32(%rbp), %rax // token
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 88
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 80
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 72
	movl %r10d, (%rax)
	movslq -12(%rbp), %rax // i
	movl %eax, -40(%rbp) // k = rax
WHILE38:
//cast to (int)
	movq -8(%rbp), %rax // s
	pushq %rax // 80
	movslq -12(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 72
	imulq $1, %r10
	addq %r10, %rax
	movsbq (%rax), %rax
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR39
//cast to (int)
	movq -8(%rbp), %rax // s
	pushq %rax // 80
	movslq -12(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 72
	imulq $1, %r10
	addq %r10, %rax
	movsbq (%rax), %rax
	pushq %rax // 80
	movq $34, %rax
	movq %rax, %r10
	popq %rax // 72
	cmpq %r10, %rax
	setne %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR40
//cast to (int)
	movq -8(%rbp), %rax // s
	pushq %rax // 80
	movslq -12(%rbp), %rax // i
	pushq %rax // 88
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 80
	subq %r10, %rax
	movq %rax, %r10
	popq %rax // 72
	imulq $1, %r10
	addq %r10, %rax
	movsbq (%rax), %rax
	pushq %rax // 80
	movq $92, %rax
	movq %rax, %r10
	popq %rax // 72
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR40:
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR39:
	cmpq $0, %rax
	je WHILE_END38
	movslq -12(%rbp), %rax // i
	pushq %rax // 80
	movslq -12(%rbp), %rax // i
	pushq %rax // 88
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 80
	addq %r10, %rax
	movl %eax, -12(%rbp) // i = rax
	popq %rax // 72
	jmp WHILE38
WHILE_END38:
//if begin
//cast to (int)
	movq -8(%rbp), %rax // s
	pushq %rax // 80
	movslq -12(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 72
	imulq $1, %r10
	addq %r10, %rax
	movsbq (%rax), %rax
	pushq %rax // 80
	movq $34, %rax
	movq %rax, %r10
	popq %rax // 72
	cmpq %r10, %rax
	setne %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE41
//call error_token
	movq -32(%rbp), %rax // token
	pushq %rax // 80
	leaq L_.str.35(%rip), %rax
	pushq %rax // 88
	popq %rsi // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _error_token
	addq $8, %rsp // 72
	jmp END_IF41
ELSE41:
END_IF41:
//cast to (char*)
//call malloc
	movslq -12(%rbp), %rax // i
	pushq %rax // 80
	movslq -40(%rbp), %rax // k
	movq %rax, %r10
	popq %rax // 72
	subq %r10, %rax
	pushq %rax // 80
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 72
	addq %r10, %rax
	pushq %rax // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _malloc
	addq $8, %rsp // 72
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq %rax, -48(%rbp) // name = rax
//call memcpy
	movq -48(%rbp), %rax // name
	pushq %rax // 80
	movq -8(%rbp), %rax // s
	pushq %rax // 88
	movslq -40(%rbp), %rax // k
	movq %rax, %r10
	popq %rax // 80
	imulq $1, %r10
	addq %r10, %rax
	pushq %rax // 88
	movslq -12(%rbp), %rax // i
	pushq %rax // 96
	movslq -40(%rbp), %rax // k
	movq %rax, %r10
	popq %rax // 88
	subq %r10, %rax
	pushq %rax // 96
	popq %rdx // 88
	popq %rsi // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _memcpy
	addq $8, %rsp // 72
//cast to (char)
	movq $0, %rax
	movsbq %al, %r10
	movq %r10, %rax
	pushq %rax // 80
	movq -48(%rbp), %rax // name
	pushq %rax // 88
	movslq -12(%rbp), %rax // i
	pushq %rax // 96
	movslq -40(%rbp), %rax // k
	movq %rax, %r10
	popq %rax // 88
	subq %r10, %rax
	movq %rax, %r10
	popq %rax // 80
	imulq $1, %r10
	addq %r10, %rax
	popq %r10 // 72
	movb %r10b, (%rax)
	movq -48(%rbp), %rax // name
	pushq %rax // 80
//cast to (char**)
//cast to (char*)
	movq -32(%rbp), %rax // token
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 88
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 80
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 72
	movq %r10, (%rax)
	movslq -12(%rbp), %rax // i
	pushq %rax // 80
	movslq -12(%rbp), %rax // i
	pushq %rax // 88
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 80
	addq %r10, %rax
	movl %eax, -12(%rbp) // i = rax
	popq %rax // 72
//}
	jmp END_IF37
ELSE37:
//if begin
//call isalpha
	movq -8(%rbp), %rax // s
	pushq %rax // 80
	movslq -12(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 72
	imulq $1, %r10
	addq %r10, %rax
	movsbq (%rax), %rax
	pushq %rax // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _isalpha
	addq $8, %rsp // 72
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR43
//cast to (int)
	movq -8(%rbp), %rax // s
	pushq %rax // 80
	movslq -12(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 72
	imulq $1, %r10
	addq %r10, %rax
	movsbq (%rax), %rax
	pushq %rax // 80
	movq $95, %rax
	movq %rax, %r10
	popq %rax // 72
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR43:
	cmpq $0, %rax
	je ELSE42
//{ (492)
	movslq -12(%rbp), %rax // i
	movl %eax, -52(%rbp) // k = rax
WHILE44:
//call isalnum
	movq -8(%rbp), %rax // s
	pushq %rax // 80
	movslq -12(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 72
	imulq $1, %r10
	addq %r10, %rax
	movsbq (%rax), %rax
	pushq %rax // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _isalnum
	addq $8, %rsp // 72
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR45
//cast to (int)
	movq -8(%rbp), %rax // s
	pushq %rax // 80
	movslq -12(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 72
	imulq $1, %r10
	addq %r10, %rax
	movsbq (%rax), %rax
	pushq %rax // 80
	movq $95, %rax
	movq %rax, %r10
	popq %rax // 72
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR45:
	cmpq $0, %rax
	je WHILE_END44
	movslq -12(%rbp), %rax // i
	pushq %rax // 80
	movslq -12(%rbp), %rax // i
	pushq %rax // 88
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 80
	addq %r10, %rax
	movl %eax, -12(%rbp) // i = rax
	popq %rax // 72
	jmp WHILE44
WHILE_END44:
//cast to (char*)
//call malloc
	movslq -12(%rbp), %rax // i
	pushq %rax // 80
	movslq -52(%rbp), %rax // k
	movq %rax, %r10
	popq %rax // 72
	subq %r10, %rax
	pushq %rax // 80
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 72
	addq %r10, %rax
	pushq %rax // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _malloc
	addq $8, %rsp // 72
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq %rax, -64(%rbp) // name = rax
//call memcpy
	movq -64(%rbp), %rax // name
	pushq %rax // 80
	movq -8(%rbp), %rax // s
	pushq %rax // 88
	movslq -52(%rbp), %rax // k
	movq %rax, %r10
	popq %rax // 80
	imulq $1, %r10
	addq %r10, %rax
	pushq %rax // 88
	movslq -12(%rbp), %rax // i
	pushq %rax // 96
	movslq -52(%rbp), %rax // k
	movq %rax, %r10
	popq %rax // 88
	subq %r10, %rax
	pushq %rax // 96
	popq %rdx // 88
	popq %rsi // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _memcpy
	addq $8, %rsp // 72
//cast to (char)
	movq $0, %rax
	movsbq %al, %r10
	movq %r10, %rax
	pushq %rax // 80
	movq -64(%rbp), %rax // name
	pushq %rax // 88
	movslq -12(%rbp), %rax // i
	pushq %rax // 96
	movslq -52(%rbp), %rax // k
	movq %rax, %r10
	popq %rax // 88
	subq %r10, %rax
	movq %rax, %r10
	popq %rax // 80
	imulq $1, %r10
	addq %r10, %rax
	popq %r10 // 72
	movb %r10b, (%rax)
	movq $257, %rax
	pushq %rax // 80
//cast to (int*)
//cast to (char*)
	movq -32(%rbp), %rax // token
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 88
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 80
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 72
	movl %r10d, (%rax)
//for init
	movq $0, %rax
	movl %eax, -68(%rbp) // l = rax
FOR46:
//cast to (char**)
//cast to (char*)
	movq _keywords@GOTPCREL(%rip), %rax
	pushq %rax // 80
	movslq -68(%rbp), %rax // l
	movq %rax, %r10
	popq %rax // 72
	imulq $16, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 80
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 72
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	cmpq $0, %rax
	je FOR_END46
//{ (501)
//if begin
//call strcmp
	movq -64(%rbp), %rax // name
	pushq %rax // 80
//cast to (char**)
//cast to (char*)
	movq _keywords@GOTPCREL(%rip), %rax
	pushq %rax // 88
	movslq -68(%rbp), %rax // l
	movq %rax, %r10
	popq %rax // 80
	imulq $16, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 88
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 80
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 88
	popq %rsi // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _strcmp
	addq $8, %rsp // 72
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE47
//{ (503)
//cast to (int*)
//cast to (char*)
	movq _keywords@GOTPCREL(%rip), %rax
	pushq %rax // 80
	movslq -68(%rbp), %rax // l
	movq %rax, %r10
	popq %rax // 72
	imulq $16, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 80
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 72
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 80
//cast to (int*)
//cast to (char*)
	movq -32(%rbp), %rax // token
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 88
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 80
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 72
	movl %r10d, (%rax)
	jmp FOR_END46
//}
	jmp END_IF47
ELSE47:
END_IF47:
//}
FOR_INC46:
	movslq -68(%rbp), %rax // l
	pushq %rax // 80
	movslq -68(%rbp), %rax // l
	pushq %rax // 88
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 80
	addq %r10, %rax
	movl %eax, -68(%rbp) // l = rax
	popq %rax // 72
	jmp FOR46
FOR_END46:
	movq -64(%rbp), %rax // name
	pushq %rax // 80
//cast to (char**)
//cast to (char*)
	movq -32(%rbp), %rax // token
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 88
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 80
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 72
	movq %r10, (%rax)
//}
	jmp END_IF42
ELSE42:
//{ (511)
//for init
	movq $0, %rax
	movl %eax, -72(%rbp) // k = rax
FOR48:
//cast to (char**)
//cast to (char*)
	movq _multi_char_tokens_type@GOTPCREL(%rip), %rax
	pushq %rax // 80
	movslq -72(%rbp), %rax // k
	movq %rax, %r10
	popq %rax // 72
	imulq $16, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 80
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 72
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	cmpq $0, %rax
	je FOR_END48
//{ (513)
//if begin
//call strncmp
	movq -8(%rbp), %rax // s
	pushq %rax // 80
	movslq -12(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 72
	imulq $1, %r10
	addq %r10, %rax
	pushq %rax // 80
//cast to (char**)
//cast to (char*)
	movq _multi_char_tokens_type@GOTPCREL(%rip), %rax
	pushq %rax // 88
	movslq -72(%rbp), %rax // k
	movq %rax, %r10
	popq %rax // 80
	imulq $16, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 88
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 80
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 88
//call strlen
//cast to (char**)
//cast to (char*)
	movq _multi_char_tokens_type@GOTPCREL(%rip), %rax
	pushq %rax // 96
	movslq -72(%rbp), %rax // k
	movq %rax, %r10
	popq %rax // 88
	imulq $16, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 96
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 88
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 96
	popq %rdi // 88
	subq $8, %rsp // 96
	xorq %rax, %rax
	callq _strlen
	addq $8, %rsp // 88
	pushq %rax // 96
	popq %rdx // 88
	popq %rsi // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _strncmp
	addq $8, %rsp // 72
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE49
//{ (516)
//cast to (int*)
//cast to (char*)
	movq _multi_char_tokens_type@GOTPCREL(%rip), %rax
	pushq %rax // 80
	movslq -72(%rbp), %rax // k
	movq %rax, %r10
	popq %rax // 72
	imulq $16, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 80
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 72
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 80
//cast to (int*)
//cast to (char*)
	movq -32(%rbp), %rax // token
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 88
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 80
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 72
	movl %r10d, (%rax)
	movslq -12(%rbp), %rax // i
	pushq %rax // 80
//call strlen
//cast to (char**)
//cast to (char*)
	movq _multi_char_tokens_type@GOTPCREL(%rip), %rax
	pushq %rax // 88
	movslq -72(%rbp), %rax // k
	movq %rax, %r10
	popq %rax // 80
	imulq $16, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 88
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 80
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 88
	popq %rdi // 80
	subq $0, %rsp // 80
	xorq %rax, %rax
	callq _strlen
	addq $0, %rsp // 80
	movq %rax, %r10
	popq %rax // 72
	addq %r10, %rax
	movl %eax, -12(%rbp) // i = rax
	jmp FOR_END48
//}
	jmp END_IF49
ELSE49:
END_IF49:
//}
FOR_INC48:
	movslq -72(%rbp), %rax // k
	pushq %rax // 80
	movslq -72(%rbp), %rax // k
	pushq %rax // 88
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 80
	addq %r10, %rax
	movl %eax, -72(%rbp) // k = rax
	popq %rax // 72
	jmp FOR48
FOR_END48:
//if begin
//cast to (int*)
//cast to (char*)
	movq -32(%rbp), %rax // token
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 80
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 72
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE50
//{ (523)
//if begin
//call strchr
	leaq L_.str.36(%rip), %rax
	pushq %rax // 80
	movq -8(%rbp), %rax // s
	pushq %rax // 88
	movslq -12(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 80
	imulq $1, %r10
	addq %r10, %rax
	movsbq (%rax), %rax
	pushq %rax // 88
	popq %rsi // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _strchr
	addq $8, %rsp // 72
	cmpq $0, %rax
	je ELSE51
//{ (525)
//cast to (int)
	movq -8(%rbp), %rax // s
	pushq %rax // 80
	movslq -12(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 72
	imulq $1, %r10
	addq %r10, %rax
	movsbq (%rax), %rax
	pushq %rax // 80
//cast to (int*)
//cast to (char*)
	movq -32(%rbp), %rax // token
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 88
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 80
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 72
	movl %r10d, (%rax)
	movslq -12(%rbp), %rax // i
	pushq %rax // 80
	movslq -12(%rbp), %rax // i
	pushq %rax // 88
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 80
	addq %r10, %rax
	movl %eax, -12(%rbp) // i = rax
	popq %rax // 72
//}
	jmp END_IF51
ELSE51:
//{ (530)
//call error_token
	movq -32(%rbp), %rax // token
	pushq %rax // 80
	leaq L_.str.37(%rip), %rax
	pushq %rax // 88
	movq -8(%rbp), %rax // s
	pushq %rax // 96
	movslq -12(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 88
	imulq $1, %r10
	addq %r10, %rax
	movsbq (%rax), %rax
	pushq %rax // 96
	popq %rdx // 88
	popq %rsi // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _error_token
	addq $8, %rsp // 72
//}
END_IF51:
//}
	jmp END_IF50
ELSE50:
END_IF50:
//}
END_IF42:
END_IF37:
END_IF34:
END_IF32:
	movslq -24(%rbp), %rax // col
	pushq %rax // 80
	movslq -12(%rbp), %rax // i
	pushq %rax // 88
	movslq -36(%rbp), %rax // last
	movq %rax, %r10
	popq %rax // 80
	subq %r10, %rax
	movq %rax, %r10
	popq %rax // 72
	addq %r10, %rax
	movl %eax, -24(%rbp) // col = rax
	movslq -16(%rbp), %rax // j
	pushq %rax // 80
	movslq -16(%rbp), %rax // j
	pushq %rax // 88
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 80
	addq %r10, %rax
	movl %eax, -16(%rbp) // j = rax
	popq %rax // 72
//}
	jmp WHILE16
WHILE_END16:
	movq $0, %rax
	pushq %rax // 80
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 88
	movslq -16(%rbp), %rax // j
	movq %rax, %r10
	popq %rax // 80
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 88
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 80
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 72
	movl %r10d, (%rax)
	movslq -20(%rbp), %rax // line
	pushq %rax // 80
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 88
	movslq -16(%rbp), %rax // j
	movq %rax, %r10
	popq %rax // 80
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 88
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 80
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 72
	movl %r10d, (%rax)
	movslq -24(%rbp), %rax // col
	pushq %rax // 80
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 88
	movslq -16(%rbp), %rax // j
	movq %rax, %r10
	popq %rax // 80
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 88
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 80
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 72
	movl %r10d, (%rax)
	movq -8(%rbp), %rax // s
	pushq %rax // 80
	movslq -12(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 72
	imulq $1, %r10
	addq %r10, %rax
	pushq %rax // 80
//cast to (char**)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 88
	movslq -16(%rbp), %rax // j
	movq %rax, %r10
	popq %rax // 80
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 88
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 80
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 72
	movq %r10, (%rax)
//if begin
//cast to (int)
	movq -8(%rbp), %rax // s
	pushq %rax // 80
	movslq -12(%rbp), %rax // i
	pushq %rax // 88
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 80
	subq %r10, %rax
	movq %rax, %r10
	popq %rax // 72
	imulq $1, %r10
	addq %r10, %rax
	movsbq (%rax), %rax
	pushq %rax // 80
	movq $10, %rax
	movq %rax, %r10
	popq %rax // 72
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE52
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 80
	movslq -16(%rbp), %rax // j
	movq %rax, %r10
	popq %rax // 72
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 80
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 72
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 80
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 88
	movslq -16(%rbp), %rax // j
	movq %rax, %r10
	popq %rax // 80
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 88
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 80
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 88
	movq $-1, %rax
	movq %rax, %r10
	popq %rax // 80
	addq %r10, %rax
	pushq %rax // 88
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 96
	movslq -16(%rbp), %rax // j
	movq %rax, %r10
	popq %rax // 88
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 96
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 88
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 80
	movl %r10d, (%rax)
	popq %rax // 72
	movq $1, %rax
	pushq %rax // 80
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 88
	movslq -16(%rbp), %rax // j
	movq %rax, %r10
	popq %rax // 80
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 88
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 80
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 72
	movl %r10d, (%rax)
	jmp END_IF52
ELSE52:
END_IF52:
	movq _tokens@GOTPCREL(%rip), %rax
	movq %rbp, %rsp
	popq %rbp
	ret
//}
	addq $72, %rsp // 0
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

//int align(int n, int a)
_align:
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp // 8
	movl %edi, -4(%rbp) //n
	movl %esi, -8(%rbp) //a
//{ (549)
	movslq -4(%rbp), %rax // n
	pushq %rax // 16
	movslq -8(%rbp), %rax // a
	movq %rax, %r10
	popq %rax // 8
	addq %r10, %rax
	pushq %rax // 16
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 8
	subq %r10, %rax
	pushq %rax // 16
	movslq -8(%rbp), %rax // a
	movq %rax, %r10
	popq %rax // 8
	cqto
	idivq %r10
	pushq %rax // 16
	movslq -8(%rbp), %rax // a
	movq %rax, %r10
	popq %rax // 8
	imulq %r10, %rax
	movq %rbp, %rsp
	popq %rbp
	ret
//}
	addq $8, %rsp // 0
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

//char* find(char* s, char c)
_find:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp // 16
	movq %rdi, -8(%rbp) //s
	movb %sil, -9(%rbp) //c
//{ (554)
	movq $0, %rax
	movl %eax, -16(%rbp) // i = rax
WHILE53:
	movq -8(%rbp), %rax // s
	pushq %rax // 24
	movslq -16(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 16
	imulq $1, %r10
	addq %r10, %rax
	movsbq (%rax), %rax
	cmpq $0, %rax
	je WHILE_END53
//{ (559)
//if begin
//cast to (int)
	movq -8(%rbp), %rax // s
	pushq %rax // 24
	movslq -16(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 16
	imulq $1, %r10
	addq %r10, %rax
	movsbq (%rax), %rax
	pushq %rax // 24
//cast to (int)
	movsbq -9(%rbp), %rax // c
	movq %rax, %r10
	popq %rax // 16
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE54
	movq -8(%rbp), %rax // s
	pushq %rax // 24
	movslq -16(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 16
	imulq $1, %r10
	addq %r10, %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF54
ELSE54:
END_IF54:
	movslq -16(%rbp), %rax // i
	pushq %rax // 24
	movslq -16(%rbp), %rax // i
	pushq %rax // 32
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 24
	addq %r10, %rax
	movl %eax, -16(%rbp) // i = rax
	popq %rax // 16
//}
	jmp WHILE53
WHILE_END53:
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret
//}
	addq $16, %rsp // 0
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

//Scope* new_scope()
_new_scope:
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp // 8
//{ (570)
	movq _scopes@GOTPCREL(%rip), %rax
	pushq %rax // 16
	movslq _scope_count(%rip), %rax
	pushq %rax // 24
	movslq _scope_count(%rip), %rax
	pushq %rax // 32
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 24
	addq %r10, %rax
	movl %eax, _scope_count(%rip)
	popq %rax // 16
	movq %rax, %r10
	popq %rax // 8
	imulq $840, %r10
	addq %r10, %rax
	movq %rax, -8(%rbp) // scope = rax
	movq -8(%rbp), %rax // scope
	movq %rbp, %rsp
	popq %rbp
	ret
//}
	addq $8, %rsp // 0
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

//void enter_scope()
_enter_scope:
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp // 8
//{ (576)
//call new_scope
	subq $8, %rsp // 16
	xorq %rax, %rax
	callq _new_scope
	addq $8, %rsp // 8
	movq %rax, -8(%rbp) // scope = rax
	movq _curr_scope(%rip), %rax // curr_scope
	pushq %rax // 16
//cast to (Scope**)
//cast to (char*)
	movq -8(%rbp), %rax // scope
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 24
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 16
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 8
	movq %r10, (%rax)
	movq -8(%rbp), %rax // scope
	movq %rax, _curr_scope(%rip)
//}
	addq $8, %rsp // 0
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

//void leave_scope()
_leave_scope:
	pushq %rbp
	movq %rsp, %rbp
	subq $0, %rsp // 0
//{ (583)
//cast to (Scope**)
//cast to (char*)
	movq _curr_scope(%rip), %rax // curr_scope
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 8
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 0
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	movq %rax, _curr_scope(%rip)
//}
	addq $0, %rsp // 0
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

//Type* new_type(int t)
_new_type:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp // 16
	movl %edi, -4(%rbp) //t
//{ (588)
	movq _types@GOTPCREL(%rip), %rax
	pushq %rax // 24
	movslq _type_count(%rip), %rax
	pushq %rax // 32
	movslq _type_count(%rip), %rax
	pushq %rax // 40
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 32
	addq %r10, %rax
	movl %eax, _type_count(%rip)
	popq %rax // 24
	movq %rax, %r10
	popq %rax // 16
	imulq $2056, %r10
	addq %r10, %rax
	movq %rax, -16(%rbp) // type = rax
	movslq -4(%rbp), %rax // t
	pushq %rax // 24
//cast to (int*)
//cast to (char*)
	movq -16(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 32
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 24
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 16
	movl %r10d, (%rax)
//if begin
	movslq -4(%rbp), %rax // t
	pushq %rax // 24
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 16
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR56
	movslq -4(%rbp), %rax // t
	pushq %rax // 24
	movq $3, %rax
	movq %rax, %r10
	popq %rax // 16
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR56:
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR57
	movslq -4(%rbp), %rax // t
	pushq %rax // 24
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 16
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR57:
	cmpq $0, %rax
	je ELSE55
	movq $1, %rax
	pushq %rax // 24
//cast to (int*)
//cast to (char*)
	movq -16(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 32
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 24
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 16
	movl %r10d, (%rax)
	jmp END_IF55
ELSE55:
END_IF55:
//if begin
	movslq -4(%rbp), %rax // t
	pushq %rax // 24
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 16
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR59
	movslq -4(%rbp), %rax // t
	pushq %rax // 24
	movq $3, %rax
	movq %rax, %r10
	popq %rax // 16
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR59:
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR60
	movslq -4(%rbp), %rax // t
	pushq %rax // 24
	movq $6, %rax
	movq %rax, %r10
	popq %rax // 16
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR60:
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR61
	movslq -4(%rbp), %rax // t
	pushq %rax // 24
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 16
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR61:
	cmpq $0, %rax
	je ELSE58
	movq $8, %rax
	pushq %rax // 24
//cast to (int*)
//cast to (char*)
	movq -16(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 32
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 24
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 16
	movl %r10d, (%rax)
	jmp END_IF58
ELSE58:
//if begin
//cast to (int*)
//cast to (char*)
	movq -16(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 24
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 16
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 24
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 16
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE62
	movq $4, %rax
	pushq %rax // 24
//cast to (int*)
//cast to (char*)
	movq -16(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 32
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 24
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 16
	movl %r10d, (%rax)
	jmp END_IF62
ELSE62:
//if begin
//cast to (int*)
//cast to (char*)
	movq -16(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 24
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 16
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 24
	movq $4, %rax
	movq %rax, %r10
	popq %rax // 16
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE63
	movq $2, %rax
	pushq %rax // 24
//cast to (int*)
//cast to (char*)
	movq -16(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 32
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 24
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 16
	movl %r10d, (%rax)
	jmp END_IF63
ELSE63:
//if begin
//cast to (int*)
//cast to (char*)
	movq -16(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 24
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 16
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 24
	movq $5, %rax
	movq %rax, %r10
	popq %rax // 16
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE64
	movq $1, %rax
	pushq %rax // 24
//cast to (int*)
//cast to (char*)
	movq -16(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 32
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 24
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 16
	movl %r10d, (%rax)
	jmp END_IF64
ELSE64:
END_IF64:
END_IF63:
END_IF62:
END_IF58:
	movq -16(%rbp), %rax // type
	movq %rbp, %rsp
	popq %rbp
	ret
//}
	addq $16, %rsp // 0
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

//int types_are_equal(Type* t1, Type* t2)
_types_are_equal:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp // 16
	movq %rdi, -8(%rbp) //t1
	movq %rsi, -16(%rbp) //t2
//{ (605)
//if begin
	movq -8(%rbp), %rax // t1
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR66
	movq -16(%rbp), %rax // t2
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR66:
	cmpq $0, %rax
	je ELSE65
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF65
ELSE65:
END_IF65:
//if begin
	movq -8(%rbp), %rax // t1
	pushq %rax // 24
	movq -16(%rbp), %rax // t2
	movq %rax, %r10
	popq %rax // 16
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE67
	movq $1, %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF67
ELSE67:
END_IF67:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // t1
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 24
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 16
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 24
//cast to (int*)
//cast to (char*)
	movq -16(%rbp), %rax // t2
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 32
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 24
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	movq %rax, %r10
	popq %rax // 16
	cmpq %r10, %rax
	setne %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE68
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF68
ELSE68:
END_IF68:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // t1
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 24
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 16
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 24
//cast to (int*)
//cast to (char*)
	movq -16(%rbp), %rax // t2
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 32
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 24
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	movq %rax, %r10
	popq %rax // 16
	cmpq %r10, %rax
	setne %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE69
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF69
ELSE69:
END_IF69:
//if begin
//cast to (Type**)
//cast to (char*)
	movq -8(%rbp), %rax // t1
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 24
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 16
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE70
//cast to (Type**)
//cast to (char*)
	movq -16(%rbp), %rax // t2
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 24
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 16
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 24
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 16
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF70
ELSE70:
END_IF70:
//call types_are_equal
//cast to (Type**)
//cast to (char*)
	movq -8(%rbp), %rax // t1
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 24
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 16
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 24
//cast to (Type**)
//cast to (char*)
	movq -16(%rbp), %rax // t2
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 32
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 24
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 32
	popq %rsi // 24
	popq %rdi // 16
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _types_are_equal
	addq $0, %rsp // 16
	movq %rbp, %rsp
	popq %rbp
	ret
//}
	addq $16, %rsp // 0
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

//Func* add_func(char* name, Type* ret_type)
_add_func:
	pushq %rbp
	movq %rsp, %rbp
	subq $24, %rsp // 24
	movq %rdi, -8(%rbp) //name
	movq %rsi, -16(%rbp) //ret_type
//{ (620)
	movq _funcs@GOTPCREL(%rip), %rax
	pushq %rax // 32
	movslq _func_count(%rip), %rax
	pushq %rax // 40
	movslq _func_count(%rip), %rax
	pushq %rax // 48
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 40
	addq %r10, %rax
	movl %eax, _func_count(%rip)
	popq %rax // 32
	movq %rax, %r10
	popq %rax // 24
	imulq $16, %r10
	addq %r10, %rax
	movq %rax, -24(%rbp) // fn = rax
	movq -8(%rbp), %rax // name
	pushq %rax // 32
//cast to (char**)
//cast to (char*)
	movq -24(%rbp), %rax // fn
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 40
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 32
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 24
	movq %r10, (%rax)
	movq -16(%rbp), %rax // ret_type
	pushq %rax // 32
//cast to (Type**)
//cast to (char*)
	movq -24(%rbp), %rax // fn
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 40
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 32
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 24
	movq %r10, (%rax)
	movq -24(%rbp), %rax // fn
	movq %rbp, %rsp
	popq %rbp
	ret
//}
	addq $24, %rsp // 0
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

//Func* find_func(char* name)
_find_func:
	pushq %rbp
	movq %rsp, %rbp
	subq $12, %rsp // 12
	movq %rdi, -8(%rbp) //name
//{ (628)
//for init
	movq $0, %rax
	movl %eax, -12(%rbp) // i = rax
FOR71:
	movslq -12(%rbp), %rax // i
	pushq %rax // 20
	movslq _func_count(%rip), %rax
	movq %rax, %r10
	popq %rax // 12
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je FOR_END71
//{ (630)
//if begin
//call strcmp
	movq -8(%rbp), %rax // name
	pushq %rax // 20
//cast to (char**)
//cast to (char*)
	movq _funcs@GOTPCREL(%rip), %rax
	pushq %rax // 28
	movslq -12(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 20
	imulq $16, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 28
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 20
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 28
	popq %rsi // 20
	popq %rdi // 12
	subq $4, %rsp // 16
	xorq %rax, %rax
	callq _strcmp
	addq $4, %rsp // 12
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE72
	movq _funcs@GOTPCREL(%rip), %rax
	pushq %rax // 20
	movslq -12(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 12
	imulq $16, %r10
	addq %r10, %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF72
ELSE72:
END_IF72:
//}
FOR_INC71:
	movslq -12(%rbp), %rax // i
	pushq %rax // 20
	movslq -12(%rbp), %rax // i
	pushq %rax // 28
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 20
	addq %r10, %rax
	movl %eax, -12(%rbp) // i = rax
	popq %rax // 12
	jmp FOR71
FOR_END71:
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret
//}
	addq $12, %rsp // 0
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

//Var* find_var(char* name)
_find_var:
	pushq %rbp
	movq %rsp, %rbp
	subq $48, %rsp // 48
	movq %rdi, -8(%rbp) //name
//{ (638)
	movq _curr_scope(%rip), %rax // curr_scope
	movq %rax, -16(%rbp) // scope = rax
WHILE73:
	movq -16(%rbp), %rax // scope
	cmpq $0, %rax
	je WHILE_END73
//{ (641)
//for init
	movq $0, %rax
	movl %eax, -20(%rbp) // i = rax
FOR74:
	movslq -20(%rbp), %rax // i
	pushq %rax // 56
//cast to (int*)
//cast to (char*)
	movq -16(%rbp), %rax // scope
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 64
	movq $832, %rax
	movq %rax, %r10
	popq %rax // 56
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	movq %rax, %r10
	popq %rax // 48
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je FOR_END74
//{ (643)
//if begin
//call strcmp
//cast to (char**)
//cast to (char*)
//cast to (Var*[100])
//cast to (char*)
	movq -16(%rbp), %rax // scope
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 56
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 48
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 56
	movslq -20(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 48
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 56
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 48
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 56
	movq -8(%rbp), %rax // name
	pushq %rax // 64
	popq %rsi // 56
	popq %rdi // 48
	subq $0, %rsp // 48
	xorq %rax, %rax
	callq _strcmp
	addq $0, %rsp // 48
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE75
//cast to (Var*[100])
//cast to (char*)
	movq -16(%rbp), %rax // scope
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 56
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 48
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 56
	movslq -20(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 48
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF75
ELSE75:
END_IF75:
//}
FOR_INC74:
	movslq -20(%rbp), %rax // i
	pushq %rax // 56
	movslq -20(%rbp), %rax // i
	pushq %rax // 64
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 56
	addq %r10, %rax
	movl %eax, -20(%rbp) // i = rax
	popq %rax // 48
	jmp FOR74
FOR_END74:
//cast to (Scope**)
//cast to (char*)
	movq -16(%rbp), %rax // scope
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 56
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 48
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	movq %rax, -16(%rbp) // scope = rax
//}
	jmp WHILE73
WHILE_END73:
//call find_func
	movq -8(%rbp), %rax // name
	pushq %rax // 56
	popq %rdi // 48
	subq $0, %rsp // 48
	xorq %rax, %rax
	callq _find_func
	addq $0, %rsp // 48
	movq %rax, -32(%rbp) // func = rax
//if begin
	movq -32(%rbp), %rax // func
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE76
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF76
ELSE76:
END_IF76:
//call new_type
	movq $8, %rax
	pushq %rax // 56
	popq %rdi // 48
	subq $0, %rsp // 48
	xorq %rax, %rax
	callq _new_type
	addq $0, %rsp // 48
	movq %rax, -40(%rbp) // type = rax
	movq _vars@GOTPCREL(%rip), %rax
	pushq %rax // 56
	movslq _var_count(%rip), %rax
	pushq %rax // 64
	movslq _var_count(%rip), %rax
	pushq %rax // 72
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 64
	addq %r10, %rax
	movl %eax, _var_count(%rip)
	popq %rax // 56
	movq %rax, %r10
	popq %rax // 48
	imulq $48, %r10
	addq %r10, %rax
	movq %rax, -48(%rbp) // v = rax
	movq -40(%rbp), %rax // type
	pushq %rax // 56
//cast to (Type**)
//cast to (char*)
	movq -48(%rbp), %rax // v
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 64
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 56
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 48
	movq %r10, (%rax)
	movq -8(%rbp), %rax // name
	pushq %rax // 56
//cast to (char**)
//cast to (char*)
	movq -48(%rbp), %rax // v
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 64
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 56
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 48
	movq %r10, (%rax)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 56
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 48
	imulq $40, %r10
	addq %r10, %rax
	pushq %rax // 56
//cast to (Token**)
//cast to (char*)
	movq -48(%rbp), %rax // v
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 64
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 56
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 48
	movq %r10, (%rax)
	movq -48(%rbp), %rax // v
	movq %rbp, %rsp
	popq %rbp
	ret
//}
	addq $48, %rsp // 0
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

//Var* new_var(Type* type, char* name)
_new_var:
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp // 32
	movq %rdi, -8(%rbp) //type
	movq %rsi, -16(%rbp) //name
//{ (662)
//for init
	movq $0, %rax
	movl %eax, -20(%rbp) // i = rax
FOR77:
	movslq -20(%rbp), %rax // i
	pushq %rax // 40
//cast to (int*)
//cast to (char*)
	movq _curr_scope(%rip), %rax // curr_scope
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 48
	movq $832, %rax
	movq %rax, %r10
	popq %rax // 40
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	movq %rax, %r10
	popq %rax // 32
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je FOR_END77
//{ (664)
//if begin
//call strcmp
//cast to (char**)
//cast to (char*)
//cast to (Var*[100])
//cast to (char*)
	movq _curr_scope(%rip), %rax // curr_scope
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 40
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 32
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 40
	movslq -20(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 32
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 40
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 32
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 40
	movq -16(%rbp), %rax // name
	pushq %rax // 48
	popq %rsi // 40
	popq %rdi // 32
	subq $0, %rsp // 32
	xorq %rax, %rax
	callq _strcmp
	addq $0, %rsp // 32
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE78
//call error_token
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 40
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 32
	imulq $40, %r10
	addq %r10, %rax
	pushq %rax // 40
	leaq L_.str.38(%rip), %rax
	pushq %rax // 48
	movq -16(%rbp), %rax // name
	pushq %rax // 56
	popq %rdx // 48
	popq %rsi // 40
	popq %rdi // 32
	subq $0, %rsp // 32
	xorq %rax, %rax
	callq _error_token
	addq $0, %rsp // 32
	jmp END_IF78
ELSE78:
END_IF78:
//}
FOR_INC77:
	movslq -20(%rbp), %rax // i
	pushq %rax // 40
	movslq -20(%rbp), %rax // i
	pushq %rax // 48
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 40
	addq %r10, %rax
	movl %eax, -20(%rbp) // i = rax
	popq %rax // 32
	jmp FOR77
FOR_END77:
	movq _vars@GOTPCREL(%rip), %rax
	pushq %rax // 40
	movslq _var_count(%rip), %rax
	pushq %rax // 48
	movslq _var_count(%rip), %rax
	pushq %rax // 56
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 48
	addq %r10, %rax
	movl %eax, _var_count(%rip)
	popq %rax // 40
	movq %rax, %r10
	popq %rax // 32
	imulq $48, %r10
	addq %r10, %rax
	movq %rax, -32(%rbp) // v = rax
	movq -16(%rbp), %rax // name
	pushq %rax // 40
//cast to (char**)
//cast to (char*)
	movq -32(%rbp), %rax // v
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 48
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 40
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 32
	movq %r10, (%rax)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 40
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 32
	imulq $40, %r10
	addq %r10, %rax
	pushq %rax // 40
//cast to (Token**)
//cast to (char*)
	movq -32(%rbp), %rax // v
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 48
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 40
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 32
	movq %r10, (%rax)
	movq -8(%rbp), %rax // type
	pushq %rax // 40
//cast to (Type**)
//cast to (char*)
	movq -32(%rbp), %rax // v
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 48
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 40
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 32
	movq %r10, (%rax)
	movq -32(%rbp), %rax // v
	pushq %rax // 40
//cast to (Var*[100])
//cast to (char*)
	movq _curr_scope(%rip), %rax // curr_scope
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 48
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 40
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 48
//cast to (int*)
//cast to (char*)
	movq _curr_scope(%rip), %rax // curr_scope
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 56
	movq $832, %rax
	movq %rax, %r10
	popq %rax // 48
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 56
//cast to (int*)
//cast to (char*)
	movq _curr_scope(%rip), %rax // curr_scope
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 64
	movq $832, %rax
	movq %rax, %r10
	popq %rax // 56
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 64
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 56
	addq %r10, %rax
	pushq %rax // 64
//cast to (int*)
//cast to (char*)
	movq _curr_scope(%rip), %rax // curr_scope
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $832, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 56
	movl %r10d, (%rax)
	popq %rax // 48
	movq %rax, %r10
	popq %rax // 40
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 32
	movq %r10, (%rax)
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 40
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 32
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE79
//call error_token
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 40
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 32
	imulq $40, %r10
	addq %r10, %rax
	pushq %rax // 40
	leaq L_.str.39(%rip), %rax
	pushq %rax // 48
	popq %rsi // 40
	popq %rdi // 32
	subq $0, %rsp // 32
	xorq %rax, %rax
	callq _error_token
	addq $0, %rsp // 32
	jmp END_IF79
ELSE79:
END_IF79:
//if begin
	movq _curr_func(%rip), %rax // curr_func
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR81
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 40
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 32
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR81:
	cmpq $0, %rax
	je ELSE80
//{ (678)
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 40
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 32
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 40
	movq $3, %rax
	movq %rax, %r10
	popq %rax // 32
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE82
//{ (680)
//cast to (int*)
//cast to (char*)
	movq _curr_func(%rip), %rax // curr_func
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 40
	movq $1776, %rax
	movq %rax, %r10
	popq %rax // 32
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 40
//cast to (int*)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
	movq -8(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 48
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 40
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 48
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 40
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 48
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 56
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 48
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	movq %rax, %r10
	popq %rax // 40
	imulq %r10, %rax
	movq %rax, %r10
	popq %rax // 32
	addq %r10, %rax
	pushq %rax // 40
//cast to (int*)
//cast to (char*)
	movq _curr_func(%rip), %rax // curr_func
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 48
	movq $1776, %rax
	movq %rax, %r10
	popq %rax // 40
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 32
	movl %r10d, (%rax)
//}
	jmp END_IF82
ELSE82:
//cast to (int*)
//cast to (char*)
	movq _curr_func(%rip), %rax // curr_func
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 40
	movq $1776, %rax
	movq %rax, %r10
	popq %rax // 32
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 40
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 48
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 40
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	movq %rax, %r10
	popq %rax // 32
	addq %r10, %rax
	pushq %rax // 40
//cast to (int*)
//cast to (char*)
	movq _curr_func(%rip), %rax // curr_func
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 48
	movq $1776, %rax
	movq %rax, %r10
	popq %rax // 40
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 32
	movl %r10d, (%rax)
END_IF82:
//call align
//cast to (int*)
//cast to (char*)
	movq _curr_func(%rip), %rax // curr_func
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 40
	movq $1776, %rax
	movq %rax, %r10
	popq %rax // 32
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 40
//cast to (int*)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
	movq -32(%rbp), %rax // v
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 48
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 40
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 48
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 40
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 48
	popq %rsi // 40
	popq %rdi // 32
	subq $0, %rsp // 32
	xorq %rax, %rax
	callq _align
	addq $0, %rsp // 32
	pushq %rax // 40
//cast to (int*)
//cast to (char*)
	movq _curr_func(%rip), %rax // curr_func
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 48
	movq $1776, %rax
	movq %rax, %r10
	popq %rax // 40
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 32
	movl %r10d, (%rax)
//cast to (int*)
//cast to (char*)
	movq _curr_func(%rip), %rax // curr_func
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 40
	movq $1776, %rax
	movq %rax, %r10
	popq %rax // 32
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 40
//cast to (int*)
//cast to (char*)
	movq -32(%rbp), %rax // v
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 48
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 40
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 32
	movl %r10d, (%rax)
//}
	jmp END_IF80
ELSE80:
END_IF80:
	movq -32(%rbp), %rax // v
	movq %rbp, %rsp
	popq %rbp
	ret
//}
	addq $32, %rsp // 0
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

//void skip(int type)
_skip:
	pushq %rbp
	movq %rsp, %rbp
	subq $4, %rsp // 4
	movl %edi, -4(%rbp) //type
//{ (693)
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 12
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 4
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 12
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 4
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 12
	movslq -4(%rbp), %rax // type
	movq %rax, %r10
	popq %rax // 4
	cmpq %r10, %rax
	setne %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE83
//call error_token
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 12
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 4
	imulq $40, %r10
	addq %r10, %rax
	pushq %rax // 12
	leaq L_.str.40(%rip), %rax
	pushq %rax // 20
//call token_type_name
	movslq -4(%rbp), %rax // type
	pushq %rax // 28
	popq %rdi // 20
	subq $12, %rsp // 32
	xorq %rax, %rax
	callq _token_type_name
	addq $12, %rsp // 20
	pushq %rax // 28
	popq %rdx // 20
	popq %rsi // 12
	popq %rdi // 4
	subq $12, %rsp // 16
	xorq %rax, %rax
	callq _error_token
	addq $12, %rsp // 4
	jmp END_IF83
ELSE83:
END_IF83:
	movslq _ct(%rip), %rax
	pushq %rax // 12
	movslq _ct(%rip), %rax
	pushq %rax // 20
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 12
	addq %r10, %rax
	movl %eax, _ct(%rip)
	popq %rax // 4
//}
	addq $4, %rsp // 0
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

//int is_typename(Token* tok)
_is_typename:
	pushq %rbp
	movq %rsp, %rbp
	subq $12, %rsp // 12
	movq %rdi, -8(%rbp) //tok
//{ (700)
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // tok
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 20
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 12
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 20
	movq $269, %rax
	movq %rax, %r10
	popq %rax // 12
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR85
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // tok
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 20
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 12
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 20
	movq $270, %rax
	movq %rax, %r10
	popq %rax // 12
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR85:
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR86
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // tok
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 20
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 12
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 20
	movq $271, %rax
	movq %rax, %r10
	popq %rax // 12
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR86:
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR87
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // tok
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 20
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 12
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 20
	movq $272, %rax
	movq %rax, %r10
	popq %rax // 12
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR87:
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR88
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // tok
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 20
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 12
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 20
	movq $273, %rax
	movq %rax, %r10
	popq %rax // 12
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR88:
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR89
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // tok
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 20
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 12
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 20
	movq $280, %rax
	movq %rax, %r10
	popq %rax // 12
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR89:
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR90
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // tok
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 20
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 12
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 20
	movq $279, %rax
	movq %rax, %r10
	popq %rax // 12
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR90:
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR91
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // tok
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 20
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 12
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 20
	movq $270, %rax
	movq %rax, %r10
	popq %rax // 12
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR91:
	cmpq $0, %rax
	je ELSE84
	movq $1, %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF84
ELSE84:
END_IF84:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // tok
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 20
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 12
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 20
	movq $257, %rax
	movq %rax, %r10
	popq %rax // 12
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE92
//{ (713)
//for init
	movq $0, %rax
	movl %eax, -12(%rbp) // i = rax
FOR93:
	movslq -12(%rbp), %rax // i
	pushq %rax // 20
	movslq _types_declared_count(%rip), %rax
	movq %rax, %r10
	popq %rax // 12
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je FOR_END93
//{ (715)
//if begin
//call strcmp
//cast to (char**)
//cast to (char*)
	movq _types_declared@GOTPCREL(%rip), %rax
	pushq %rax // 20
	movslq -12(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 12
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 20
	movq $40, %rax
	movq %rax, %r10
	popq %rax // 12
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 20
//cast to (char**)
//cast to (char*)
	movq -8(%rbp), %rax // tok
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 28
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 20
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 28
	popq %rsi // 20
	popq %rdi // 12
	subq $4, %rsp // 16
	xorq %rax, %rax
	callq _strcmp
	addq $4, %rsp // 12
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE94
	movq $1, %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF94
ELSE94:
END_IF94:
//}
FOR_INC93:
	movslq -12(%rbp), %rax // i
	pushq %rax // 20
	movslq -12(%rbp), %rax // i
	pushq %rax // 28
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 20
	addq %r10, %rax
	movl %eax, -12(%rbp) // i = rax
	popq %rax // 12
	jmp FOR93
FOR_END93:
//}
	jmp END_IF92
ELSE92:
END_IF92:
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret
//}
	addq $12, %rsp // 0
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

//Type* find_binary_op_type(Type* t1, Type* t2)
_find_binary_op_type:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp // 16
	movq %rdi, -8(%rbp) //t1
	movq %rsi, -16(%rbp) //t2
//{ (724)
//if begin
//call types_are_equal
	movq -8(%rbp), %rax // t1
	pushq %rax // 24
	movq -16(%rbp), %rax // t2
	pushq %rax // 32
	popq %rsi // 24
	popq %rdi // 16
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _types_are_equal
	addq $0, %rsp // 16
	cmpq $0, %rax
	je ELSE95
	movq -8(%rbp), %rax // t1
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF95
ELSE95:
END_IF95:
//if begin
//cast to (Type**)
//cast to (char*)
	movq -8(%rbp), %rax // t1
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 24
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 16
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR97
//cast to (Type**)
//cast to (char*)
	movq -16(%rbp), %rax // t2
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 24
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 16
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR97:
	cmpq $0, %rax
	je ELSE96
	jmp END_IF96
ELSE96:
END_IF96:
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret
//}
	addq $16, %rsp // 0
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

//char* strjoin(char* s1, char* s2)
_strjoin:
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp // 32
	movq %rdi, -8(%rbp) //s1
	movq %rsi, -16(%rbp) //s2
//{ (734)
//call strlen
	movq -8(%rbp), %rax // s1
	pushq %rax // 40
	popq %rdi // 32
	subq $0, %rsp // 32
	xorq %rax, %rax
	callq _strlen
	addq $0, %rsp // 32
	movl %eax, -20(%rbp) // l1 = rax
//call strlen
	movq -16(%rbp), %rax // s2
	pushq %rax // 40
	popq %rdi // 32
	subq $0, %rsp // 32
	xorq %rax, %rax
	callq _strlen
	addq $0, %rsp // 32
	movl %eax, -24(%rbp) // l2 = rax
//cast to (char*)
//call malloc
	movslq -20(%rbp), %rax // l1
	pushq %rax // 40
	movslq -24(%rbp), %rax // l2
	movq %rax, %r10
	popq %rax // 32
	addq %r10, %rax
	pushq %rax // 40
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 32
	addq %r10, %rax
	pushq %rax // 40
	popq %rdi // 32
	subq $0, %rsp // 32
	xorq %rax, %rax
	callq _malloc
	addq $0, %rsp // 32
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq %rax, -32(%rbp) // s = rax
//call memcpy
	movq -32(%rbp), %rax // s
	pushq %rax // 40
	movq -8(%rbp), %rax // s1
	pushq %rax // 48
	movslq -20(%rbp), %rax // l1
	pushq %rax // 56
	popq %rdx // 48
	popq %rsi // 40
	popq %rdi // 32
	subq $0, %rsp // 32
	xorq %rax, %rax
	callq _memcpy
	addq $0, %rsp // 32
//call memcpy
	movq -32(%rbp), %rax // s
	pushq %rax // 40
	movslq -20(%rbp), %rax // l1
	movq %rax, %r10
	popq %rax // 32
	imulq $1, %r10
	addq %r10, %rax
	pushq %rax // 40
	movq -16(%rbp), %rax // s2
	pushq %rax // 48
	movslq -24(%rbp), %rax // l2
	pushq %rax // 56
	popq %rdx // 48
	popq %rsi // 40
	popq %rdi // 32
	subq $0, %rsp // 32
	xorq %rax, %rax
	callq _memcpy
	addq $0, %rsp // 32
//cast to (char)
	movq $0, %rax
	movsbq %al, %r10
	movq %r10, %rax
	pushq %rax // 40
	movq -32(%rbp), %rax // s
	pushq %rax // 48
	movslq -20(%rbp), %rax // l1
	pushq %rax // 56
	movslq -24(%rbp), %rax // l2
	movq %rax, %r10
	popq %rax // 48
	addq %r10, %rax
	movq %rax, %r10
	popq %rax // 40
	imulq $1, %r10
	addq %r10, %rax
	popq %r10 // 32
	movb %r10b, (%rax)
	movq -32(%rbp), %rax // s
	movq %rbp, %rsp
	popq %rbp
	ret
//}
	addq $32, %rsp // 0
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

//char* get_type_str(Type* type)
_get_type_str:
	pushq %rbp
	movq %rsp, %rbp
	subq $50, %rsp // 50
	movq %rdi, -8(%rbp) //type
//{ (745)
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 58
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 50
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 58
	movq $7, %rax
	movq %rax, %r10
	popq %rax // 50
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE98
//{ (747)
//cast to (char**)
//cast to (char*)
	movq -8(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 58
	movq $40, %rax
	movq %rax, %r10
	popq %rax // 50
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	popq %rbp
	ret
//}
	jmp END_IF98
ELSE98:
END_IF98:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 58
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 50
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 58
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 50
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE99
//{ (751)
//call strjoin
//call get_type_str
//cast to (Type**)
//cast to (char*)
	movq -8(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 58
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 50
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 58
	popq %rdi // 50
	subq $14, %rsp // 64
	xorq %rax, %rax
	callq _get_type_str
	addq $14, %rsp // 50
	pushq %rax // 58
	leaq L_.str.41(%rip), %rax
	pushq %rax // 66
	popq %rsi // 58
	popq %rdi // 50
	subq $14, %rsp // 64
	xorq %rax, %rax
	callq _strjoin
	addq $14, %rsp // 50
	movq %rbp, %rsp
	popq %rbp
	ret
//}
	jmp END_IF99
ELSE99:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 58
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 50
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 58
	movq $3, %rax
	movq %rax, %r10
	popq %rax // 50
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE100
//{ (755)
//call sprintf
	movq %rbp, %rax // s
	subq $50, %rax
	pushq %rax // 58
	leaq L_.str.42(%rip), %rax
	pushq %rax // 66
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 74
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 66
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 74
	popq %rdx // 66
	popq %rsi // 58
	popq %rdi // 50
	subq $14, %rsp // 64
	xorq %rax, %rax
	callq _sprintf
	addq $14, %rsp // 50
//call strjoin
//call get_type_str
//cast to (Type**)
//cast to (char*)
	movq -8(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 58
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 50
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 58
	popq %rdi // 50
	subq $14, %rsp // 64
	xorq %rax, %rax
	callq _get_type_str
	addq $14, %rsp // 50
	pushq %rax // 58
	movq %rbp, %rax // s
	subq $50, %rax
	pushq %rax // 66
	popq %rsi // 58
	popq %rdi // 50
	subq $14, %rsp // 64
	xorq %rax, %rax
	callq _strjoin
	addq $14, %rsp // 50
	movq %rbp, %rsp
	popq %rbp
	ret
//}
	jmp END_IF100
ELSE100:
END_IF100:
END_IF99:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 58
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 50
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 58
	movq $2, %rax
	movq %rax, %r10
	popq %rax // 50
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE101
	leaq L_.str.21(%rip), %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF101
ELSE101:
END_IF101:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 58
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 50
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 58
	movq $5, %rax
	movq %rax, %r10
	popq %rax // 50
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE102
	leaq L_.str.22(%rip), %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF102
ELSE102:
END_IF102:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 58
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 50
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 58
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 50
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE103
	leaq L_.str.0(%rip), %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF103
ELSE103:
END_IF103:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 58
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 50
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 58
	movq $4, %rax
	movq %rax, %r10
	popq %rax // 50
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE104
	leaq L_.str.23(%rip), %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF104
ELSE104:
END_IF104:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 58
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 50
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 58
	movq $6, %rax
	movq %rax, %r10
	popq %rax // 50
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE105
	leaq L_.str.24(%rip), %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF105
ELSE105:
END_IF105:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 58
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 50
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 58
	movq $9, %rax
	movq %rax, %r10
	popq %rax // 50
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE106
	leaq L_.str.43(%rip), %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF106
ELSE106:
END_IF106:
//}
	addq $50, %rsp // 0
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

//void implicit_cast(Node** node, Type* type)
_implicit_cast:
	pushq %rbp
	movq %rsp, %rbp
	subq $24, %rsp // 24
	movq %rdi, -8(%rbp) //node
	movq %rsi, -16(%rbp) //type
//{ (772)
//call add_type
	movq -8(%rbp), %rax // node
	movq (%rax), %rax
	pushq %rax // 32
	popq %rdi // 24
	subq $8, %rsp // 32
	xorq %rax, %rax
	callq _add_type
	addq $8, %rsp // 24
//if begin
//call types_are_equal
	movq -16(%rbp), %rax // type
	pushq %rax // 32
//cast to (Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 40
	movq $144, %rax
	movq %rax, %r10
	popq %rax // 32
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 40
	popq %rsi // 32
	popq %rdi // 24
	subq $8, %rsp // 32
	xorq %rax, %rax
	callq _types_are_equal
	addq $8, %rsp // 24
	cmpq $0, %rax
	je ELSE107
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF107
ELSE107:
END_IF107:
//call new_node
	movq $22, %rax
	pushq %rax // 32
	popq %rdi // 24
	subq $8, %rsp // 32
	xorq %rax, %rax
	callq _new_node
	addq $8, %rsp // 24
	movq %rax, -24(%rbp) // cast = rax
	movq -8(%rbp), %rax // node
	movq (%rax), %rax
	pushq %rax // 32
//cast to (Node**)
//cast to (char*)
	movq -24(%rbp), %rax // cast
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 40
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 32
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 24
	movq %r10, (%rax)
	movq -16(%rbp), %rax // type
	pushq %rax // 32
//cast to (Type**)
//cast to (char*)
	movq -24(%rbp), %rax // cast
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 40
	movq $144, %rax
	movq %rax, %r10
	popq %rax // 32
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 24
	movq %r10, (%rax)
	movq -24(%rbp), %rax // cast
	pushq %rax // 32
	movq -8(%rbp), %rax // node
	popq %r10 // 24
	movq %r10, (%rax)
//}
	addq $24, %rsp // 0
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

//Type* find_common_type(Type* t1, Type* t2)
_find_common_type:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp // 16
	movq %rdi, -8(%rbp) //t1
	movq %rsi, -16(%rbp) //t2
//{ (783)
//if begin
//cast to (Type**)
//cast to (char*)
	movq -8(%rbp), %rax // t1
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 24
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 16
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	cmpq $0, %rax
	je ELSE108
	movq -8(%rbp), %rax // t1
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF108
ELSE108:
END_IF108:
//if begin
//cast to (Type**)
//cast to (char*)
	movq -16(%rbp), %rax // t2
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 24
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 16
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	cmpq $0, %rax
	je ELSE109
	movq -16(%rbp), %rax // t2
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF109
ELSE109:
END_IF109:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // t1
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 24
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 16
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 24
	movq $4, %rax
	movq %rax, %r10
	popq %rax // 16
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE110
	movq _type_int(%rip), %rax // type_int
	movq %rax, -8(%rbp) // t1 = rax
	jmp END_IF110
ELSE110:
END_IF110:
//if begin
//cast to (int*)
//cast to (char*)
	movq -16(%rbp), %rax // t2
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 24
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 16
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 24
	movq $4, %rax
	movq %rax, %r10
	popq %rax // 16
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE111
	movq _type_int(%rip), %rax // type_int
	movq %rax, -16(%rbp) // t2 = rax
	jmp END_IF111
ELSE111:
END_IF111:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // t1
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 24
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 16
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 24
//cast to (int*)
//cast to (char*)
	movq -16(%rbp), %rax // t2
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 32
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 24
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	movq %rax, %r10
	popq %rax // 16
	cmpq %r10, %rax
	setne %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE112
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // t1
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 24
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 16
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 24
//cast to (int*)
//cast to (char*)
	movq -16(%rbp), %rax // t2
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 32
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 24
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	movq %rax, %r10
	popq %rax // 16
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je QUES113
	movq -16(%rbp), %rax // t2
	jmp QUES_END113
QUES113:
	movq -8(%rbp), %rax // t1
QUES_END113:
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF112
ELSE112:
END_IF112:
//cast to (int*)
//cast to (char*)
	movq -16(%rbp), %rax // t2
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 24
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 16
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	cmpq $0, %rax
	je QUES114
	movq -16(%rbp), %rax // t2
	jmp QUES_END114
QUES114:
	movq -8(%rbp), %rax // t1
QUES_END114:
	movq %rbp, %rsp
	popq %rbp
	ret
//}
	addq $16, %rsp // 0
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

//Type* add_type(Node* node)
_add_type:
	pushq %rbp
	movq %rsp, %rbp
	subq $64, %rsp // 64
	movq %rdi, -8(%rbp) //node
//{ (798)
	movq _type_void(%rip), %rax // type_void
	movq %rax, -16(%rbp) // t = rax
//if begin
	movq -8(%rbp), %rax // node
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE115
	movq -16(%rbp), %rax // t
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF115
ELSE115:
END_IF115:
//if begin
//cast to (Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $144, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	cmpq $0, %rax
	je ELSE116
//cast to (Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $144, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	movq %rax, -16(%rbp) // t = rax
	jmp END_IF116
ELSE116:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 72
	movq $4, %rax
	movq %rax, %r10
	popq %rax // 64
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE117
//{ (806)
//if begin
//cast to (long*)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 72
//cast to (long)
	movq $2147483647, %rax
	movq %rax, %r10
	popq %rax // 64
	cmpq %r10, %rax
	setg %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR119
//cast to (long*)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 72
	movabsq $2147483648, %rax
	xorq %r10, %r10
	subq %rax, %r10
	movq %r10, %rax
	movq %rax, %r10
	popq %rax // 64
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR119:
	cmpq $0, %rax
	je ELSE118
	movq _type_long(%rip), %rax // type_long
	movq %rax, -16(%rbp) // t = rax
	jmp END_IF118
ELSE118:
	movq _type_int(%rip), %rax // type_int
	movq %rax, -16(%rbp) // t = rax
END_IF118:
//}
	jmp END_IF117
ELSE117:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 72
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 64
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE120
//{ (813)
//call add_type
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 72
	popq %rdi // 64
	subq $0, %rsp // 64
	xorq %rax, %rax
	callq _add_type
	addq $0, %rsp // 64
	movq %rax, -16(%rbp) // t = rax
//}
	jmp END_IF120
ELSE120:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 72
	movq $14, %rax
	movq %rax, %r10
	popq %rax // 64
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE121
//{ (817)
//if begin
//cast to (int*)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 72
	movq $275, %rax
	movq %rax, %r10
	popq %rax // 64
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR123
//cast to (int*)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 72
	movq $276, %rax
	movq %rax, %r10
	popq %rax // 64
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR123:
	cmpq $0, %rax
	je ELSE122
//{ (819)
//call add_type
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 72
	popq %rdi // 64
	subq $0, %rsp // 64
	xorq %rax, %rax
	callq _add_type
	addq $0, %rsp // 64
	movq %rax, -16(%rbp) // t = rax
//if begin
//cast to (int*)
//cast to (char*)
	movq -16(%rbp), %rax // t
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 72
	movq $2, %rax
	movq %rax, %r10
	popq %rax // 64
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE124
//call error_token
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 72
	leaq L_.str.44(%rip), %rax
	pushq %rax // 80
//call token_type_name
//cast to (int*)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 88
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 80
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 88
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 80
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 88
	popq %rdi // 80
	subq $0, %rsp // 80
	xorq %rax, %rax
	callq _token_type_name
	addq $0, %rsp // 80
	pushq %rax // 88
	popq %rdx // 80
	popq %rsi // 72
	popq %rdi // 64
	subq $0, %rsp // 64
	xorq %rax, %rax
	callq _error_token
	addq $0, %rsp // 64
	jmp END_IF124
ELSE124:
END_IF124:
//}
	jmp END_IF122
ELSE122:
//if begin
//cast to (int*)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 72
	movq $33, %rax
	movq %rax, %r10
	popq %rax // 64
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE125
//{ (825)
//call add_type
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 72
	popq %rdi // 64
	subq $0, %rsp // 64
	xorq %rax, %rax
	callq _add_type
	addq $0, %rsp // 64
	movq _type_int(%rip), %rax // type_int
	movq %rax, -16(%rbp) // t = rax
//}
	jmp END_IF125
ELSE125:
END_IF125:
END_IF122:
//}
	jmp END_IF121
ELSE121:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 72
	movq $19, %rax
	movq %rax, %r10
	popq %rax // 64
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE126
//{ (833)
//call new_type
	movq $1, %rax
	pushq %rax // 72
	popq %rdi // 64
	subq $0, %rsp // 64
	xorq %rax, %rax
	callq _new_type
	addq $0, %rsp // 64
	movq %rax, -16(%rbp) // t = rax
	movq _type_char(%rip), %rax // type_char
	pushq %rax // 72
//cast to (Type**)
//cast to (char*)
	movq -16(%rbp), %rax // t
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 80
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 72
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 64
	movq %r10, (%rax)
//}
	jmp END_IF126
ELSE126:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 72
	movq $2, %rax
	movq %rax, %r10
	popq %rax // 64
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE127
//cast to (Type**)
//cast to (char*)
//cast to (Var**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	movq %rax, -16(%rbp) // t = rax
	jmp END_IF127
ELSE127:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 72
	movq $13, %rax
	movq %rax, %r10
	popq %rax // 64
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE128
//cast to (Type**)
//cast to (char*)
//cast to (Func**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $152, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	movq %rax, -16(%rbp) // t = rax
	jmp END_IF128
ELSE128:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 72
	movq $17, %rax
	movq %rax, %r10
	popq %rax // 64
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE129
//{ (842)
//call new_type
	movq $1, %rax
	pushq %rax // 72
	popq %rdi // 64
	subq $0, %rsp // 64
	xorq %rax, %rax
	callq _new_type
	addq $0, %rsp // 64
	movq %rax, -16(%rbp) // t = rax
//call add_type
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 72
	popq %rdi // 64
	subq $0, %rsp // 64
	xorq %rax, %rax
	callq _add_type
	addq $0, %rsp // 64
	pushq %rax // 72
//cast to (Type**)
//cast to (char*)
	movq -16(%rbp), %rax // t
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 80
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 72
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 64
	movq %r10, (%rax)
//if begin
//cast to (int*)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
	movq -16(%rbp), %rax // t
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 72
	movq $2, %rax
	movq %rax, %r10
	popq %rax // 64
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE130
//call error_token
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 72
	leaq L_.str.45(%rip), %rax
	pushq %rax // 80
	popq %rsi // 72
	popq %rdi // 64
	subq $0, %rsp // 64
	xorq %rax, %rax
	callq _error_token
	addq $0, %rsp // 64
	jmp END_IF130
ELSE130:
END_IF130:
//}
	jmp END_IF129
ELSE129:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 72
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 64
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE131
//{ (849)
//call add_type
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 72
	popq %rdi // 64
	subq $0, %rsp // 64
	xorq %rax, %rax
	callq _add_type
	addq $0, %rsp // 64
	movq %rax, -24(%rbp) // tt = rax
//if begin
//cast to (Type**)
//cast to (char*)
	movq -24(%rbp), %rax // tt
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE132
//call error_token
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 72
	leaq L_.str.46(%rip), %rax
	pushq %rax // 80
	popq %rsi // 72
	popq %rdi // 64
	subq $0, %rsp // 64
	xorq %rax, %rax
	callq _error_token
	addq $0, %rsp // 64
	jmp END_IF132
ELSE132:
END_IF132:
//if begin
//cast to (int*)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
	movq -24(%rbp), %rax // tt
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 72
	movq $2, %rax
	movq %rax, %r10
	popq %rax // 64
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE133
//call error_token
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 72
	leaq L_.str.47(%rip), %rax
	pushq %rax // 80
	popq %rsi // 72
	popq %rdi // 64
	subq $0, %rsp // 64
	xorq %rax, %rax
	callq _error_token
	addq $0, %rsp // 64
	jmp END_IF133
ELSE133:
END_IF133:
//cast to (Type**)
//cast to (char*)
	movq -24(%rbp), %rax // tt
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	movq %rax, -16(%rbp) // t = rax
//}
	jmp END_IF131
ELSE131:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 72
	movq $7, %rax
	movq %rax, %r10
	popq %rax // 64
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE134
//{ (858)
//call add_type
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 72
	popq %rdi // 64
	subq $0, %rsp // 64
	xorq %rax, %rax
	callq _add_type
	addq $0, %rsp // 64
	movq %rax, -16(%rbp) // t = rax
//if begin
//cast to (int*)
//cast to (char*)
	movq -16(%rbp), %rax // t
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 72
	movq $2, %rax
	movq %rax, %r10
	popq %rax // 64
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE135
//call error_token
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 72
	leaq L_.str.48(%rip), %rax
	pushq %rax // 80
	popq %rsi // 72
	popq %rdi // 64
	subq $0, %rsp // 64
	xorq %rax, %rax
	callq _error_token
	addq $0, %rsp // 64
	jmp END_IF135
ELSE135:
END_IF135:
//}
	jmp END_IF134
ELSE134:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 72
	movq $22, %rax
	movq %rax, %r10
	popq %rax // 64
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE136
//{ (865)
//cast to (Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $112, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	movq %rax, -16(%rbp) // t = rax
//call add_type
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 72
	popq %rdi // 64
	subq $0, %rsp // 64
	xorq %rax, %rax
	callq _add_type
	addq $0, %rsp // 64
//}
	jmp END_IF136
ELSE136:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 72
	movq $5, %rax
	movq %rax, %r10
	popq %rax // 64
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE137
//{ (870)
//cast to (int*)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	movl %eax, -28(%rbp) // tok = rax
//call add_type
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 72
	popq %rdi // 64
	subq $0, %rsp // 64
	xorq %rax, %rax
	callq _add_type
	addq $0, %rsp // 64
//call add_type
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 72
	popq %rdi // 64
	subq $0, %rsp // 64
	xorq %rax, %rax
	callq _add_type
	addq $0, %rsp // 64
//cast to (Type**)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $144, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	movq %rax, -40(%rbp) // t1 = rax
//cast to (Type**)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $144, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	movq %rax, -48(%rbp) // t2 = rax
//if begin
//cast to (int*)
//cast to (char*)
	movq -40(%rbp), %rax // t1
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 72
	movq $2, %rax
	movq %rax, %r10
	popq %rax // 64
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR139
//cast to (int*)
//cast to (char*)
	movq -48(%rbp), %rax // t2
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 72
	movq $2, %rax
	movq %rax, %r10
	popq %rax // 64
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR139:
	cmpq $0, %rax
	je ELSE138
	jmp END_IF138
ELSE138:
END_IF138:
//if begin
//cast to (Type**)
//cast to (char*)
	movq -40(%rbp), %rax // t1
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR141
//cast to (Type**)
//cast to (char*)
	movq -48(%rbp), %rax // t2
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR141:
	cmpq $0, %rax
	je ELSE140
//{ (881)
//if begin
//call type_match
	movslq -28(%rbp), %rax // tok
	pushq %rax // 72
	movq $42, %rax
	pushq %rax // 80
	movq $47, %rax
	pushq %rax // 88
	movq $37, %rax
	pushq %rax // 96
	movq $1, %rax
	xorq %r10, %r10
	subq %rax, %r10
	movq %r10, %rax
	pushq %rax // 104
	popq %r8 // 96
	popq %rcx // 88
	popq %rdx // 80
	popq %rsi // 72
	popq %rdi // 64
	subq $0, %rsp // 64
	xorq %rax, %rax
	callq _type_match
	addq $0, %rsp // 64
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR143
//cast to (Type**)
//cast to (char*)
	movq -40(%rbp), %rax // t1
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR144
	movslq -28(%rbp), %rax // tok
	pushq %rax // 72
	movq $45, %rax
	movq %rax, %r10
	popq %rax // 64
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR144:
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR143:
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR145
//cast to (Type**)
//cast to (char*)
	movq -40(%rbp), %rax // t1
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR146
//cast to (Type**)
//cast to (char*)
	movq -48(%rbp), %rax // t2
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR146:
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR147
	movslq -28(%rbp), %rax // tok
	pushq %rax // 72
	movq $43, %rax
	movq %rax, %r10
	popq %rax // 64
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR147:
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR145:
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR148
//cast to (Type**)
//cast to (char*)
	movq -40(%rbp), %rax // t1
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR149
//cast to (Type**)
//cast to (char*)
	movq -48(%rbp), %rax // t2
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR149:
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR150
	movslq -28(%rbp), %rax // tok
	pushq %rax // 72
	movq $45, %rax
	movq %rax, %r10
	popq %rax // 64
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR150:
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR151
//call types_are_equal
	movq -40(%rbp), %rax // t1
	pushq %rax // 72
	movq -48(%rbp), %rax // t2
	pushq %rax // 80
	popq %rsi // 72
	popq %rdi // 64
	subq $0, %rsp // 64
	xorq %rax, %rax
	callq _types_are_equal
	addq $0, %rsp // 64
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR151:
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR148:
	cmpq $0, %rax
	je ELSE142
//call error_token
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 72
	leaq L_.str.49(%rip), %rax
	pushq %rax // 80
//call get_type_str
	movq -40(%rbp), %rax // t1
	pushq %rax // 88
	popq %rdi // 80
	subq $0, %rsp // 80
	xorq %rax, %rax
	callq _get_type_str
	addq $0, %rsp // 80
	pushq %rax // 88
//call get_type_str
	movq -48(%rbp), %rax // t2
	pushq %rax // 96
	popq %rdi // 88
	subq $8, %rsp // 96
	xorq %rax, %rax
	callq _get_type_str
	addq $8, %rsp // 88
	pushq %rax // 96
	popq %rcx // 88
	popq %rdx // 80
	popq %rsi // 72
	popq %rdi // 64
	subq $0, %rsp // 64
	xorq %rax, %rax
	callq _error_token
	addq $0, %rsp // 64
	jmp END_IF142
ELSE142:
END_IF142:
//if begin
//cast to (Type**)
//cast to (char*)
	movq -40(%rbp), %rax // t1
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR153
//cast to (Type**)
//cast to (char*)
	movq -48(%rbp), %rax // t2
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR153:
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR154
	movslq -28(%rbp), %rax // tok
	pushq %rax // 72
	movq $43, %rax
	movq %rax, %r10
	popq %rax // 64
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR155
	movslq -28(%rbp), %rax // tok
	pushq %rax // 72
	movq $45, %rax
	movq %rax, %r10
	popq %rax // 64
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR155:
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR154:
	cmpq $0, %rax
	je ELSE152
	movq -40(%rbp), %rax // t1
	movq %rax, -16(%rbp) // t = rax
	jmp END_IF152
ELSE152:
//if begin
//cast to (Type**)
//cast to (char*)
	movq -48(%rbp), %rax // t2
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR157
//cast to (Type**)
//cast to (char*)
	movq -40(%rbp), %rax // t1
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR157:
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR158
	movslq -28(%rbp), %rax // tok
	pushq %rax // 72
	movq $43, %rax
	movq %rax, %r10
	popq %rax // 64
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR158:
	cmpq $0, %rax
	je ELSE156
	movq -48(%rbp), %rax // t2
	movq %rax, -16(%rbp) // t = rax
	jmp END_IF156
ELSE156:
	movq _type_int(%rip), %rax // type_int
	movq %rax, -16(%rbp) // t = rax
END_IF156:
END_IF152:
//}
	jmp END_IF140
ELSE140:
//{ (894)
//call find_common_type
//cast to (Type**)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $144, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 72
//cast to (Type**)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 80
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 72
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 80
	movq $144, %rax
	movq %rax, %r10
	popq %rax // 72
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 80
	popq %rsi // 72
	popq %rdi // 64
	subq $0, %rsp // 64
	xorq %rax, %rax
	callq _find_common_type
	addq $0, %rsp // 64
	movq %rax, -56(%rbp) // tt = rax
//call implicit_cast
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq -56(%rbp), %rax // tt
	pushq %rax // 80
	popq %rsi // 72
	popq %rdi // 64
	subq $0, %rsp // 64
	xorq %rax, %rax
	callq _implicit_cast
	addq $0, %rsp // 64
//call implicit_cast
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq -56(%rbp), %rax // tt
	pushq %rax // 80
	popq %rsi // 72
	popq %rdi // 64
	subq $0, %rsp // 64
	xorq %rax, %rax
	callq _implicit_cast
	addq $0, %rsp // 64
//if begin
//call type_match
//cast to (int*)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 72
	movq $43, %rax
	pushq %rax // 80
	movq $45, %rax
	pushq %rax // 88
	movq $42, %rax
	pushq %rax // 96
	movq $47, %rax
	pushq %rax // 104
	movq $37, %rax
	pushq %rax // 112
	popq %r9 // 104
	popq %r8 // 96
	popq %rcx // 88
	popq %rdx // 80
	popq %rsi // 72
	popq %rdi // 64
	subq $8, %rsp // 72
	movq $1, %rax
	xorq %r10, %r10
	subq %rax, %r10
	movq %r10, %rax
	pushq %rax // 80
	xorq %rax, %rax
	callq _type_match
	addq $16, %rsp // 64
	cmpq $0, %rax
	je ELSE159
//cast to (Type**)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $144, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	movq %rax, -16(%rbp) // t = rax
	jmp END_IF159
ELSE159:
	movq _type_int(%rip), %rax // type_int
	movq %rax, -16(%rbp) // t = rax
END_IF159:
//}
END_IF140:
//}
	jmp END_IF137
ELSE137:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 72
	movq $6, %rax
	movq %rax, %r10
	popq %rax // 64
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE160
//{ (905)
//call add_type
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 72
	popq %rdi // 64
	subq $0, %rsp // 64
	xorq %rax, %rax
	callq _add_type
	addq $0, %rsp // 64
	movq %rax, -16(%rbp) // t = rax
//call add_type
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 72
	popq %rdi // 64
	subq $0, %rsp // 64
	xorq %rax, %rax
	callq _add_type
	addq $0, %rsp // 64
//call implicit_cast
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq -16(%rbp), %rax // t
	pushq %rax // 80
	popq %rsi // 72
	popq %rdi // 64
	subq $0, %rsp // 64
	xorq %rax, %rax
	callq _implicit_cast
	addq $0, %rsp // 64
//}
	jmp END_IF160
ELSE160:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 72
	movq $23, %rax
	movq %rax, %r10
	popq %rax // 64
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE161
//{ (912)
//call add_type
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $56, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 72
	popq %rdi // 64
	subq $0, %rsp // 64
	xorq %rax, %rax
	callq _add_type
	addq $0, %rsp // 64
//call add_type
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 72
	popq %rdi // 64
	subq $0, %rsp // 64
	xorq %rax, %rax
	callq _add_type
	addq $0, %rsp // 64
//call add_type
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 72
	popq %rdi // 64
	subq $0, %rsp // 64
	xorq %rax, %rax
	callq _add_type
	addq $0, %rsp // 64
//call find_common_type
//cast to (Type**)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $144, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 72
//cast to (Type**)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 80
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 72
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 80
	movq $144, %rax
	movq %rax, %r10
	popq %rax // 72
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 80
	popq %rsi // 72
	popq %rdi // 64
	subq $0, %rsp // 64
	xorq %rax, %rax
	callq _find_common_type
	addq $0, %rsp // 64
	movq %rax, -64(%rbp) // tt = rax
//call implicit_cast
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq -64(%rbp), %rax // tt
	pushq %rax // 80
	popq %rsi // 72
	popq %rdi // 64
	subq $0, %rsp // 64
	xorq %rax, %rax
	callq _implicit_cast
	addq $0, %rsp // 64
//call implicit_cast
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq -64(%rbp), %rax // tt
	pushq %rax // 80
	popq %rsi // 72
	popq %rdi // 64
	subq $0, %rsp // 64
	xorq %rax, %rax
	callq _implicit_cast
	addq $0, %rsp // 64
	movq -64(%rbp), %rax // tt
	movq %rax, -16(%rbp) // t = rax
//}
	jmp END_IF161
ELSE161:
END_IF161:
END_IF160:
END_IF137:
END_IF136:
END_IF134:
END_IF131:
END_IF129:
END_IF128:
END_IF127:
END_IF126:
END_IF121:
END_IF120:
END_IF117:
END_IF116:
	movq -16(%rbp), %rax // t
	pushq %rax // 72
//cast to (Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 80
	movq $144, %rax
	movq %rax, %r10
	popq %rax // 72
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 64
	movq %r10, (%rax)
//call add_type
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $104, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 72
	popq %rdi // 64
	subq $0, %rsp // 64
	xorq %rax, %rax
	callq _add_type
	addq $0, %rsp // 64
	movq -16(%rbp), %rax // t
	movq %rbp, %rsp
	popq %rbp
	ret
//}
	addq $64, %rsp // 0
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

//Node* parse(char* s)
_parse:
	pushq %rbp
	movq %rsp, %rbp
	subq $144, %rsp // 144
	movq %rdi, -8(%rbp) //s
//{ (929)
//call add_func
	leaq L_.str.50(%rip), %rax
	pushq %rax // 152
	movq _type_void(%rip), %rax // type_void
	pushq %rax // 160
	popq %rsi // 152
	popq %rdi // 144
	subq $0, %rsp // 144
	xorq %rax, %rax
	callq _add_func
	addq $0, %rsp // 144
//call tokenize
	movq -8(%rbp), %rax // s
	pushq %rax // 152
	popq %rdi // 144
	subq $0, %rsp // 144
	xorq %rax, %rax
	callq _tokenize
	addq $0, %rsp // 144
	movq $0, %rax
	movl %eax, _ct(%rip)
//call new_node
	movq $1, %rax
	pushq %rax // 152
	popq %rdi // 144
	subq $0, %rsp // 144
	xorq %rax, %rax
	callq _new_node
	addq $0, %rsp // 144
	movq %rax, -16(%rbp) // prog = rax
//call new_scope
	subq $0, %rsp // 144
	xorq %rax, %rax
	callq _new_scope
	addq $0, %rsp // 144
	movq %rax, _curr_scope(%rip)
//cast to (Scope*)
	movq $0, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 152
//cast to (Scope**)
//cast to (char*)
	movq _curr_scope(%rip), %rax // curr_scope
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 160
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 152
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 144
	movq %r10, (%rax)
	movq -16(%rbp), %rax // prog
	movq %rax, -24(%rbp) // curr = rax
WHILE162:
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 152
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 152
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	cmpq $0, %rax
	je WHILE_END162
//{ (940)
	movslq _ct(%rip), %rax
	movl %eax, -28(%rbp) // save = rax
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 152
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 152
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 152
	movq $289, %rax
	movq %rax, %r10
	popq %rax // 144
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE163
//{ (944)
	movslq _ct(%rip), %rax
	pushq %rax // 152
	movslq _ct(%rip), %rax
	pushq %rax // 160
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 152
	addq %r10, %rax
	movl %eax, _ct(%rip)
	popq %rax // 144
//call printf
	leaq L_.str.51(%rip), %rax
	pushq %rax // 152
	popq %rdi // 144
	subq $0, %rsp // 144
	xorq %rax, %rax
	callq _printf
	addq $0, %rsp // 144
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 152
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 152
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 152
	movq $257, %rax
	movq %rax, %r10
	popq %rax // 144
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE164
//{ (951)
//call printf
	leaq L_.str.52(%rip), %rax
	pushq %rax // 152
//cast to (char**)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 160
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 152
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 160
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 152
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 160
	popq %rsi // 152
	popq %rdi // 144
	subq $0, %rsp // 144
	xorq %rax, %rax
	callq _printf
	addq $0, %rsp // 144
	movslq _ct(%rip), %rax
	pushq %rax // 152
	movslq _ct(%rip), %rax
	pushq %rax // 160
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 152
	addq %r10, %rax
	movl %eax, _ct(%rip)
	popq %rax // 144
//}
	jmp END_IF164
ELSE164:
//call printf
	leaq L_.str.53(%rip), %rax
	pushq %rax // 152
	popq %rdi // 144
	subq $0, %rsp // 144
	xorq %rax, %rax
	callq _printf
	addq $0, %rsp // 144
END_IF164:
//call printf
	leaq L_.str.54(%rip), %rax
	pushq %rax // 152
	popq %rdi // 144
	subq $0, %rsp // 144
	xorq %rax, %rax
	callq _printf
	addq $0, %rsp // 144
//call skip
	movq $123, %rax
	pushq %rax // 152
	popq %rdi // 144
	subq $0, %rsp // 144
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 144
	movq $0, %rax
	movl %eax, -32(%rbp) // val = rax
WHILE165:
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 152
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 152
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 152
	movq $125, %rax
	movq %rax, %r10
	popq %rax // 144
	cmpq %r10, %rax
	setne %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je WHILE_END165
//{ (961)
//cast to (char**)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 152
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 152
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 152
//cast to (char**)
//cast to (char*)
	movq _enums@GOTPCREL(%rip), %rax
	pushq %rax // 160
	movslq _enum_count(%rip), %rax
	movq %rax, %r10
	popq %rax // 152
	imulq $16, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 160
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 152
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 144
	movq %r10, (%rax)
//call printf
	leaq L_.str.55(%rip), %rax
	pushq %rax // 152
//cast to (char**)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 160
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 152
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 160
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 152
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 160
	popq %rsi // 152
	popq %rdi // 144
	subq $0, %rsp // 144
	xorq %rax, %rax
	callq _printf
	addq $0, %rsp // 144
//call skip
	movq $257, %rax
	pushq %rax // 152
	popq %rdi // 144
	subq $0, %rsp // 144
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 144
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 152
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 152
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 152
	movq $61, %rax
	movq %rax, %r10
	popq %rax // 144
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE166
//{ (966)
	movslq _ct(%rip), %rax
	pushq %rax // 152
	movslq _ct(%rip), %rax
	pushq %rax // 160
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 152
	addq %r10, %rax
	movl %eax, _ct(%rip)
	popq %rax // 144
//call printf
	leaq L_.str.56(%rip), %rax
	pushq %rax // 152
//cast to (long*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 160
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 152
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 160
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 152
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 160
	popq %rsi // 152
	popq %rdi // 144
	subq $0, %rsp // 144
	xorq %rax, %rax
	callq _printf
	addq $0, %rsp // 144
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 152
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 152
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 152
	movq $256, %rax
	movq %rax, %r10
	popq %rax // 144
	cmpq %r10, %rax
	setne %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE167
//call skip
	movq $256, %rax
	pushq %rax // 152
	popq %rdi // 144
	subq $0, %rsp // 144
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 144
	jmp END_IF167
ELSE167:
END_IF167:
//cast to (int)
//cast to (long*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 152
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 152
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	movslq %eax, %r10
	movq %r10, %rax
	movl %eax, -32(%rbp) // val = rax
	movslq _ct(%rip), %rax
	pushq %rax // 152
	movslq _ct(%rip), %rax
	pushq %rax // 160
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 152
	addq %r10, %rax
	movl %eax, _ct(%rip)
	popq %rax // 144
//}
	jmp END_IF166
ELSE166:
END_IF166:
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 152
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 152
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 152
	movq $44, %rax
	movq %rax, %r10
	popq %rax // 144
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE168
//{ (975)
//call printf
	leaq L_.str.57(%rip), %rax
	pushq %rax // 152
	popq %rdi // 144
	subq $0, %rsp // 144
	xorq %rax, %rax
	callq _printf
	addq $0, %rsp // 144
	movslq _ct(%rip), %rax
	pushq %rax // 152
	movslq _ct(%rip), %rax
	pushq %rax // 160
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 152
	addq %r10, %rax
	movl %eax, _ct(%rip)
	popq %rax // 144
//}
	jmp END_IF168
ELSE168:
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 152
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 152
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 152
	movq $125, %rax
	movq %rax, %r10
	popq %rax // 144
	cmpq %r10, %rax
	setne %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE169
//call skip
	movq $125, %rax
	pushq %rax // 152
	popq %rdi // 144
	subq $0, %rsp // 144
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 144
	jmp END_IF169
ELSE169:
END_IF169:
END_IF168:
	movslq -32(%rbp), %rax // val
	pushq %rax // 152
//cast to (int*)
//cast to (char*)
	movq _enums@GOTPCREL(%rip), %rax
	pushq %rax // 160
	movslq _enum_count(%rip), %rax
	movq %rax, %r10
	popq %rax // 152
	imulq $16, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 160
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 152
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 144
	movl %r10d, (%rax)
	movslq _enum_count(%rip), %rax
	pushq %rax // 152
	movslq _enum_count(%rip), %rax
	pushq %rax // 160
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 152
	addq %r10, %rax
	movl %eax, _enum_count(%rip)
	popq %rax // 144
	movslq -32(%rbp), %rax // val
	pushq %rax // 152
	movslq -32(%rbp), %rax // val
	pushq %rax // 160
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 152
	addq %r10, %rax
	movl %eax, -32(%rbp) // val = rax
	popq %rax // 144
//call printf
	leaq L_.str.58(%rip), %rax
	pushq %rax // 152
	popq %rdi // 144
	subq $0, %rsp // 144
	xorq %rax, %rax
	callq _printf
	addq $0, %rsp // 144
//}
	jmp WHILE165
WHILE_END165:
//call skip
	movq $125, %rax
	pushq %rax // 152
	popq %rdi // 144
	subq $0, %rsp // 144
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 144
//call skip
	movq $59, %rax
	pushq %rax // 152
	popq %rdi // 144
	subq $0, %rsp // 144
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 144
//call printf
	leaq L_.str.58(%rip), %rax
	pushq %rax // 152
	popq %rdi // 144
	subq $0, %rsp // 144
	xorq %rax, %rax
	callq _printf
	addq $0, %rsp // 144
//}
	jmp END_IF163
ELSE163:
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 152
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 152
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 152
	movq $286, %rax
	movq %rax, %r10
	popq %rax // 144
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE170
//{ (991)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 152
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $40, %r10
	addq %r10, %rax
	movq %rax, -40(%rbp) // st_token = rax
//call new_type
	movq $7, %rax
	pushq %rax // 152
	popq %rdi // 144
	subq $0, %rsp // 144
	xorq %rax, %rax
	callq _new_type
	addq $0, %rsp // 144
	movq %rax, -48(%rbp) // type = rax
	movslq _ct(%rip), %rax
	pushq %rax // 152
	movslq _ct(%rip), %rax
	pushq %rax // 160
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 152
	addq %r10, %rax
	movl %eax, _ct(%rip)
	popq %rax // 144
//cast to (char**)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 152
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 152
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 152
//cast to (char**)
//cast to (char*)
	movq -48(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 160
	movq $40, %rax
	movq %rax, %r10
	popq %rax // 152
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 144
	movq %r10, (%rax)
//call skip
	movq $257, %rax
	pushq %rax // 152
	popq %rdi // 144
	subq $0, %rsp // 144
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 144
//call skip
	movq $123, %rax
	pushq %rax // 152
	popq %rdi // 144
	subq $0, %rsp // 144
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 144
	movq $0, %rax
	movl %eax, -52(%rbp) // i = rax
	movq $0, %rax
	movl %eax, -56(%rbp) // size = rax
	movq $0, %rax
	movl %eax, -60(%rbp) // max = rax
WHILE171:
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 152
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 152
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR172
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 152
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 152
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 152
	movq $125, %rax
	movq %rax, %r10
	popq %rax // 144
	cmpq %r10, %rax
	setne %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR172:
	cmpq $0, %rax
	je WHILE_END171
//{ (1004)
//call decl
	movq $1, %rax
	pushq %rax // 152
	popq %rdi // 144
	subq $0, %rsp // 144
	xorq %rax, %rax
	callq _decl
	addq $0, %rsp // 144
	movq %rax, -72(%rbp) // node = rax
//cast to (Node**)
//cast to (char*)
	movq -72(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 152
	movq $88, %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	movq %rax, -72(%rbp) // node = rax
WHILE173:
	movq -72(%rbp), %rax // node
	cmpq $0, %rax
	je WHILE_END173
//{ (1008)
//cast to (char**)
//cast to (char*)
//cast to (Var**)
//cast to (char*)
	movq -72(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 152
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 152
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 152
//cast to (char*[100])
//cast to (char*)
	movq -48(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 160
	movq $848, %rax
	movq %rax, %r10
	popq %rax // 152
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 160
	movslq -52(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 152
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 144
	movq %r10, (%rax)
//cast to (Type**)
//cast to (char*)
//cast to (Var**)
//cast to (char*)
	movq -72(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 152
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 152
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 152
//cast to (Type*[100])
//cast to (char*)
	movq -48(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 160
	movq $48, %rax
	movq %rax, %r10
	popq %rax // 152
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 160
	movslq -52(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 152
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 144
	movq %r10, (%rax)
//call align
	movslq -56(%rbp), %rax // size
	pushq %rax // 152
//cast to (int*)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
//cast to (Var**)
//cast to (char*)
	movq -72(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 160
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 152
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 160
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 152
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 160
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 152
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 160
	popq %rsi // 152
	popq %rdi // 144
	subq $0, %rsp // 144
	xorq %rax, %rax
	callq _align
	addq $0, %rsp // 144
	movl %eax, -56(%rbp) // size = rax
	movslq -56(%rbp), %rax // size
	pushq %rax // 152
//cast to (int[100])
//cast to (char*)
	movq -48(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 160
	movq $1648, %rax
	movq %rax, %r10
	popq %rax // 152
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 160
	movslq -52(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 152
	imulq $4, %r10
	addq %r10, %rax
	popq %r10 // 144
	movl %r10d, (%rax)
//if begin
//cast to (int*)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
//cast to (Var**)
//cast to (char*)
	movq -72(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 152
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 152
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 152
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 152
	movslq -60(%rbp), %rax // max
	movq %rax, %r10
	popq %rax // 144
	cmpq %r10, %rax
	setg %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE174
//cast to (int*)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
//cast to (Var**)
//cast to (char*)
	movq -72(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 152
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 152
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 152
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	movl %eax, -60(%rbp) // max = rax
	jmp END_IF174
ELSE174:
END_IF174:
//if begin
//cast to (int*)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
//cast to (Var**)
//cast to (char*)
	movq -72(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 152
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 152
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 152
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 152
	movq $3, %rax
	movq %rax, %r10
	popq %rax // 144
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE175
	movslq -56(%rbp), %rax // size
	pushq %rax // 152
//cast to (int*)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
//cast to (Var**)
//cast to (char*)
	movq -72(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 160
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 152
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 160
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 152
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 160
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 152
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 160
//cast to (int*)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
//cast to (Var**)
//cast to (char*)
	movq -72(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 168
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 160
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 168
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 160
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 168
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 160
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	movq %rax, %r10
	popq %rax // 152
	imulq %r10, %rax
	movq %rax, %r10
	popq %rax // 144
	addq %r10, %rax
	movl %eax, -56(%rbp) // size = rax
	jmp END_IF175
ELSE175:
	movslq -56(%rbp), %rax // size
	pushq %rax // 152
//cast to (int*)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
//cast to (Var**)
//cast to (char*)
	movq -72(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 160
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 152
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 160
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 152
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 160
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 152
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	movq %rax, %r10
	popq %rax // 144
	addq %r10, %rax
	movl %eax, -56(%rbp) // size = rax
END_IF175:
	movslq -52(%rbp), %rax // i
	pushq %rax // 152
	movslq -52(%rbp), %rax // i
	pushq %rax // 160
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 152
	addq %r10, %rax
	movl %eax, -52(%rbp) // i = rax
	popq %rax // 144
//cast to (Node**)
//cast to (char*)
	movq -72(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 152
	movq $88, %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	movq %rax, -72(%rbp) // node = rax
//}
	jmp WHILE173
WHILE_END173:
//call skip
	movq $59, %rax
	pushq %rax // 152
	popq %rdi // 144
	subq $0, %rsp // 144
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 144
//}
	jmp WHILE171
WHILE_END171:
//if begin
	movslq -56(%rbp), %rax // size
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE176
//call error_token
	movq -40(%rbp), %rax // st_token
	pushq %rax // 152
	leaq L_.str.59(%rip), %rax
	pushq %rax // 160
	popq %rsi // 152
	popq %rdi // 144
	subq $0, %rsp // 144
	xorq %rax, %rax
	callq _error_token
	addq $0, %rsp // 144
	jmp END_IF176
ELSE176:
END_IF176:
//call align
	movslq -56(%rbp), %rax // size
	pushq %rax // 152
	movslq -60(%rbp), %rax // max
	pushq %rax // 160
	popq %rsi // 152
	popq %rdi // 144
	subq $0, %rsp // 144
	xorq %rax, %rax
	callq _align
	addq $0, %rsp // 144
	pushq %rax // 152
//cast to (int*)
//cast to (char*)
	movq -48(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 160
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 152
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 144
	movl %r10d, (%rax)
	movslq -52(%rbp), %rax // i
	pushq %rax // 152
//cast to (int*)
//cast to (char*)
	movq -48(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 160
	movq $2048, %rax
	movq %rax, %r10
	popq %rax // 152
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 144
	movl %r10d, (%rax)
	movq -48(%rbp), %rax // type
	pushq %rax // 152
	movq _types_declared@GOTPCREL(%rip), %rax
	pushq %rax // 160
	movslq _types_declared_count(%rip), %rax
	pushq %rax // 168
	movslq _types_declared_count(%rip), %rax
	pushq %rax // 176
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 168
	addq %r10, %rax
	movl %eax, _types_declared_count(%rip)
	popq %rax // 160
	movq %rax, %r10
	popq %rax // 152
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 144
	movq %r10, (%rax)
//for init
	movq $0, %rax
	movl %eax, -76(%rbp) // j = rax
FOR177:
	movslq -76(%rbp), %rax // j
	pushq %rax // 152
	movslq _types_declared_count(%rip), %rax
	movq %rax, %r10
	popq %rax // 144
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je FOR_END177
//{ (1034)
	movq _types_declared@GOTPCREL(%rip), %rax
	pushq %rax // 152
	movslq -76(%rbp), %rax // j
	movq %rax, %r10
	popq %rax // 144
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	movq %rax, -88(%rbp) // t = rax
//for init
	movq $0, %rax
	movl %eax, -92(%rbp) // k = rax
FOR178:
	movslq -92(%rbp), %rax // k
	pushq %rax // 152
//cast to (int*)
//cast to (char*)
	movq -88(%rbp), %rax // t
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 160
	movq $2048, %rax
	movq %rax, %r10
	popq %rax // 152
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	movq %rax, %r10
	popq %rax // 144
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je FOR_END178
//{ (1037)
//cast to (Type*[100])
//cast to (char*)
	movq -88(%rbp), %rax // t
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 152
	movq $48, %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 152
	movslq -92(%rbp), %rax // k
	movq %rax, %r10
	popq %rax // 144
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	movq %rax, -104(%rbp) // cur = rax
WHILE179:
//cast to (Type**)
//cast to (char*)
	movq -104(%rbp), %rax // cur
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 152
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	cmpq $0, %rax
	je WHILE_END179
//{ (1040)
//if begin
//cast to (int*)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
	movq -104(%rbp), %rax // cur
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 152
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 152
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 152
	movq $9, %rax
	movq %rax, %r10
	popq %rax // 144
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR181
//call strcmp
//cast to (char**)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
	movq -104(%rbp), %rax // cur
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 152
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 152
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 152
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 152
//cast to (char**)
//cast to (char*)
	movq -48(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 160
	movq $40, %rax
	movq %rax, %r10
	popq %rax // 152
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 160
	popq %rsi // 152
	popq %rdi // 144
	subq $0, %rsp // 144
	xorq %rax, %rax
	callq _strcmp
	addq $0, %rsp // 144
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR181:
	cmpq $0, %rax
	je ELSE180
//{ (1043)
	movq -48(%rbp), %rax // type
	pushq %rax // 152
//cast to (Type**)
//cast to (char*)
	movq -104(%rbp), %rax // cur
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 160
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 152
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 144
	movq %r10, (%rax)
	jmp WHILE_END179
//}
	jmp END_IF180
ELSE180:
END_IF180:
//cast to (Type**)
//cast to (char*)
	movq -104(%rbp), %rax // cur
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 152
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	movq %rax, -104(%rbp) // cur = rax
//}
	jmp WHILE179
WHILE_END179:
//}
FOR_INC178:
	movslq -92(%rbp), %rax // k
	pushq %rax // 152
	movslq -92(%rbp), %rax // k
	pushq %rax // 160
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 152
	addq %r10, %rax
	movl %eax, -92(%rbp) // k = rax
	popq %rax // 144
	jmp FOR178
FOR_END178:
//}
FOR_INC177:
	movslq -76(%rbp), %rax // j
	pushq %rax // 152
	movslq -76(%rbp), %rax // j
	pushq %rax // 160
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 152
	addq %r10, %rax
	movl %eax, -76(%rbp) // j = rax
	popq %rax // 144
	jmp FOR177
FOR_END177:
//call skip
	movq $125, %rax
	pushq %rax // 152
	popq %rdi // 144
	subq $0, %rsp // 144
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 144
//call skip
	movq $59, %rax
	pushq %rax // 152
	popq %rdi // 144
	subq $0, %rsp // 144
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 144
	jmp WHILE162
//}
	jmp END_IF170
ELSE170:
//{ (1057)
//if begin
//call is_typename
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 152
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $40, %r10
	addq %r10, %rax
	pushq %rax // 152
	popq %rdi // 144
	subq $0, %rsp // 144
	xorq %rax, %rax
	callq _is_typename
	addq $0, %rsp // 144
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE182
//call error_token
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 152
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $40, %r10
	addq %r10, %rax
	pushq %rax // 152
	leaq L_.str.60(%rip), %rax
	pushq %rax // 160
	popq %rsi // 152
	popq %rdi // 144
	subq $0, %rsp // 144
	xorq %rax, %rax
	callq _error_token
	addq $0, %rsp // 144
	jmp END_IF182
ELSE182:
END_IF182:
//call parse_type
	subq $0, %rsp // 144
	xorq %rax, %rax
	callq _parse_type
	addq $0, %rsp // 144
//call skip
	movq $257, %rax
	pushq %rax // 152
	popq %rdi // 144
	subq $0, %rsp // 144
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 144
	movq $0, %rax
	movl %eax, -108(%rbp) // globl = rax
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 152
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 152
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 152
	movq $40, %rax
	movq %rax, %r10
	popq %rax // 144
	cmpq %r10, %rax
	setne %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE183
	movq $1, %rax
	movl %eax, -108(%rbp) // globl = rax
	jmp END_IF183
ELSE183:
END_IF183:
	movslq -28(%rbp), %rax // save
	movl %eax, _ct(%rip)
//if begin
	movslq -108(%rbp), %rax // globl
	cmpq $0, %rax
	je ELSE184
//{ (1067)
//call decl
	movq $0, %rax
	pushq %rax // 152
	popq %rdi // 144
	subq $0, %rsp // 144
	xorq %rax, %rax
	callq _decl
	addq $0, %rsp // 144
	pushq %rax // 152
//cast to (Node**)
//cast to (char*)
	movq -24(%rbp), %rax // curr
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 160
	movq $40, %rax
	movq %rax, %r10
	popq %rax // 152
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 144
	movq %r10, (%rax)
//call skip
	movq $59, %rax
	pushq %rax // 152
	popq %rdi // 144
	subq $0, %rsp // 144
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 144
//}
	jmp END_IF184
ELSE184:
//call function
	subq $0, %rsp // 144
	xorq %rax, %rax
	callq _function
	addq $0, %rsp // 144
	pushq %rax // 152
//cast to (Node**)
//cast to (char*)
	movq -24(%rbp), %rax // curr
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 160
	movq $40, %rax
	movq %rax, %r10
	popq %rax // 152
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 144
	movq %r10, (%rax)
END_IF184:
//if begin
//cast to (Node**)
//cast to (char*)
	movq -24(%rbp), %rax // curr
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 152
	movq $40, %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	cmpq $0, %rax
	je ELSE185
//cast to (Node**)
//cast to (char*)
	movq -24(%rbp), %rax // curr
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 152
	movq $40, %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	movq %rax, -24(%rbp) // curr = rax
	jmp END_IF185
ELSE185:
END_IF185:
//}
END_IF170:
END_IF163:
//}
	jmp WHILE162
WHILE_END162:
//for init
	movq $0, %rax
	movl %eax, -112(%rbp) // i = rax
FOR186:
	movslq -112(%rbp), %rax // i
	pushq %rax // 152
	movslq _types_declared_count(%rip), %rax
	movq %rax, %r10
	popq %rax // 144
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je FOR_END186
//{ (1078)
	movq _types_declared@GOTPCREL(%rip), %rax
	pushq %rax // 152
	movslq -112(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 144
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	movq %rax, -120(%rbp) // t = rax
	movq $0, %rax
	movl %eax, -124(%rbp) // alignement = rax
	movq $0, %rax
	movl %eax, -128(%rbp) // space = rax
//for init
	movq $0, %rax
	movl %eax, -132(%rbp) // j = rax
FOR187:
	movslq -132(%rbp), %rax // j
	pushq %rax // 152
//cast to (int*)
//cast to (char*)
	movq -120(%rbp), %rax // t
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 160
	movq $2048, %rax
	movq %rax, %r10
	popq %rax // 152
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	movq %rax, %r10
	popq %rax // 144
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je FOR_END187
//{ (1083)
//if begin
//cast to (Type**)
//cast to (char*)
//cast to (Type*[100])
//cast to (char*)
	movq -120(%rbp), %rax // t
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 152
	movq $48, %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 152
	movslq -132(%rbp), %rax // j
	movq %rax, %r10
	popq %rax // 144
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 152
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR189
//cast to (int*)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
//cast to (Type*[100])
//cast to (char*)
	movq -120(%rbp), %rax // t
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 152
	movq $48, %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 152
	movslq -132(%rbp), %rax // j
	movq %rax, %r10
	popq %rax // 144
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 152
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 152
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 152
	movq $9, %rax
	movq %rax, %r10
	popq %rax // 144
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR189:
	cmpq $0, %rax
	je ELSE188
//call error_token
//cast to (Token**)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
//cast to (Type*[100])
//cast to (char*)
	movq -120(%rbp), %rax // t
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 152
	movq $48, %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 152
	movslq -132(%rbp), %rax // j
	movq %rax, %r10
	popq %rax // 144
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 152
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 152
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 152
	leaq L_.str.61(%rip), %rax
	pushq %rax // 160
	popq %rsi // 152
	popq %rdi // 144
	subq $0, %rsp // 144
	xorq %rax, %rax
	callq _error_token
	addq $0, %rsp // 144
	jmp END_IF188
ELSE188:
END_IF188:
//if begin
//cast to (int*)
//cast to (char*)
//cast to (Type*[100])
//cast to (char*)
	movq -120(%rbp), %rax // t
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 152
	movq $48, %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 152
	movslq -132(%rbp), %rax // j
	movq %rax, %r10
	popq %rax // 144
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 152
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 152
	movslq -124(%rbp), %rax // alignement
	movq %rax, %r10
	popq %rax // 144
	cmpq %r10, %rax
	setg %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE190
//cast to (int*)
//cast to (char*)
//cast to (Type*[100])
//cast to (char*)
	movq -120(%rbp), %rax // t
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 152
	movq $48, %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 152
	movslq -132(%rbp), %rax // j
	movq %rax, %r10
	popq %rax // 144
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 152
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	movl %eax, -124(%rbp) // alignement = rax
	jmp END_IF190
ELSE190:
END_IF190:
//if begin
//cast to (int)
//call strlen
//cast to (char*[100])
//cast to (char*)
	movq -120(%rbp), %rax // t
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 152
	movq $848, %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 152
	movslq -132(%rbp), %rax // j
	movq %rax, %r10
	popq %rax // 144
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 152
	popq %rdi // 144
	subq $0, %rsp // 144
	xorq %rax, %rax
	callq _strlen
	addq $0, %rsp // 144
	pushq %rax // 152
	movslq -128(%rbp), %rax // space
	movq %rax, %r10
	popq %rax // 144
	cmpq %r10, %rax
	setg %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE191
//call strlen
//cast to (char*[100])
//cast to (char*)
	movq -120(%rbp), %rax // t
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 152
	movq $848, %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 152
	movslq -132(%rbp), %rax // j
	movq %rax, %r10
	popq %rax // 144
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 152
	popq %rdi // 144
	subq $0, %rsp // 144
	xorq %rax, %rax
	callq _strlen
	addq $0, %rsp // 144
	movl %eax, -128(%rbp) // space = rax
	jmp END_IF191
ELSE191:
END_IF191:
//}
FOR_INC187:
	movslq -132(%rbp), %rax // j
	pushq %rax // 152
	movslq -132(%rbp), %rax // j
	pushq %rax // 160
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 152
	addq %r10, %rax
	movl %eax, -132(%rbp) // j = rax
	popq %rax // 144
	jmp FOR187
FOR_END187:
//call printf
	leaq L_.str.62(%rip), %rax
	pushq %rax // 152
//cast to (char**)
//cast to (char*)
	movq -120(%rbp), %rax // t
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 160
	movq $40, %rax
	movq %rax, %r10
	popq %rax // 152
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 160
//cast to (int*)
//cast to (char*)
	movq -120(%rbp), %rax // t
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 168
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 160
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 168
	movslq -124(%rbp), %rax // alignement
	pushq %rax // 176
	popq %rcx // 168
	popq %rdx // 160
	popq %rsi // 152
	popq %rdi // 144
	subq $0, %rsp // 144
	xorq %rax, %rax
	callq _printf
	addq $0, %rsp // 144
	movq $0, %rax
	movl %eax, -136(%rbp) // size = rax
//for init
	movq $0, %rax
	movl %eax, -140(%rbp) // j = rax
FOR192:
	movslq -140(%rbp), %rax // j
	pushq %rax // 152
//cast to (int*)
//cast to (char*)
	movq -120(%rbp), %rax // t
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 160
	movq $2048, %rax
	movq %rax, %r10
	popq %rax // 152
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	movq %rax, %r10
	popq %rax // 144
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je FOR_END192
//{ (1095)
//call align
	movslq -136(%rbp), %rax // size
	pushq %rax // 152
//cast to (int*)
//cast to (char*)
//cast to (Type*[100])
//cast to (char*)
	movq -120(%rbp), %rax // t
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 160
	movq $48, %rax
	movq %rax, %r10
	popq %rax // 152
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 160
	movslq -140(%rbp), %rax // j
	movq %rax, %r10
	popq %rax // 152
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 160
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 152
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 160
	popq %rsi // 152
	popq %rdi // 144
	subq $0, %rsp // 144
	xorq %rax, %rax
	callq _align
	addq $0, %rsp // 144
	movl %eax, -144(%rbp) // x = rax
//if begin
	movslq -144(%rbp), %rax // x
	pushq %rax // 152
	movslq -136(%rbp), %rax // size
	movq %rax, %r10
	popq %rax // 144
	cmpq %r10, %rax
	setne %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE193
//call printf
	leaq L_.str.63(%rip), %rax
	pushq %rax // 152
	movslq -144(%rbp), %rax // x
	pushq %rax // 160
	movslq -136(%rbp), %rax // size
	movq %rax, %r10
	popq %rax // 152
	subq %r10, %rax
	pushq %rax // 160
	popq %rsi // 152
	popq %rdi // 144
	subq $0, %rsp // 144
	xorq %rax, %rax
	callq _printf
	addq $0, %rsp // 144
	jmp END_IF193
ELSE193:
END_IF193:
	movslq -144(%rbp), %rax // x
	movl %eax, -136(%rbp) // size = rax
//if begin
//cast to (int*)
//cast to (char*)
//cast to (Type*[100])
//cast to (char*)
	movq -120(%rbp), %rax // t
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 152
	movq $48, %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 152
	movslq -140(%rbp), %rax // j
	movq %rax, %r10
	popq %rax // 144
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 152
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 152
	movq $3, %rax
	movq %rax, %r10
	popq %rax // 144
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE194
	movslq -136(%rbp), %rax // size
	pushq %rax // 152
//cast to (int*)
//cast to (char*)
//cast to (Type*[100])
//cast to (char*)
	movq -120(%rbp), %rax // t
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 160
	movq $48, %rax
	movq %rax, %r10
	popq %rax // 152
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 160
	movslq -140(%rbp), %rax // j
	movq %rax, %r10
	popq %rax // 152
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 160
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 152
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 160
//cast to (int*)
//cast to (char*)
//cast to (Type*[100])
//cast to (char*)
	movq -120(%rbp), %rax // t
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 168
	movq $48, %rax
	movq %rax, %r10
	popq %rax // 160
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 168
	movslq -140(%rbp), %rax // j
	movq %rax, %r10
	popq %rax // 160
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 168
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 160
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	movq %rax, %r10
	popq %rax // 152
	imulq %r10, %rax
	movq %rax, %r10
	popq %rax // 144
	addq %r10, %rax
	movl %eax, -136(%rbp) // size = rax
	jmp END_IF194
ELSE194:
	movslq -136(%rbp), %rax // size
	pushq %rax // 152
//cast to (int*)
//cast to (char*)
//cast to (Type*[100])
//cast to (char*)
	movq -120(%rbp), %rax // t
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 160
	movq $48, %rax
	movq %rax, %r10
	popq %rax // 152
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 160
	movslq -140(%rbp), %rax // j
	movq %rax, %r10
	popq %rax // 152
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 160
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 152
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	movq %rax, %r10
	popq %rax // 144
	addq %r10, %rax
	movl %eax, -136(%rbp) // size = rax
END_IF194:
//call printf
	leaq L_.str.64(%rip), %rax
	pushq %rax // 152
//cast to (char*[100])
//cast to (char*)
	movq -120(%rbp), %rax // t
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 160
	movq $848, %rax
	movq %rax, %r10
	popq %rax // 152
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 160
	movslq -140(%rbp), %rax // j
	movq %rax, %r10
	popq %rax // 152
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 160
//cast to (int)
	movslq -128(%rbp), %rax // space
	pushq %rax // 168
//call strlen
//cast to (char*[100])
//cast to (char*)
	movq -120(%rbp), %rax // t
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 176
	movq $848, %rax
	movq %rax, %r10
	popq %rax // 168
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 176
	movslq -140(%rbp), %rax // j
	movq %rax, %r10
	popq %rax // 168
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 176
	popq %rdi // 168
	subq $8, %rsp // 176
	xorq %rax, %rax
	callq _strlen
	addq $8, %rsp // 168
	movq %rax, %r10
	popq %rax // 160
	subq %r10, %rax
	pushq %rax // 168
	leaq L_.str.65(%rip), %rax
	pushq %rax // 176
//call get_type_str
//cast to (Type*[100])
//cast to (char*)
	movq -120(%rbp), %rax // t
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 184
	movq $48, %rax
	movq %rax, %r10
	popq %rax // 176
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 184
	movslq -140(%rbp), %rax // j
	movq %rax, %r10
	popq %rax // 176
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 184
	popq %rdi // 176
	subq $0, %rsp // 176
	xorq %rax, %rax
	callq _get_type_str
	addq $0, %rsp // 176
	pushq %rax // 184
	popq %r8 // 176
	popq %rcx // 168
	popq %rdx // 160
	popq %rsi // 152
	popq %rdi // 144
	subq $0, %rsp // 144
	xorq %rax, %rax
	callq _printf
	addq $0, %rsp // 144
//}
FOR_INC192:
	movslq -140(%rbp), %rax // j
	pushq %rax // 152
	movslq -140(%rbp), %rax // j
	pushq %rax // 160
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 152
	addq %r10, %rax
	movl %eax, -140(%rbp) // j = rax
	popq %rax // 144
	jmp FOR192
FOR_END192:
//if begin
	movslq -136(%rbp), %rax // size
	pushq %rax // 152
//cast to (int*)
//cast to (char*)
	movq -120(%rbp), %rax // t
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 160
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 152
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	movq %rax, %r10
	popq %rax // 144
	cmpq %r10, %rax
	setne %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE195
//call printf
	leaq L_.str.63(%rip), %rax
	pushq %rax // 152
//cast to (int*)
//cast to (char*)
	movq -120(%rbp), %rax // t
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 160
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 152
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 160
	movslq -136(%rbp), %rax // size
	movq %rax, %r10
	popq %rax // 152
	subq %r10, %rax
	pushq %rax // 160
	popq %rsi // 152
	popq %rdi // 144
	subq $0, %rsp // 144
	xorq %rax, %rax
	callq _printf
	addq $0, %rsp // 144
	jmp END_IF195
ELSE195:
END_IF195:
//call printf
	leaq L_.str.58(%rip), %rax
	pushq %rax // 152
	popq %rdi // 144
	subq $0, %rsp // 144
	xorq %rax, %rax
	callq _printf
	addq $0, %rsp // 144
//}
FOR_INC186:
	movslq -112(%rbp), %rax // i
	pushq %rax // 152
	movslq -112(%rbp), %rax // i
	pushq %rax // 160
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 152
	addq %r10, %rax
	movl %eax, -112(%rbp) // i = rax
	popq %rax // 144
	jmp FOR186
FOR_END186:
	movq -16(%rbp), %rax // prog
	movq %rbp, %rsp
	popq %rbp
	ret
//}
	addq $144, %rsp // 0
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

//Type* find_type(char* name)
_find_type:
	pushq %rbp
	movq %rsp, %rbp
	subq $12, %rsp // 12
	movq %rdi, -8(%rbp) //name
//{ (1117)
//for init
	movq $0, %rax
	movl %eax, -12(%rbp) // i = rax
FOR196:
	movslq -12(%rbp), %rax // i
	pushq %rax // 20
	movslq _types_declared_count(%rip), %rax
	movq %rax, %r10
	popq %rax // 12
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je FOR_END196
//{ (1119)
//if begin
//call strcmp
//cast to (char**)
//cast to (char*)
	movq _types_declared@GOTPCREL(%rip), %rax
	pushq %rax // 20
	movslq -12(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 12
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 20
	movq $40, %rax
	movq %rax, %r10
	popq %rax // 12
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 20
	movq -8(%rbp), %rax // name
	pushq %rax // 28
	popq %rsi // 20
	popq %rdi // 12
	subq $4, %rsp // 16
	xorq %rax, %rax
	callq _strcmp
	addq $4, %rsp // 12
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE197
	movq _types_declared@GOTPCREL(%rip), %rax
	pushq %rax // 20
	movslq -12(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 12
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF197
ELSE197:
END_IF197:
//}
FOR_INC196:
	movslq -12(%rbp), %rax // i
	pushq %rax // 20
	movslq -12(%rbp), %rax // i
	pushq %rax // 28
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 20
	addq %r10, %rax
	movl %eax, -12(%rbp) // i = rax
	popq %rax // 12
	jmp FOR196
FOR_END196:
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret
//}
	addq $12, %rsp // 0
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

//Type* parse_base_type()
_parse_base_type:
	pushq %rbp
	movq %rsp, %rbp
	subq $52, %rsp // 52
//{ (1127)
	movq $0, %rax
	movl %eax, -4(%rbp) // i = rax
	movq $0, %rax
	movl %eax, -8(%rbp) // s = rax
	movq $0, %rax
	movl %eax, -12(%rbp) // c = rax
	movq $0, %rax
	movl %eax, -16(%rbp) // l = rax
	movq $0, %rax
	movl %eax, -20(%rbp) // v = rax
	movq $0, %rax
	movl %eax, -24(%rbp) // u = rax
	movq $0, %rax
	movl %eax, -28(%rbp) // si = rax
//cast to (Type*)
	movq $0, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq %rax, -40(%rbp) // type = rax
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 60
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $40, %r10
	addq %r10, %rax
	movq %rax, -48(%rbp) // start = rax
//if begin
//cast to (int*)
//cast to (char*)
	movq -48(%rbp), %rax // start
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 60
	movq $257, %rax
	movq %rax, %r10
	popq %rax // 52
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE198
//{ (1132)
//call find_type
//cast to (char**)
//cast to (char*)
	movq -48(%rbp), %rax // start
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _find_type
	addq $12, %rsp // 52
	movq %rax, -40(%rbp) // type = rax
//if begin
	movq -40(%rbp), %rax // type
	cmpq $0, %rax
	je ELSE199
//{ (1135)
	movslq _ct(%rip), %rax
	pushq %rax // 60
	movslq _ct(%rip), %rax
	pushq %rax // 68
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 60
	addq %r10, %rax
	movl %eax, _ct(%rip)
	popq %rax // 52
	movq -40(%rbp), %rax // type
	movq %rbp, %rsp
	popq %rbp
	ret
//}
	jmp END_IF199
ELSE199:
END_IF199:
//}
	jmp END_IF198
ELSE198:
END_IF198:
WHILE200:
	movq $1, %rax
	cmpq $0, %rax
	je WHILE_END200
//{ (1141)
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 60
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 60
	movq $269, %rax
	movq %rax, %r10
	popq %rax // 52
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE201
	movslq -4(%rbp), %rax // i
	pushq %rax // 60
	movslq -4(%rbp), %rax // i
	pushq %rax // 68
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 60
	addq %r10, %rax
	movl %eax, -4(%rbp) // i = rax
	popq %rax // 52
	jmp END_IF201
ELSE201:
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 60
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 60
	movq $270, %rax
	movq %rax, %r10
	popq %rax // 52
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE202
	movslq -20(%rbp), %rax // v
	pushq %rax // 60
	movslq -20(%rbp), %rax // v
	pushq %rax // 68
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 60
	addq %r10, %rax
	movl %eax, -20(%rbp) // v = rax
	popq %rax // 52
	jmp END_IF202
ELSE202:
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 60
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 60
	movq $271, %rax
	movq %rax, %r10
	popq %rax // 52
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE203
	movslq -12(%rbp), %rax // c
	pushq %rax // 60
	movslq -12(%rbp), %rax // c
	pushq %rax // 68
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 60
	addq %r10, %rax
	movl %eax, -12(%rbp) // c = rax
	popq %rax // 52
	jmp END_IF203
ELSE203:
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 60
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 60
	movq $272, %rax
	movq %rax, %r10
	popq %rax // 52
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE204
	movslq -8(%rbp), %rax // s
	pushq %rax // 60
	movslq -8(%rbp), %rax // s
	pushq %rax // 68
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 60
	addq %r10, %rax
	movl %eax, -8(%rbp) // s = rax
	popq %rax // 52
	jmp END_IF204
ELSE204:
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 60
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 60
	movq $273, %rax
	movq %rax, %r10
	popq %rax // 52
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE205
	movslq -16(%rbp), %rax // l
	pushq %rax // 60
	movslq -16(%rbp), %rax // l
	pushq %rax // 68
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 60
	addq %r10, %rax
	movl %eax, -16(%rbp) // l = rax
	popq %rax // 52
	jmp END_IF205
ELSE205:
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 60
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 60
	movq $279, %rax
	movq %rax, %r10
	popq %rax // 52
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE206
	movslq -24(%rbp), %rax // u
	pushq %rax // 60
	movslq -24(%rbp), %rax // u
	pushq %rax // 68
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 60
	addq %r10, %rax
	movl %eax, -24(%rbp) // u = rax
	popq %rax // 52
	jmp END_IF206
ELSE206:
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 60
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 60
	movq $280, %rax
	movq %rax, %r10
	popq %rax // 52
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE207
	movslq -28(%rbp), %rax // si
	pushq %rax // 60
	movslq -28(%rbp), %rax // si
	pushq %rax // 68
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 60
	addq %r10, %rax
	movl %eax, -28(%rbp) // si = rax
	popq %rax // 52
	jmp END_IF207
ELSE207:
	jmp WHILE_END200
END_IF207:
END_IF206:
END_IF205:
END_IF204:
END_IF203:
END_IF202:
END_IF201:
	movslq _ct(%rip), %rax
	pushq %rax // 60
	movslq _ct(%rip), %rax
	pushq %rax // 68
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 60
	addq %r10, %rax
	movl %eax, _ct(%rip)
	popq %rax // 52
//}
	jmp WHILE200
WHILE_END200:
	movq $0, %rax
	movl %eax, -52(%rbp) // err = rax
//if begin
	movslq -4(%rbp), %rax // i
	pushq %rax // 60
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 52
	cmpq %r10, %rax
	setg %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR209
	movslq -20(%rbp), %rax // v
	pushq %rax // 60
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 52
	cmpq %r10, %rax
	setg %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR209:
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR210
	movslq -12(%rbp), %rax // c
	pushq %rax // 60
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 52
	cmpq %r10, %rax
	setg %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR210:
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR211
	movslq -8(%rbp), %rax // s
	pushq %rax // 60
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 52
	cmpq %r10, %rax
	setg %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR211:
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR212
	movslq -24(%rbp), %rax // u
	pushq %rax // 60
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 52
	cmpq %r10, %rax
	setg %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR212:
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR213
	movslq -28(%rbp), %rax // si
	pushq %rax // 60
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 52
	cmpq %r10, %rax
	setg %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR213:
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR214
	movslq -16(%rbp), %rax // l
	pushq %rax // 60
	movq $2, %rax
	movq %rax, %r10
	popq %rax // 52
	cmpq %r10, %rax
	setg %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR214:
	cmpq $0, %rax
	je ELSE208
	movq $1, %rax
	movl %eax, -52(%rbp) // err = rax
	jmp END_IF208
ELSE208:
END_IF208:
//if begin
	movslq -28(%rbp), %rax // si
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR216
	movslq -24(%rbp), %rax // u
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR216:
	cmpq $0, %rax
	je ELSE215
	movq $1, %rax
	movl %eax, -52(%rbp) // err = rax
	jmp END_IF215
ELSE215:
END_IF215:
//if begin
	movslq -4(%rbp), %rax // i
	pushq %rax // 60
	movslq -20(%rbp), %rax // v
	movq %rax, %r10
	popq %rax // 52
	addq %r10, %rax
	pushq %rax // 60
	movslq -12(%rbp), %rax // c
	movq %rax, %r10
	popq %rax // 52
	addq %r10, %rax
	pushq %rax // 60
	movslq -8(%rbp), %rax // s
	movq %rax, %r10
	popq %rax // 52
	addq %r10, %rax
	pushq %rax // 60
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 52
	cmpq %r10, %rax
	setg %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE217
	movq $1, %rax
	movl %eax, -52(%rbp) // err = rax
	jmp END_IF217
ELSE217:
END_IF217:
//if begin
	movslq -16(%rbp), %rax // l
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR219
	movslq -20(%rbp), %rax // v
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR220
	movslq -12(%rbp), %rax // c
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR220:
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR221
	movslq -8(%rbp), %rax // s
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR221:
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR219:
	cmpq $0, %rax
	je ELSE218
	movq $1, %rax
	movl %eax, -52(%rbp) // err = rax
	jmp END_IF218
ELSE218:
END_IF218:
//if begin
	movslq -16(%rbp), %rax // l
	cmpq $0, %rax
	je ELSE222
//call new_type
	movq $6, %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _new_type
	addq $12, %rsp // 52
	movq %rax, -40(%rbp) // type = rax
	jmp END_IF222
ELSE222:
//if begin
	movslq -4(%rbp), %rax // i
	cmpq $0, %rax
	je ELSE223
//call new_type
	movq $0, %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _new_type
	addq $12, %rsp // 52
	movq %rax, -40(%rbp) // type = rax
	jmp END_IF223
ELSE223:
//if begin
	movslq -20(%rbp), %rax // v
	cmpq $0, %rax
	je ELSE224
//call new_type
	movq $2, %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _new_type
	addq $12, %rsp // 52
	movq %rax, -40(%rbp) // type = rax
	jmp END_IF224
ELSE224:
//if begin
	movslq -12(%rbp), %rax // c
	cmpq $0, %rax
	je ELSE225
//call new_type
	movq $5, %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _new_type
	addq $12, %rsp // 52
	movq %rax, -40(%rbp) // type = rax
	jmp END_IF225
ELSE225:
//if begin
	movslq -8(%rbp), %rax // s
	cmpq $0, %rax
	je ELSE226
//call new_type
	movq $4, %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _new_type
	addq $12, %rsp // 52
	movq %rax, -40(%rbp) // type = rax
	jmp END_IF226
ELSE226:
//if begin
	movslq -28(%rbp), %rax // si
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR228
	movslq -24(%rbp), %rax // u
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR228:
	cmpq $0, %rax
	je ELSE227
//call new_type
	movq $0, %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _new_type
	addq $12, %rsp // 52
	movq %rax, -40(%rbp) // type = rax
	jmp END_IF227
ELSE227:
//{ (1182)
//call new_type
	movq $9, %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _new_type
	addq $12, %rsp // 52
	movq %rax, -40(%rbp) // type = rax
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 60
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $40, %r10
	addq %r10, %rax
	pushq %rax // 60
//cast to (Token**)
//cast to (char*)
	movq -40(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 68
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 60
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 52
	movq %r10, (%rax)
	movslq _ct(%rip), %rax
	pushq %rax // 60
	movslq _ct(%rip), %rax
	pushq %rax // 68
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 60
	addq %r10, %rax
	movl %eax, _ct(%rip)
	popq %rax // 52
//}
END_IF227:
END_IF226:
END_IF225:
END_IF224:
END_IF223:
END_IF222:
//if begin
	movq -40(%rbp), %rax // type
	cmpq $0, %rax
	je ELSE229
	movslq -24(%rbp), %rax // u
	pushq %rax // 60
//cast to (int*)
//cast to (char*)
	movq -40(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 68
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 60
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 52
	movl %r10d, (%rax)
	jmp END_IF229
ELSE229:
END_IF229:
//if begin
	movslq -52(%rbp), %rax // err
	cmpq $0, %rax
	je ELSE230
//call error_token
	movq -48(%rbp), %rax // start
	pushq %rax // 60
	leaq L_.str.66(%rip), %rax
	pushq %rax // 68
	popq %rsi // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _error_token
	addq $12, %rsp // 52
	jmp END_IF230
ELSE230:
END_IF230:
	movq -40(%rbp), %rax // type
	movq %rbp, %rsp
	popq %rbp
	ret
//}
	addq $52, %rsp // 0
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

//Type* parse_type()
_parse_type:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp // 16
//{ (1195)
//call parse_base_type
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _parse_base_type
	addq $0, %rsp // 16
	movq %rax, -8(%rbp) // type = rax
WHILE231:
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 24
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 16
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 24
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 16
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 24
	movq $42, %rax
	movq %rax, %r10
	popq %rax // 16
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je WHILE_END231
//{ (1198)
//call new_type
	movq $1, %rax
	pushq %rax // 24
	popq %rdi // 16
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _new_type
	addq $0, %rsp // 16
	movq %rax, -16(%rbp) // new = rax
	movq $1, %rax
	pushq %rax // 24
//cast to (int*)
//cast to (char*)
	movq -16(%rbp), %rax // new
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 32
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 24
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 16
	movl %r10d, (%rax)
	movq -8(%rbp), %rax // type
	pushq %rax // 24
//cast to (Type**)
//cast to (char*)
	movq -16(%rbp), %rax // new
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 32
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 24
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 16
	movq %r10, (%rax)
	movq -16(%rbp), %rax // new
	movq %rax, -8(%rbp) // type = rax
	movslq _ct(%rip), %rax
	pushq %rax // 24
	movslq _ct(%rip), %rax
	pushq %rax // 32
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 24
	addq %r10, %rax
	movl %eax, _ct(%rip)
	popq %rax // 16
//}
	jmp WHILE231
WHILE_END231:
	movq -8(%rbp), %rax // type
	movq %rbp, %rsp
	popq %rbp
	ret
//}
	addq $16, %rsp // 0
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

//Node* function()
_function:
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp // 32
//{ (1209)
//call enter_scope
	subq $0, %rsp // 32
	xorq %rax, %rax
	callq _enter_scope
	addq $0, %rsp // 32
//call parse_type
	subq $0, %rsp // 32
	xorq %rax, %rax
	callq _parse_type
	addq $0, %rsp // 32
	movq %rax, -8(%rbp) // ret_type = rax
//call new_node
	movq $15, %rax
	pushq %rax // 40
	popq %rdi // 32
	subq $0, %rsp // 32
	xorq %rax, %rax
	callq _new_node
	addq $0, %rsp // 32
	movq %rax, -16(%rbp) // node = rax
	movslq _ct(%rip), %rax
	pushq %rax // 40
	movslq _ct(%rip), %rax
	pushq %rax // 48
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 40
	addq %r10, %rax
	movl %eax, _ct(%rip)
	popq %rax // 32
	movq -16(%rbp), %rax // node
	movq %rax, _curr_func(%rip)
	movq $0, %rax
	pushq %rax // 40
//cast to (int*)
//cast to (char*)
	movq _curr_func(%rip), %rax // curr_func
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 48
	movq $1776, %rax
	movq %rax, %r10
	popq %rax // 40
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 32
	movl %r10d, (%rax)
//call skip
	movq $40, %rax
	pushq %rax // 40
	popq %rdi // 32
	subq $0, %rsp // 32
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 32
	movq $0, %rax
	movl %eax, -20(%rbp) // count = rax
WHILE232:
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 40
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 32
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 40
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 32
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 40
	movq $41, %rax
	movq %rax, %r10
	popq %rax // 32
	cmpq %r10, %rax
	setne %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je WHILE_END232
//{ (1221)
//call new_node
	movq $18, %rax
	pushq %rax // 40
	popq %rdi // 32
	subq $0, %rsp // 32
	xorq %rax, %rax
	callq _new_node
	addq $0, %rsp // 32
	pushq %rax // 40
//cast to (Node*[100])
//cast to (char*)
	movq -16(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 48
	movq $968, %rax
	movq %rax, %r10
	popq %rax // 40
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 48
	movslq -20(%rbp), %rax // count
	movq %rax, %r10
	popq %rax // 40
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 32
	movq %r10, (%rax)
//call parse_type
	subq $0, %rsp // 32
	xorq %rax, %rax
	callq _parse_type
	addq $0, %rsp // 32
	movq %rax, -32(%rbp) // type = rax
//call new_var
	movq -32(%rbp), %rax // type
	pushq %rax // 40
//cast to (char**)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 48
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 40
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 48
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 40
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 48
	popq %rsi // 40
	popq %rdi // 32
	subq $0, %rsp // 32
	xorq %rax, %rax
	callq _new_var
	addq $0, %rsp // 32
	pushq %rax // 40
//cast to (Var**)
//cast to (char*)
//cast to (Node*[100])
//cast to (char*)
	movq -16(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 48
	movq $968, %rax
	movq %rax, %r10
	popq %rax // 40
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 48
	movslq -20(%rbp), %rax // count
	movq %rax, %r10
	popq %rax // 40
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 48
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 40
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 32
	movq %r10, (%rax)
//call skip
	movq $257, %rax
	pushq %rax // 40
	popq %rdi // 32
	subq $0, %rsp // 32
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 32
	movslq -20(%rbp), %rax // count
	pushq %rax // 40
	movslq -20(%rbp), %rax // count
	pushq %rax // 48
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 40
	addq %r10, %rax
	movl %eax, -20(%rbp) // count = rax
	popq %rax // 32
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 40
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 32
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 40
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 32
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 40
	movq $44, %rax
	movq %rax, %r10
	popq %rax // 32
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE233
	movslq _ct(%rip), %rax
	pushq %rax // 40
	movslq _ct(%rip), %rax
	pushq %rax // 48
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 40
	addq %r10, %rax
	movl %eax, _ct(%rip)
	popq %rax // 32
	jmp END_IF233
ELSE233:
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 40
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 32
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 40
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 32
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 40
	movq $41, %rax
	movq %rax, %r10
	popq %rax // 32
	cmpq %r10, %rax
	setne %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE234
	jmp WHILE_END232
	jmp END_IF234
ELSE234:
END_IF234:
END_IF233:
//}
	jmp WHILE232
WHILE_END232:
//call skip
	movq $41, %rax
	pushq %rax // 40
	popq %rdi // 32
	subq $0, %rsp // 32
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 32
	movslq -20(%rbp), %rax // count
	pushq %rax // 40
//cast to (int*)
//cast to (char*)
	movq -16(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 48
	movq $1772, %rax
	movq %rax, %r10
	popq %rax // 40
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 32
	movl %r10d, (%rax)
//call add_func
//cast to (char**)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -16(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 40
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 32
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 40
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 32
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 40
	movq -8(%rbp), %rax // ret_type
	pushq %rax // 48
	popq %rsi // 40
	popq %rdi // 32
	subq $0, %rsp // 32
	xorq %rax, %rax
	callq _add_func
	addq $0, %rsp // 32
	pushq %rax // 40
//cast to (Func**)
//cast to (char*)
	movq -16(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 48
	movq $152, %rax
	movq %rax, %r10
	popq %rax // 40
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 32
	movq %r10, (%rax)
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 40
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 32
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 40
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 32
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 40
	movq $59, %rax
	movq %rax, %r10
	popq %rax // 32
	cmpq %r10, %rax
	setne %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE235
//{ (1237)
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 40
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 32
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 40
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 32
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 40
	movq $123, %rax
	movq %rax, %r10
	popq %rax // 32
	cmpq %r10, %rax
	setne %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE236
//call skip
	movq $123, %rax
	pushq %rax // 40
	popq %rdi // 32
	subq $0, %rsp // 32
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 32
	jmp END_IF236
ELSE236:
END_IF236:
//call statement
	subq $0, %rsp // 32
	xorq %rax, %rax
	callq _statement
	addq $0, %rsp // 32
	pushq %rax // 40
//cast to (Node**)
//cast to (char*)
	movq -16(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 48
	movq $48, %rax
	movq %rax, %r10
	popq %rax // 40
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 32
	movq %r10, (%rax)
//}
	jmp END_IF235
ELSE235:
//call skip
	movq $59, %rax
	pushq %rax // 40
	popq %rdi // 32
	subq $0, %rsp // 32
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 32
END_IF235:
//call leave_scope
	subq $0, %rsp // 32
	xorq %rax, %rax
	callq _leave_scope
	addq $0, %rsp // 32
//cast to (Node*)
	movq $0, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq %rax, _curr_func(%rip)
	movq -16(%rbp), %rax // node
	movq %rbp, %rsp
	popq %rbp
	ret
//}
	addq $32, %rsp // 0
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

//Node* statement_or_decl()
_statement_or_decl:
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp // 8
//{ (1251)
//if begin
//call is_typename
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 16
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 8
	imulq $40, %r10
	addq %r10, %rax
	pushq %rax // 16
	popq %rdi // 8
	subq $8, %rsp // 16
	xorq %rax, %rax
	callq _is_typename
	addq $8, %rsp // 8
	cmpq $0, %rax
	je ELSE237
//{ (1253)
//call decl
	movq $0, %rax
	pushq %rax // 16
	popq %rdi // 8
	subq $8, %rsp // 16
	xorq %rax, %rax
	callq _decl
	addq $8, %rsp // 8
	movq %rax, -8(%rbp) // node = rax
//call skip
	movq $59, %rax
	pushq %rax // 16
	popq %rdi // 8
	subq $8, %rsp // 16
	xorq %rax, %rax
	callq _skip
	addq $8, %rsp // 8
	movq -8(%rbp), %rax // node
	movq %rbp, %rsp
	popq %rbp
	ret
//}
	jmp END_IF237
ELSE237:
END_IF237:
//call statement
	subq $8, %rsp // 16
	xorq %rax, %rax
	callq _statement
	addq $8, %rsp // 8
	movq %rbp, %rsp
	popq %rbp
	ret
//}
	addq $8, %rsp // 0
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

//Node* decl(int is_struct)
_decl:
	pushq %rbp
	movq %rsp, %rbp
	subq $128, %rsp // 128
	movl %edi, -4(%rbp) //is_struct
//{ (1262)
//call new_node
	movq $18, %rax
	pushq %rax // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _new_node
	addq $0, %rsp // 128
	movq %rax, -16(%rbp) // decl = rax
//call parse_base_type
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _parse_base_type
	addq $0, %rsp // 128
	movq %rax, -24(%rbp) // base = rax
	movq -24(%rbp), %rax // base
	pushq %rax // 136
//cast to (Type**)
//cast to (char*)
	movq -16(%rbp), %rax // decl
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 144
	movq $120, %rax
	movq %rax, %r10
	popq %rax // 136
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 128
	movq %r10, (%rax)
	movq -16(%rbp), %rax // decl
	movq %rax, -32(%rbp) // curr = rax
WHILE238:
	movq $1, %rax
	cmpq $0, %rax
	je WHILE_END238
//{ (1269)
//call new_node
	movq $18, %rax
	pushq %rax // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _new_node
	addq $0, %rsp // 128
	pushq %rax // 136
//cast to (Node**)
//cast to (char*)
	movq -32(%rbp), %rax // curr
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 144
	movq $88, %rax
	movq %rax, %r10
	popq %rax // 136
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 128
	movq %r10, (%rax)
	movq -24(%rbp), %rax // base
	movq %rax, -40(%rbp) // type = rax
WHILE239:
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 136
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 128
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 136
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 128
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 136
	movq $42, %rax
	movq %rax, %r10
	popq %rax // 128
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je WHILE_END239
//{ (1273)
//call new_type
	movq $1, %rax
	pushq %rax // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _new_type
	addq $0, %rsp // 128
	movq %rax, -48(%rbp) // new = rax
	movq -40(%rbp), %rax // type
	pushq %rax // 136
//cast to (Type**)
//cast to (char*)
	movq -48(%rbp), %rax // new
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 144
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 136
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 128
	movq %r10, (%rax)
	movq -48(%rbp), %rax // new
	movq %rax, -40(%rbp) // type = rax
	movslq _ct(%rip), %rax
	pushq %rax // 136
	movslq _ct(%rip), %rax
	pushq %rax // 144
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 136
	addq %r10, %rax
	movl %eax, _ct(%rip)
	popq %rax // 128
//}
	jmp WHILE239
WHILE_END239:
//if begin
//cast to (Type**)
//cast to (char*)
	movq -40(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 136
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 128
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR241
//cast to (int*)
//cast to (char*)
	movq -40(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 136
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 128
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 136
	movq $9, %rax
	movq %rax, %r10
	popq %rax // 128
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR241:
	cmpq $0, %rax
	je ELSE240
//call error_token
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 136
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 128
	imulq $40, %r10
	addq %r10, %rax
	pushq %rax // 136
	leaq L_.str.61(%rip), %rax
	pushq %rax // 144
	popq %rsi // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _error_token
	addq $0, %rsp // 128
	jmp END_IF240
ELSE240:
END_IF240:
//if begin
//cast to (int*)
//cast to (char*)
	movq -40(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 136
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 128
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 136
	movq $2, %rax
	movq %rax, %r10
	popq %rax // 128
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR243
//cast to (Type**)
//cast to (char*)
	movq -40(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 136
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 128
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR243:
	cmpq $0, %rax
	je ELSE242
//call error_token
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 136
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 128
	imulq $40, %r10
	addq %r10, %rax
	pushq %rax // 136
	leaq L_.str.67(%rip), %rax
	pushq %rax // 144
	popq %rsi // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _error_token
	addq $0, %rsp // 128
	jmp END_IF242
ELSE242:
END_IF242:
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 136
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 128
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 136
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 128
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 136
	movq $257, %rax
	movq %rax, %r10
	popq %rax // 128
	cmpq %r10, %rax
	setne %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE244
//call skip
	movq $257, %rax
	pushq %rax // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 128
	jmp END_IF244
ELSE244:
END_IF244:
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 136
	movslq _ct(%rip), %rax
	pushq %rax // 144
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 136
	addq %r10, %rax
	movq %rax, %r10
	popq %rax // 128
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 136
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 128
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 136
	movq $91, %rax
	movq %rax, %r10
	popq %rax // 128
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE245
//{ (1287)
//call new_type
	movq $3, %rax
	pushq %rax // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _new_type
	addq $0, %rsp // 128
	movq %rax, -64(%rbp) // arr = rax
	movq -40(%rbp), %rax // type
	pushq %rax // 136
//cast to (Type**)
//cast to (char*)
	movq -64(%rbp), %rax // arr
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 144
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 136
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 128
	movq %r10, (%rax)
//cast to (int*)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
	movq -64(%rbp), %rax // arr
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 136
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 128
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 136
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 128
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 136
//cast to (int*)
//cast to (char*)
	movq -64(%rbp), %rax // arr
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 144
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 136
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 128
	movl %r10d, (%rax)
//cast to (int)
//cast to (long*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 136
	movslq _ct(%rip), %rax
	pushq %rax // 144
	movq $2, %rax
	movq %rax, %r10
	popq %rax // 136
	addq %r10, %rax
	movq %rax, %r10
	popq %rax // 128
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 136
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 128
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	movslq %eax, %r10
	movq %r10, %rax
	pushq %rax // 136
//cast to (int*)
//cast to (char*)
	movq -64(%rbp), %rax // arr
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 144
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 136
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 128
	movl %r10d, (%rax)
	movq -64(%rbp), %rax // arr
	movq %rax, -40(%rbp) // type = rax
//if begin
	movslq -4(%rbp), %rax // is_struct
	cmpq $0, %rax
	je ELSE246
//{ (1294)
	movq _vars@GOTPCREL(%rip), %rax
	pushq %rax // 136
	movslq _var_count(%rip), %rax
	pushq %rax // 144
	movslq _var_count(%rip), %rax
	pushq %rax // 152
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 144
	addq %r10, %rax
	movl %eax, _var_count(%rip)
	popq %rax // 136
	movq %rax, %r10
	popq %rax // 128
	imulq $48, %r10
	addq %r10, %rax
	movq %rax, -56(%rbp) // var = rax
//cast to (char**)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 136
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 128
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 136
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 128
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 136
//cast to (char**)
//cast to (char*)
	movq -56(%rbp), %rax // var
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 144
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 136
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 128
	movq %r10, (%rax)
	movq -40(%rbp), %rax // type
	pushq %rax // 136
//cast to (Type**)
//cast to (char*)
	movq -56(%rbp), %rax // var
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 144
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 136
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 128
	movq %r10, (%rax)
//}
	jmp END_IF246
ELSE246:
//call new_var
	movq -40(%rbp), %rax // type
	pushq %rax // 136
//cast to (char**)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 144
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 136
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 144
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 136
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 144
	popq %rsi // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _new_var
	addq $0, %rsp // 128
	movq %rax, -56(%rbp) // var = rax
END_IF246:
	movslq _ct(%rip), %rax
	pushq %rax // 136
	movq $2, %rax
	movq %rax, %r10
	popq %rax // 128
	addq %r10, %rax
	movl %eax, _ct(%rip)
//call skip
	movq $256, %rax
	pushq %rax // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 128
//call skip
	movq $93, %rax
	pushq %rax // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 128
//}
	jmp END_IF245
ELSE245:
//{ (1306)
//if begin
	movslq -4(%rbp), %rax // is_struct
	cmpq $0, %rax
	je ELSE247
//{ (1308)
	movq _vars@GOTPCREL(%rip), %rax
	pushq %rax // 136
	movslq _var_count(%rip), %rax
	pushq %rax // 144
	movslq _var_count(%rip), %rax
	pushq %rax // 152
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 144
	addq %r10, %rax
	movl %eax, _var_count(%rip)
	popq %rax // 136
	movq %rax, %r10
	popq %rax // 128
	imulq $48, %r10
	addq %r10, %rax
	movq %rax, -56(%rbp) // var = rax
//cast to (char**)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 136
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 128
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 136
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 128
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 136
//cast to (char**)
//cast to (char*)
	movq -56(%rbp), %rax // var
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 144
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 136
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 128
	movq %r10, (%rax)
	movq -40(%rbp), %rax // type
	pushq %rax // 136
//cast to (Type**)
//cast to (char*)
	movq -56(%rbp), %rax // var
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 144
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 136
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 128
	movq %r10, (%rax)
//}
	jmp END_IF247
ELSE247:
//call new_var
	movq -40(%rbp), %rax // type
	pushq %rax // 136
//cast to (char**)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 144
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 136
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 144
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 136
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 144
	popq %rsi // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _new_var
	addq $0, %rsp // 128
	movq %rax, -56(%rbp) // var = rax
END_IF247:
	movslq _ct(%rip), %rax
	pushq %rax // 136
	movslq _ct(%rip), %rax
	pushq %rax // 144
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 136
	addq %r10, %rax
	movl %eax, _ct(%rip)
	popq %rax // 128
//}
END_IF245:
//cast to (Node**)
//cast to (char*)
	movq -32(%rbp), %rax // curr
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 136
	movq $88, %rax
	movq %rax, %r10
	popq %rax // 128
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 136
//cast to (Node**)
//cast to (char*)
	movq -56(%rbp), %rax // var
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 144
	movq $40, %rax
	movq %rax, %r10
	popq %rax // 136
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 128
	movq %r10, (%rax)
//if begin
//cast to (Scope**)
//cast to (char*)
	movq _curr_scope(%rip), %rax // curr_scope
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 136
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 128
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE248
	movq $1, %rax
	pushq %rax // 136
//cast to (int*)
//cast to (char*)
	movq -56(%rbp), %rax // var
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 144
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 136
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 128
	movl %r10d, (%rax)
	jmp END_IF248
ELSE248:
END_IF248:
	movq -56(%rbp), %rax // var
	pushq %rax // 136
//cast to (Var**)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -32(%rbp), %rax // curr
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 144
	movq $88, %rax
	movq %rax, %r10
	popq %rax // 136
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 144
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 136
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 128
	movq %r10, (%rax)
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 136
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 128
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 136
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 128
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 136
	movq $61, %rax
	movq %rax, %r10
	popq %rax // 128
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE249
//{ (1322)
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 136
	movslq _ct(%rip), %rax
	pushq %rax // 144
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 136
	addq %r10, %rax
	movq %rax, %r10
	popq %rax // 128
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 136
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 128
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 136
	movq $123, %rax
	movq %rax, %r10
	popq %rax // 128
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE250
//{ (1324)
//if begin
//cast to (int*)
//cast to (char*)
	movq -40(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 136
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 128
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 136
	movq $3, %rax
	movq %rax, %r10
	popq %rax // 128
	cmpq %r10, %rax
	setne %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE251
//call error_token
//cast to (Token**)
//cast to (char*)
	movq -56(%rbp), %rax // var
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 136
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 128
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 136
	leaq L_.str.68(%rip), %rax
	pushq %rax // 144
	popq %rsi // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _error_token
	addq $0, %rsp // 128
	jmp END_IF251
ELSE251:
END_IF251:
	movslq _ct(%rip), %rax
	pushq %rax // 136
	movq $2, %rax
	movq %rax, %r10
	popq %rax // 128
	addq %r10, %rax
	movl %eax, _ct(%rip)
	movq $0, %rax
	movl %eax, -68(%rbp) // end = rax
//cast to (Node*)
	movq $0, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq %rax, -80(%rbp) // init = rax
//cast to (Node*)
	movq $0, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq %rax, -88(%rbp) // c = rax
//for init
	movq $0, %rax
	movl %eax, -92(%rbp) // i = rax
FOR252:
//{ (1336)
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 136
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 128
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 136
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 128
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 136
	movq $125, %rax
	movq %rax, %r10
	popq %rax // 128
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE253
	movq $1, %rax
	movl %eax, -68(%rbp) // end = rax
	jmp END_IF253
ELSE253:
END_IF253:
//if begin
	movslq -68(%rbp), %rax // end
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR255
	movslq -92(%rbp), %rax // i
	pushq %rax // 136
//cast to (int*)
//cast to (char*)
	movq -40(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 144
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 136
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	movq %rax, %r10
	popq %rax // 128
	cmpq %r10, %rax
	setge %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR255:
	cmpq $0, %rax
	je ELSE254
	jmp FOR_END252
	jmp END_IF254
ELSE254:
END_IF254:
//if begin
	movslq -92(%rbp), %rax // i
	pushq %rax // 136
//cast to (int*)
//cast to (char*)
	movq -40(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 144
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 136
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	movq %rax, %r10
	popq %rax // 128
	cmpq %r10, %rax
	setge %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE256
//{ (1342)
//call assign
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _assign
	addq $0, %rsp // 128
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 136
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 128
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 136
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 128
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 136
	movq $44, %rax
	movq %rax, %r10
	popq %rax // 128
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE257
	movslq _ct(%rip), %rax
	pushq %rax // 136
	movslq _ct(%rip), %rax
	pushq %rax // 144
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 136
	addq %r10, %rax
	movl %eax, _ct(%rip)
	popq %rax // 128
	jmp END_IF257
ELSE257:
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 136
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 128
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 136
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 128
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 136
	movq $125, %rax
	movq %rax, %r10
	popq %rax // 128
	cmpq %r10, %rax
	setne %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE258
//call skip
	movq $125, %rax
	pushq %rax // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 128
	jmp END_IF258
ELSE258:
END_IF258:
END_IF257:
	jmp FOR_INC252
//}
	jmp END_IF256
ELSE256:
END_IF256:
//if begin
	movslq -68(%rbp), %rax // end
	cmpq $0, %rax
	je ELSE259
//{ (1352)
//call new_node
	movq $4, %rax
	pushq %rax // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _new_node
	addq $0, %rsp // 128
	movq %rax, -104(%rbp) // value = rax
//call new_temp_token
	movq $256, %rax
	pushq %rax // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _new_temp_token
	addq $0, %rsp // 128
	pushq %rax // 136
//cast to (Token**)
//cast to (char*)
	movq -104(%rbp), %rax // value
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 144
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 136
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 128
	movq %r10, (%rax)
//cast to (long)
	movq $0, %rax
	pushq %rax // 136
//cast to (long*)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -104(%rbp), %rax // value
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 144
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 136
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 144
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 136
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 128
	movq %r10, (%rax)
//}
	jmp END_IF259
ELSE259:
//{ (1358)
//call assign
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _assign
	addq $0, %rsp // 128
	movq %rax, -104(%rbp) // value = rax
//}
END_IF259:
//call new_node
	movq $5, %rax
	pushq %rax // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _new_node
	addq $0, %rsp // 128
	movq %rax, -112(%rbp) // add = rax
//call new_temp_token
	movq $43, %rax
	pushq %rax // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _new_temp_token
	addq $0, %rsp // 128
	pushq %rax // 136
//cast to (Token**)
//cast to (char*)
	movq -112(%rbp), %rax // add
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 144
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 136
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 128
	movq %r10, (%rax)
//call new_node
	movq $2, %rax
	pushq %rax // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _new_node
	addq $0, %rsp // 128
	pushq %rax // 136
//cast to (Node**)
//cast to (char*)
	movq -112(%rbp), %rax // add
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 144
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 136
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 128
	movq %r10, (%rax)
	movq -56(%rbp), %rax // var
	pushq %rax // 136
//cast to (Var**)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -112(%rbp), %rax // add
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 144
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 136
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 144
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 136
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 128
	movq %r10, (%rax)
//call new_node
	movq $4, %rax
	pushq %rax // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _new_node
	addq $0, %rsp // 128
	pushq %rax // 136
//cast to (Node**)
//cast to (char*)
	movq -112(%rbp), %rax // add
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 144
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 136
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 128
	movq %r10, (%rax)
//call new_temp_token
	movq $269, %rax
	pushq %rax // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _new_temp_token
	addq $0, %rsp // 128
	pushq %rax // 136
//cast to (Token**)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -112(%rbp), %rax // add
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 144
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 136
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 144
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 136
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 128
	movq %r10, (%rax)
//cast to (long)
	movslq -92(%rbp), %rax // i
	pushq %rax // 136
//cast to (long*)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -112(%rbp), %rax // add
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 144
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 136
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 144
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 136
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 144
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 136
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 128
	movq %r10, (%rax)
//call new_node
	movq $16, %rax
	pushq %rax // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _new_node
	addq $0, %rsp // 128
	movq %rax, -120(%rbp) // deref = rax
//call new_temp_token
	movq $42, %rax
	pushq %rax // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _new_temp_token
	addq $0, %rsp // 128
	pushq %rax // 136
//cast to (Token**)
//cast to (char*)
	movq -120(%rbp), %rax // deref
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 144
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 136
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 128
	movq %r10, (%rax)
	movq -112(%rbp), %rax // add
	pushq %rax // 136
//cast to (Node**)
//cast to (char*)
	movq -120(%rbp), %rax // deref
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 144
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 136
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 128
	movq %r10, (%rax)
//call new_node
	movq $6, %rax
	pushq %rax // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _new_node
	addq $0, %rsp // 128
	movq %rax, -128(%rbp) // a = rax
//call new_temp_token
	movq $61, %rax
	pushq %rax // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _new_temp_token
	addq $0, %rsp // 128
	pushq %rax // 136
//cast to (Token**)
//cast to (char*)
	movq -128(%rbp), %rax // a
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 144
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 136
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 128
	movq %r10, (%rax)
	movq -120(%rbp), %rax // deref
	pushq %rax // 136
//cast to (Node**)
//cast to (char*)
	movq -128(%rbp), %rax // a
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 144
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 136
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 128
	movq %r10, (%rax)
	movq -104(%rbp), %rax // value
	pushq %rax // 136
//cast to (Node**)
//cast to (char*)
	movq -128(%rbp), %rax // a
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 144
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 136
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 128
	movq %r10, (%rax)
//if begin
	movq -88(%rbp), %rax // c
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE260
//{ (1381)
	movq -128(%rbp), %rax // a
	movq %rax, -88(%rbp) // c = rax
	movq -128(%rbp), %rax // a
	movq %rax, -80(%rbp) // init = rax
//}
	jmp END_IF260
ELSE260:
//{ (1386)
	movq -128(%rbp), %rax // a
	pushq %rax // 136
//cast to (Node**)
//cast to (char*)
	movq -88(%rbp), %rax // c
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 144
	movq $104, %rax
	movq %rax, %r10
	popq %rax // 136
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 128
	movq %r10, (%rax)
//cast to (Node**)
//cast to (char*)
	movq -88(%rbp), %rax // c
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 136
	movq $104, %rax
	movq %rax, %r10
	popq %rax // 128
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	movq %rax, -88(%rbp) // c = rax
//}
END_IF260:
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 136
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 128
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 136
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 128
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 136
	movq $44, %rax
	movq %rax, %r10
	popq %rax // 128
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE261
	movslq _ct(%rip), %rax
	pushq %rax // 136
	movslq _ct(%rip), %rax
	pushq %rax // 144
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 136
	addq %r10, %rax
	movl %eax, _ct(%rip)
	popq %rax // 128
	jmp END_IF261
ELSE261:
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 136
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 128
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 136
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 128
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 136
	movq $125, %rax
	movq %rax, %r10
	popq %rax // 128
	cmpq %r10, %rax
	setne %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE262
//call skip
	movq $125, %rax
	pushq %rax // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 128
	jmp END_IF262
ELSE262:
END_IF262:
END_IF261:
//}
FOR_INC252:
	movslq -92(%rbp), %rax // i
	pushq %rax // 136
	movslq -92(%rbp), %rax // i
	pushq %rax // 144
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 136
	addq %r10, %rax
	movl %eax, -92(%rbp) // i = rax
	popq %rax // 128
	jmp FOR252
FOR_END252:
//call skip
	movq $125, %rax
	pushq %rax // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 128
	movq -80(%rbp), %rax // init
	pushq %rax // 136
//cast to (Node**)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -32(%rbp), %rax // curr
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 144
	movq $88, %rax
	movq %rax, %r10
	popq %rax // 136
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 144
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 136
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 128
	movq %r10, (%rax)
//}
	jmp END_IF250
ELSE250:
//{ (1400)
	movslq _ct(%rip), %rax
	pushq %rax // 136
	movslq _ct(%rip), %rax
	pushq %rax // 144
	movq $-1, %rax
	movq %rax, %r10
	popq %rax // 136
	addq %r10, %rax
	movl %eax, _ct(%rip)
	popq %rax // 128
//call assign
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _assign
	addq $0, %rsp // 128
	pushq %rax // 136
//cast to (Node**)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -32(%rbp), %rax // curr
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 144
	movq $88, %rax
	movq %rax, %r10
	popq %rax // 136
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 144
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 136
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 128
	movq %r10, (%rax)
//}
END_IF250:
//call add_type
//cast to (Node**)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -32(%rbp), %rax // curr
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 136
	movq $88, %rax
	movq %rax, %r10
	popq %rax // 128
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 136
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 128
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _add_type
	addq $0, %rsp // 128
//}
	jmp END_IF249
ELSE249:
END_IF249:
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 136
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 128
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 136
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 128
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 136
	movq $44, %rax
	movq %rax, %r10
	popq %rax // 128
	cmpq %r10, %rax
	setne %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE263
	jmp WHILE_END238
	jmp END_IF263
ELSE263:
END_IF263:
	movslq _ct(%rip), %rax
	pushq %rax // 136
	movslq _ct(%rip), %rax
	pushq %rax // 144
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 136
	addq %r10, %rax
	movl %eax, _ct(%rip)
	popq %rax // 128
//cast to (Node**)
//cast to (char*)
	movq -32(%rbp), %rax // curr
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 136
	movq $88, %rax
	movq %rax, %r10
	popq %rax // 128
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	movq %rax, -32(%rbp) // curr = rax
//}
	jmp WHILE238
WHILE_END238:
	movq -16(%rbp), %rax // decl
	movq %rbp, %rsp
	popq %rbp
	ret
//}
	addq $128, %rsp // 0
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

//Node* statement()
_statement:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp // 16
//{ (1415)
//cast to (Node*)
	movq $0, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq %rax, -8(%rbp) // node = rax
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 24
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 16
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 24
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 16
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 24
	movq $264, %rax
	movq %rax, %r10
	popq %rax // 16
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE264
//{ (1419)
//call new_node
	movq $8, %rax
	pushq %rax // 24
	popq %rdi // 16
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _new_node
	addq $0, %rsp // 16
	movq %rax, -8(%rbp) // node = rax
	movslq _ct(%rip), %rax
	pushq %rax // 24
	movslq _ct(%rip), %rax
	pushq %rax // 32
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 24
	addq %r10, %rax
	movl %eax, _ct(%rip)
	popq %rax // 16
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 24
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 16
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 24
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 16
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 24
	movq $59, %rax
	movq %rax, %r10
	popq %rax // 16
	cmpq %r10, %rax
	setne %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE265
//call expr
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _expr
	addq $0, %rsp // 16
	pushq %rax // 24
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 32
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 24
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 16
	movq %r10, (%rax)
	jmp END_IF265
ELSE265:
//call new_node
	movq $0, %rax
	pushq %rax // 24
	popq %rdi // 16
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _new_node
	addq $0, %rsp // 16
	pushq %rax // 24
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 32
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 24
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 16
	movq %r10, (%rax)
END_IF265:
//call skip
	movq $59, %rax
	pushq %rax // 24
	popq %rdi // 16
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 16
//}
	jmp END_IF264
ELSE264:
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 24
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 16
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 24
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 16
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 24
	movq $278, %rax
	movq %rax, %r10
	popq %rax // 16
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE266
//{ (1429)
//call new_node
	movq $20, %rax
	pushq %rax // 24
	popq %rdi // 16
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _new_node
	addq $0, %rsp // 16
	movq %rax, -8(%rbp) // node = rax
	movslq _ct(%rip), %rax
	pushq %rax // 24
	movslq _ct(%rip), %rax
	pushq %rax // 32
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 24
	addq %r10, %rax
	movl %eax, _ct(%rip)
	popq %rax // 16
//call skip
	movq $59, %rax
	pushq %rax // 24
	popq %rdi // 16
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 16
//}
	jmp END_IF266
ELSE266:
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 24
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 16
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 24
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 16
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 24
	movq $277, %rax
	movq %rax, %r10
	popq %rax // 16
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE267
//{ (1435)
//call new_node
	movq $21, %rax
	pushq %rax // 24
	popq %rdi // 16
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _new_node
	addq $0, %rsp // 16
	movq %rax, -8(%rbp) // node = rax
	movslq _ct(%rip), %rax
	pushq %rax // 24
	movslq _ct(%rip), %rax
	pushq %rax // 32
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 24
	addq %r10, %rax
	movl %eax, _ct(%rip)
	popq %rax // 16
//call skip
	movq $59, %rax
	pushq %rax // 24
	popq %rdi // 16
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 16
//}
	jmp END_IF267
ELSE267:
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 24
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 16
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 24
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 16
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 24
	movq $265, %rax
	movq %rax, %r10
	popq %rax // 16
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE268
//{ (1441)
//call new_node
	movq $9, %rax
	pushq %rax // 24
	popq %rdi // 16
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _new_node
	addq $0, %rsp // 16
	movq %rax, -8(%rbp) // node = rax
	movslq _ct(%rip), %rax
	pushq %rax // 24
	movslq _ct(%rip), %rax
	pushq %rax // 32
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 24
	addq %r10, %rax
	movl %eax, _ct(%rip)
	popq %rax // 16
//call skip
	movq $40, %rax
	pushq %rax // 24
	popq %rdi // 16
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 16
//call expr
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _expr
	addq $0, %rsp // 16
	pushq %rax // 24
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 32
	movq $56, %rax
	movq %rax, %r10
	popq %rax // 24
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 16
	movq %r10, (%rax)
//call skip
	movq $41, %rax
	pushq %rax // 24
	popq %rdi // 16
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 16
//call statement
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _statement
	addq $0, %rsp // 16
	pushq %rax // 24
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 32
	movq $48, %rax
	movq %rax, %r10
	popq %rax // 24
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 16
	movq %r10, (%rax)
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 24
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 16
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 24
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 16
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 24
	movq $266, %rax
	movq %rax, %r10
	popq %rax // 16
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE269
//{ (1449)
	movslq _ct(%rip), %rax
	pushq %rax // 24
	movslq _ct(%rip), %rax
	pushq %rax // 32
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 24
	addq %r10, %rax
	movl %eax, _ct(%rip)
	popq %rax // 16
//call statement
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _statement
	addq $0, %rsp // 16
	pushq %rax // 24
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 32
	movq $136, %rax
	movq %rax, %r10
	popq %rax // 24
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 16
	movq %r10, (%rax)
//}
	jmp END_IF269
ELSE269:
END_IF269:
//}
	jmp END_IF268
ELSE268:
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 24
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 16
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 24
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 16
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 24
	movq $267, %rax
	movq %rax, %r10
	popq %rax // 16
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE270
//{ (1455)
//call new_node
	movq $10, %rax
	pushq %rax // 24
	popq %rdi // 16
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _new_node
	addq $0, %rsp // 16
	movq %rax, -8(%rbp) // node = rax
	movslq _ct(%rip), %rax
	pushq %rax // 24
	movslq _ct(%rip), %rax
	pushq %rax // 32
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 24
	addq %r10, %rax
	movl %eax, _ct(%rip)
	popq %rax // 16
//call skip
	movq $40, %rax
	pushq %rax // 24
	popq %rdi // 16
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 16
//call expr
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _expr
	addq $0, %rsp // 16
	pushq %rax // 24
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 32
	movq $56, %rax
	movq %rax, %r10
	popq %rax // 24
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 16
	movq %r10, (%rax)
//call skip
	movq $41, %rax
	pushq %rax // 24
	popq %rdi // 16
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 16
//call statement
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _statement
	addq $0, %rsp // 16
	pushq %rax // 24
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 32
	movq $48, %rax
	movq %rax, %r10
	popq %rax // 24
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 16
	movq %r10, (%rax)
//}
	jmp END_IF270
ELSE270:
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 24
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 16
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 24
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 16
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 24
	movq $268, %rax
	movq %rax, %r10
	popq %rax // 16
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE271
//{ (1464)
//call enter_scope
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _enter_scope
	addq $0, %rsp // 16
//call new_node
	movq $11, %rax
	pushq %rax // 24
	popq %rdi // 16
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _new_node
	addq $0, %rsp // 16
	movq %rax, -8(%rbp) // node = rax
	movslq _ct(%rip), %rax
	pushq %rax // 24
	movslq _ct(%rip), %rax
	pushq %rax // 32
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 24
	addq %r10, %rax
	movl %eax, _ct(%rip)
	popq %rax // 16
//call skip
	movq $40, %rax
	pushq %rax // 24
	popq %rdi // 16
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 16
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 24
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 16
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 24
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 16
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 24
	movq $59, %rax
	movq %rax, %r10
	popq %rax // 16
	cmpq %r10, %rax
	setne %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE272
//{ (1470)
//if begin
//call is_typename
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 24
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 16
	imulq $40, %r10
	addq %r10, %rax
	pushq %rax // 24
	popq %rdi // 16
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _is_typename
	addq $0, %rsp // 16
	cmpq $0, %rax
	je ELSE273
//call decl
	movq $0, %rax
	pushq %rax // 24
	popq %rdi // 16
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _decl
	addq $0, %rsp // 16
	pushq %rax // 24
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 32
	movq $64, %rax
	movq %rax, %r10
	popq %rax // 24
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 16
	movq %r10, (%rax)
	jmp END_IF273
ELSE273:
//call expr
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _expr
	addq $0, %rsp // 16
	pushq %rax // 24
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 32
	movq $64, %rax
	movq %rax, %r10
	popq %rax // 24
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 16
	movq %r10, (%rax)
END_IF273:
//}
	jmp END_IF272
ELSE272:
END_IF272:
//call skip
	movq $59, %rax
	pushq %rax // 24
	popq %rdi // 16
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 16
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 24
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 16
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 24
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 16
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 24
	movq $59, %rax
	movq %rax, %r10
	popq %rax // 16
	cmpq %r10, %rax
	setne %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE274
//call expr
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _expr
	addq $0, %rsp // 16
	pushq %rax // 24
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 32
	movq $56, %rax
	movq %rax, %r10
	popq %rax // 24
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 16
	movq %r10, (%rax)
	jmp END_IF274
ELSE274:
END_IF274:
//call skip
	movq $59, %rax
	pushq %rax // 24
	popq %rdi // 16
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 16
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 24
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 16
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 24
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 16
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 24
	movq $41, %rax
	movq %rax, %r10
	popq %rax // 16
	cmpq %r10, %rax
	setne %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE275
//call expr
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _expr
	addq $0, %rsp // 16
	pushq %rax // 24
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 32
	movq $72, %rax
	movq %rax, %r10
	popq %rax // 24
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 16
	movq %r10, (%rax)
	jmp END_IF275
ELSE275:
END_IF275:
//call skip
	movq $41, %rax
	pushq %rax // 24
	popq %rdi // 16
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 16
//call statement
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _statement
	addq $0, %rsp // 16
	pushq %rax // 24
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 32
	movq $48, %rax
	movq %rax, %r10
	popq %rax // 24
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 16
	movq %r10, (%rax)
//call leave_scope
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _leave_scope
	addq $0, %rsp // 16
//}
	jmp END_IF271
ELSE271:
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 24
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 16
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 24
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 16
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 24
	movq $123, %rax
	movq %rax, %r10
	popq %rax // 16
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE276
//{ (1487)
//call new_node
	movq $12, %rax
	pushq %rax // 24
	popq %rdi // 16
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _new_node
	addq $0, %rsp // 16
	movq %rax, -8(%rbp) // node = rax
	movslq _ct(%rip), %rax
	pushq %rax // 24
	movslq _ct(%rip), %rax
	pushq %rax // 32
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 24
	addq %r10, %rax
	movl %eax, _ct(%rip)
	popq %rax // 16
	movq -8(%rbp), %rax // node
	movq %rax, -16(%rbp) // curr = rax
//call enter_scope
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _enter_scope
	addq $0, %rsp // 16
WHILE277:
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 24
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 16
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 24
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 16
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 24
	movq $125, %rax
	movq %rax, %r10
	popq %rax // 16
	cmpq %r10, %rax
	setne %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR278
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 24
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 16
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 24
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 16
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR278:
	cmpq $0, %rax
	je WHILE_END277
//{ (1494)
//call statement_or_decl
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _statement_or_decl
	addq $0, %rsp // 16
	pushq %rax // 24
//cast to (Node**)
//cast to (char*)
	movq -16(%rbp), %rax // curr
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 32
	movq $80, %rax
	movq %rax, %r10
	popq %rax // 24
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 16
	movq %r10, (%rax)
//cast to (Node**)
//cast to (char*)
	movq -16(%rbp), %rax // curr
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 24
	movq $80, %rax
	movq %rax, %r10
	popq %rax // 16
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	movq %rax, -16(%rbp) // curr = rax
//}
	jmp WHILE277
WHILE_END277:
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 24
	movq $80, %rax
	movq %rax, %r10
	popq %rax // 16
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 24
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 32
	movq $96, %rax
	movq %rax, %r10
	popq %rax // 24
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 16
	movq %r10, (%rax)
//cast to (Node*)
	movq $0, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 24
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 32
	movq $80, %rax
	movq %rax, %r10
	popq %rax // 24
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 16
	movq %r10, (%rax)
//call leave_scope
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _leave_scope
	addq $0, %rsp // 16
//cast to (Node*)
	movq $0, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 24
//cast to (Node**)
//cast to (char*)
	movq -16(%rbp), %rax // curr
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 32
	movq $80, %rax
	movq %rax, %r10
	popq %rax // 24
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 16
	movq %r10, (%rax)
//call skip
	movq $125, %rax
	pushq %rax // 24
	popq %rdi // 16
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 16
//}
	jmp END_IF276
ELSE276:
//{ (1507)
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 24
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 16
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 24
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 16
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 24
	movq $59, %rax
	movq %rax, %r10
	popq %rax // 16
	cmpq %r10, %rax
	setne %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE279
//call expr
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _expr
	addq $0, %rsp // 16
	movq %rax, -8(%rbp) // node = rax
	jmp END_IF279
ELSE279:
//call new_node
	movq $0, %rax
	pushq %rax // 24
	popq %rdi // 16
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _new_node
	addq $0, %rsp // 16
	movq %rax, -8(%rbp) // node = rax
END_IF279:
//call skip
	movq $59, %rax
	pushq %rax // 24
	popq %rdi // 16
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 16
//}
END_IF276:
END_IF271:
END_IF270:
END_IF268:
END_IF267:
END_IF266:
END_IF264:
	movq -8(%rbp), %rax // node
	movq %rbp, %rsp
	popq %rbp
	ret
//}
	addq $16, %rsp // 0
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

//Node* expr()
_expr:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp // 16
//{ (1518)
//call assign
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _assign
	addq $0, %rsp // 16
	movq %rax, -8(%rbp) // node = rax
	movq -8(%rbp), %rax // node
	movq %rax, -16(%rbp) // curr = rax
WHILE280:
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 24
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 16
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 24
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 16
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 24
	movq $44, %rax
	movq %rax, %r10
	popq %rax // 16
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je WHILE_END280
//{ (1522)
	movslq _ct(%rip), %rax
	pushq %rax // 24
	movslq _ct(%rip), %rax
	pushq %rax // 32
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 24
	addq %r10, %rax
	movl %eax, _ct(%rip)
	popq %rax // 16
//call assign
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _assign
	addq $0, %rsp // 16
	pushq %rax // 24
//cast to (Node**)
//cast to (char*)
	movq -16(%rbp), %rax // curr
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 32
	movq $104, %rax
	movq %rax, %r10
	popq %rax // 24
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 16
	movq %r10, (%rax)
//cast to (Node**)
//cast to (char*)
	movq -16(%rbp), %rax // curr
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 24
	movq $104, %rax
	movq %rax, %r10
	popq %rax // 16
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	movq %rax, -16(%rbp) // curr = rax
//}
	jmp WHILE280
WHILE_END280:
	movq -8(%rbp), %rax // node
	movq %rbp, %rsp
	popq %rbp
	ret
//}
	addq $16, %rsp // 0
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

//Node* assign()
_assign:
	pushq %rbp
	movq %rsp, %rbp
	subq $24, %rsp // 24
//{ (1531)
//call conditional
	subq $8, %rsp // 32
	xorq %rax, %rax
	callq _conditional
	addq $8, %rsp // 24
	movq %rax, -8(%rbp) // left = rax
//if begin
//call type_match
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 32
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 24
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 32
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 24
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 32
	movq $61, %rax
	pushq %rax // 40
	movq $282, %rax
	pushq %rax // 48
	movq $283, %rax
	pushq %rax // 56
	movq $285, %rax
	pushq %rax // 64
	movq $284, %rax
	pushq %rax // 72
	popq %r9 // 64
	popq %r8 // 56
	popq %rcx // 48
	popq %rdx // 40
	popq %rsi // 32
	popq %rdi // 24
	subq $0, %rsp // 24
	movq $1, %rax
	xorq %r10, %r10
	subq %rax, %r10
	movq %r10, %rax
	pushq %rax // 32
	xorq %rax, %rax
	callq _type_match
	addq $8, %rsp // 24
	cmpq $0, %rax
	je ELSE281
//{ (1536)
//call add_type
	movq -8(%rbp), %rax // left
	pushq %rax // 32
	popq %rdi // 24
	subq $8, %rsp // 32
	xorq %rax, %rax
	callq _add_type
	addq $8, %rsp // 24
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // left
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 32
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 24
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 32
	movq $2, %rax
	movq %rax, %r10
	popq %rax // 24
	cmpq %r10, %rax
	setne %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR283
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // left
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 32
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 24
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 32
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 24
	cmpq %r10, %rax
	setne %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR283:
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR284
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // left
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 32
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 24
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 32
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 24
	cmpq %r10, %rax
	setne %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR284:
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR285
//cast to (int*)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
	movq -8(%rbp), %rax // left
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 32
	movq $144, %rax
	movq %rax, %r10
	popq %rax // 24
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 32
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 24
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 32
	movq $3, %rax
	movq %rax, %r10
	popq %rax // 24
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR285:
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR286
//cast to (int*)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
	movq -8(%rbp), %rax // left
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 32
	movq $144, %rax
	movq %rax, %r10
	popq %rax // 24
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 32
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 24
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 32
	movq $2, %rax
	movq %rax, %r10
	popq %rax // 24
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR286:
	cmpq $0, %rax
	je ELSE282
//call error_token
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 32
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 24
	imulq $40, %r10
	addq %r10, %rax
	pushq %rax // 32
	leaq L_.str.69(%rip), %rax
	pushq %rax // 40
	popq %rsi // 32
	popq %rdi // 24
	subq $8, %rsp // 32
	xorq %rax, %rax
	callq _error_token
	addq $8, %rsp // 24
	jmp END_IF282
ELSE282:
END_IF282:
//call new_node
	movq $6, %rax
	pushq %rax // 32
	popq %rdi // 24
	subq $8, %rsp // 32
	xorq %rax, %rax
	callq _new_node
	addq $8, %rsp // 24
	movq %rax, -16(%rbp) // node = rax
	movslq _ct(%rip), %rax
	pushq %rax // 32
	movslq _ct(%rip), %rax
	pushq %rax // 40
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 32
	addq %r10, %rax
	movl %eax, _ct(%rip)
	popq %rax // 24
	movq -8(%rbp), %rax // left
	pushq %rax // 32
//cast to (Node**)
//cast to (char*)
	movq -16(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 40
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 32
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 24
	movq %r10, (%rax)
//call assign
	subq $8, %rsp // 32
	xorq %rax, %rax
	callq _assign
	addq $8, %rsp // 24
	pushq %rax // 32
//cast to (Node**)
//cast to (char*)
	movq -16(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 40
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 32
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 24
	movq %r10, (%rax)
//if begin
//cast to (int*)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -16(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 32
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 24
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 32
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 24
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 32
	movq $61, %rax
	movq %rax, %r10
	popq %rax // 24
	cmpq %r10, %rax
	setne %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE287
//{ (1547)
//call new_node
	movq $5, %rax
	pushq %rax // 32
	popq %rdi // 24
	subq $8, %rsp // 32
	xorq %rax, %rax
	callq _new_node
	addq $8, %rsp // 24
	movq %rax, -24(%rbp) // right = rax
//call new_temp_token
//cast to (char**)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -16(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 32
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 24
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 32
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 24
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 32
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 24
	imulq $1, %r10
	addq %r10, %rax
	movsbq (%rax), %rax
	pushq %rax // 32
	popq %rdi // 24
	subq $8, %rsp // 32
	xorq %rax, %rax
	callq _new_temp_token
	addq $8, %rsp // 24
	pushq %rax // 32
//cast to (Token**)
//cast to (char*)
	movq -24(%rbp), %rax // right
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 40
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 32
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 24
	movq %r10, (%rax)
	movq -8(%rbp), %rax // left
	pushq %rax // 32
//cast to (Node**)
//cast to (char*)
	movq -24(%rbp), %rax // right
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 40
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 32
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 24
	movq %r10, (%rax)
//cast to (Node**)
//cast to (char*)
	movq -16(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 32
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 24
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 32
//cast to (Node**)
//cast to (char*)
	movq -24(%rbp), %rax // right
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 40
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 32
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 24
	movq %r10, (%rax)
	movq -24(%rbp), %rax // right
	pushq %rax // 32
//cast to (Node**)
//cast to (char*)
	movq -16(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 40
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 32
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 24
	movq %r10, (%rax)
//}
	jmp END_IF287
ELSE287:
END_IF287:
//call add_type
	movq -16(%rbp), %rax // node
	pushq %rax // 32
	popq %rdi // 24
	subq $8, %rsp // 32
	xorq %rax, %rax
	callq _add_type
	addq $8, %rsp // 24
	movq -16(%rbp), %rax // node
	movq %rbp, %rsp
	popq %rbp
	ret
//}
	jmp END_IF281
ELSE281:
END_IF281:
//call add_type
	movq -8(%rbp), %rax // left
	pushq %rax // 32
	popq %rdi // 24
	subq $8, %rsp // 32
	xorq %rax, %rax
	callq _add_type
	addq $8, %rsp // 24
	movq -8(%rbp), %rax // left
	movq %rbp, %rsp
	popq %rbp
	ret
//}
	addq $24, %rsp // 0
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

//Node* conditional()
_conditional:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp // 16
//{ (1562)
//call logical_or
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _logical_or
	addq $0, %rsp // 16
	movq %rax, -8(%rbp) // left = rax
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 24
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 16
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 24
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 16
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 24
	movq $63, %rax
	movq %rax, %r10
	popq %rax // 16
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE288
//{ (1565)
//call new_node
	movq $23, %rax
	pushq %rax // 24
	popq %rdi // 16
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _new_node
	addq $0, %rsp // 16
	movq %rax, -16(%rbp) // node = rax
	movslq _ct(%rip), %rax
	pushq %rax // 24
	movslq _ct(%rip), %rax
	pushq %rax // 32
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 24
	addq %r10, %rax
	movl %eax, _ct(%rip)
	popq %rax // 16
	movq -8(%rbp), %rax // left
	pushq %rax // 24
//cast to (Node**)
//cast to (char*)
	movq -16(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 32
	movq $56, %rax
	movq %rax, %r10
	popq %rax // 24
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 16
	movq %r10, (%rax)
//call expr
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _expr
	addq $0, %rsp // 16
	pushq %rax // 24
//cast to (Node**)
//cast to (char*)
	movq -16(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 32
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 24
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 16
	movq %r10, (%rax)
//call skip
	movq $58, %rax
	pushq %rax // 24
	popq %rdi // 16
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 16
//call conditional
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _conditional
	addq $0, %rsp // 16
	pushq %rax // 24
//cast to (Node**)
//cast to (char*)
	movq -16(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 32
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 24
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 16
	movq %r10, (%rax)
	movq -16(%rbp), %rax // node
	movq %rbp, %rsp
	popq %rbp
	ret
//}
	jmp END_IF288
ELSE288:
END_IF288:
	movq -8(%rbp), %rax // left
	movq %rbp, %rsp
	popq %rbp
	ret
//}
	addq $16, %rsp // 0
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

//Node* logical_or()
_logical_or:
	pushq %rbp
	movq %rsp, %rbp
	subq $0, %rsp // 0
//{ (1578)
//call binary
	leaq _logical_and(%rip), %rax
	pushq %rax // 8
	movq $259, %rax
	pushq %rax // 16
	movq $1, %rax
	xorq %r10, %r10
	subq %rax, %r10
	movq %r10, %rax
	pushq %rax // 24
	popq %rdx // 16
	popq %rsi // 8
	popq %rdi // 0
	subq $0, %rsp // 0
	xorq %rax, %rax
	callq _binary
	addq $0, %rsp // 0
	movq %rbp, %rsp
	popq %rbp
	ret
//}
	addq $0, %rsp // 0
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

//Node* logical_and()
_logical_and:
	pushq %rbp
	movq %rsp, %rbp
	subq $0, %rsp // 0
//{ (1583)
//call binary
	leaq _equality(%rip), %rax
	pushq %rax // 8
	movq $258, %rax
	pushq %rax // 16
	movq $1, %rax
	xorq %r10, %r10
	subq %rax, %r10
	movq %r10, %rax
	pushq %rax // 24
	popq %rdx // 16
	popq %rsi // 8
	popq %rdi // 0
	subq $0, %rsp // 0
	xorq %rax, %rax
	callq _binary
	addq $0, %rsp // 0
	movq %rbp, %rsp
	popq %rbp
	ret
//}
	addq $0, %rsp // 0
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

//Node* equality()
_equality:
	pushq %rbp
	movq %rsp, %rbp
	subq $0, %rsp // 0
//{ (1588)
//call binary
	leaq _relational(%rip), %rax
	pushq %rax // 8
	movq $260, %rax
	pushq %rax // 16
	movq $261, %rax
	pushq %rax // 24
	movq $1, %rax
	xorq %r10, %r10
	subq %rax, %r10
	movq %r10, %rax
	pushq %rax // 32
	popq %rcx // 24
	popq %rdx // 16
	popq %rsi // 8
	popq %rdi // 0
	subq $0, %rsp // 0
	xorq %rax, %rax
	callq _binary
	addq $0, %rsp // 0
	movq %rbp, %rsp
	popq %rbp
	ret
//}
	addq $0, %rsp // 0
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

//Node* relational()
_relational:
	pushq %rbp
	movq %rsp, %rbp
	subq $0, %rsp // 0
//{ (1593)
//call binary
	leaq _add(%rip), %rax
	pushq %rax // 8
	movq $60, %rax
	pushq %rax // 16
	movq $62, %rax
	pushq %rax // 24
	movq $262, %rax
	pushq %rax // 32
	movq $263, %rax
	pushq %rax // 40
	movq $1, %rax
	xorq %r10, %r10
	subq %rax, %r10
	movq %r10, %rax
	pushq %rax // 48
	popq %r9 // 40
	popq %r8 // 32
	popq %rcx // 24
	popq %rdx // 16
	popq %rsi // 8
	popq %rdi // 0
	subq $0, %rsp // 0
	xorq %rax, %rax
	callq _binary
	addq $0, %rsp // 0
	movq %rbp, %rsp
	popq %rbp
	ret
//}
	addq $0, %rsp // 0
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

//Node* add()
_add:
	pushq %rbp
	movq %rsp, %rbp
	subq $0, %rsp // 0
//{ (1598)
//call binary
	leaq _mul(%rip), %rax
	pushq %rax // 8
	movq $43, %rax
	pushq %rax // 16
	movq $45, %rax
	pushq %rax // 24
	movq $1, %rax
	xorq %r10, %r10
	subq %rax, %r10
	movq %r10, %rax
	pushq %rax // 32
	popq %rcx // 24
	popq %rdx // 16
	popq %rsi // 8
	popq %rdi // 0
	subq $0, %rsp // 0
	xorq %rax, %rax
	callq _binary
	addq $0, %rsp // 0
	movq %rbp, %rsp
	popq %rbp
	ret
//}
	addq $0, %rsp // 0
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

//Node* mul()
_mul:
	pushq %rbp
	movq %rsp, %rbp
	subq $0, %rsp // 0
//{ (1603)
//call binary
	leaq _cast(%rip), %rax
	pushq %rax // 8
	movq $42, %rax
	pushq %rax // 16
	movq $47, %rax
	pushq %rax // 24
	movq $37, %rax
	pushq %rax // 32
	movq $1, %rax
	xorq %r10, %r10
	subq %rax, %r10
	movq %r10, %rax
	pushq %rax // 40
	popq %r8 // 32
	popq %rcx // 24
	popq %rdx // 16
	popq %rsi // 8
	popq %rdi // 0
	subq $0, %rsp // 0
	xorq %rax, %rax
	callq _binary
	addq $0, %rsp // 0
	movq %rbp, %rsp
	popq %rbp
	ret
//}
	addq $0, %rsp // 0
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

//Node* cast()
_cast:
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp // 8
//{ (1608)
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 16
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 8
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 16
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 8
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 16
	movq $40, %rax
	movq %rax, %r10
	popq %rax // 8
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR290
//call is_typename
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 16
	movslq _ct(%rip), %rax
	pushq %rax // 24
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 16
	addq %r10, %rax
	movq %rax, %r10
	popq %rax // 8
	imulq $40, %r10
	addq %r10, %rax
	pushq %rax // 16
	popq %rdi // 8
	subq $8, %rsp // 16
	xorq %rax, %rax
	callq _is_typename
	addq $8, %rsp // 8
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR290:
	cmpq $0, %rax
	je ELSE289
//{ (1610)
//call new_node
	movq $22, %rax
	pushq %rax // 16
	popq %rdi // 8
	subq $8, %rsp // 16
	xorq %rax, %rax
	callq _new_node
	addq $8, %rsp // 8
	movq %rax, -8(%rbp) // node = rax
	movslq _ct(%rip), %rax
	pushq %rax // 16
	movslq _ct(%rip), %rax
	pushq %rax // 24
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 16
	addq %r10, %rax
	movl %eax, _ct(%rip)
	popq %rax // 8
//call parse_type
	subq $8, %rsp // 16
	xorq %rax, %rax
	callq _parse_type
	addq $8, %rsp // 8
	pushq %rax // 16
//cast to (Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 24
	movq $112, %rax
	movq %rax, %r10
	popq %rax // 16
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 8
	movq %r10, (%rax)
//call skip
	movq $41, %rax
	pushq %rax // 16
	popq %rdi // 8
	subq $8, %rsp // 16
	xorq %rax, %rax
	callq _skip
	addq $8, %rsp // 8
//call cast
	subq $8, %rsp // 16
	xorq %rax, %rax
	callq _cast
	addq $8, %rsp // 8
	pushq %rax // 16
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 24
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 16
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 8
	movq %r10, (%rax)
	movq -8(%rbp), %rax // node
	movq %rbp, %rsp
	popq %rbp
	ret
//}
	jmp END_IF289
ELSE289:
END_IF289:
//call unary
	subq $8, %rsp // 16
	xorq %rax, %rax
	callq _unary
	addq $8, %rsp // 8
	movq %rbp, %rsp
	popq %rbp
	ret
//}
	addq $8, %rsp // 0
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

//Node* unary()
_unary:
	pushq %rbp
	movq %rsp, %rbp
	subq $72, %rsp // 72
//{ (1622)
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 80
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 72
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 80
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 72
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 80
	movq $43, %rax
	movq %rax, %r10
	popq %rax // 72
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE291
//{ (1624)
	movslq _ct(%rip), %rax
	pushq %rax // 80
	movslq _ct(%rip), %rax
	pushq %rax // 88
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 80
	addq %r10, %rax
	movl %eax, _ct(%rip)
	popq %rax // 72
//call cast
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _cast
	addq $8, %rsp // 72
	movq %rbp, %rsp
	popq %rbp
	ret
//}
	jmp END_IF291
ELSE291:
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 80
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 72
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 80
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 72
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 80
	movq $45, %rax
	movq %rax, %r10
	popq %rax // 72
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE292
//{ (1629)
//call new_node
	movq $7, %rax
	pushq %rax // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _new_node
	addq $8, %rsp // 72
	movq %rax, -8(%rbp) // node = rax
	movslq _ct(%rip), %rax
	pushq %rax // 80
	movslq _ct(%rip), %rax
	pushq %rax // 88
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 80
	addq %r10, %rax
	movl %eax, _ct(%rip)
	popq %rax // 72
//call cast
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _cast
	addq $8, %rsp // 72
	pushq %rax // 80
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 88
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 80
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 72
	movq %r10, (%rax)
	movq -8(%rbp), %rax // node
	movq %rbp, %rsp
	popq %rbp
	ret
//}
	jmp END_IF292
ELSE292:
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 80
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 72
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 80
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 72
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 80
	movq $38, %rax
	movq %rax, %r10
	popq %rax // 72
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE293
//{ (1636)
//call new_node
	movq $17, %rax
	pushq %rax // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _new_node
	addq $8, %rsp // 72
	movq %rax, -16(%rbp) // node = rax
	movslq _ct(%rip), %rax
	pushq %rax // 80
	movslq _ct(%rip), %rax
	pushq %rax // 88
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 80
	addq %r10, %rax
	movl %eax, _ct(%rip)
	popq %rax // 72
//call cast
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _cast
	addq $8, %rsp // 72
	pushq %rax // 80
//cast to (Node**)
//cast to (char*)
	movq -16(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 88
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 80
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 72
	movq %r10, (%rax)
	movq -16(%rbp), %rax // node
	movq %rbp, %rsp
	popq %rbp
	ret
//}
	jmp END_IF293
ELSE293:
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 80
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 72
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 80
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 72
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 80
	movq $42, %rax
	movq %rax, %r10
	popq %rax // 72
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE294
//{ (1643)
//call new_node
	movq $16, %rax
	pushq %rax // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _new_node
	addq $8, %rsp // 72
	movq %rax, -24(%rbp) // node = rax
	movslq _ct(%rip), %rax
	pushq %rax // 80
	movslq _ct(%rip), %rax
	pushq %rax // 88
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 80
	addq %r10, %rax
	movl %eax, _ct(%rip)
	popq %rax // 72
//call cast
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _cast
	addq $8, %rsp // 72
	pushq %rax // 80
//cast to (Node**)
//cast to (char*)
	movq -24(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 88
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 80
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 72
	movq %r10, (%rax)
	movq -24(%rbp), %rax // node
	movq %rbp, %rsp
	popq %rbp
	ret
//}
	jmp END_IF294
ELSE294:
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 80
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 72
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 80
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 72
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 80
	movq $33, %rax
	movq %rax, %r10
	popq %rax // 72
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE295
//{ (1650)
//call new_node
	movq $14, %rax
	pushq %rax // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _new_node
	addq $8, %rsp // 72
	movq %rax, -32(%rbp) // node = rax
	movslq _ct(%rip), %rax
	pushq %rax // 80
	movslq _ct(%rip), %rax
	pushq %rax // 88
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 80
	addq %r10, %rax
	movl %eax, _ct(%rip)
	popq %rax // 72
//call cast
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _cast
	addq $8, %rsp // 72
	pushq %rax // 80
//cast to (Node**)
//cast to (char*)
	movq -32(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 88
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 80
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 72
	movq %r10, (%rax)
	movq -32(%rbp), %rax // node
	movq %rbp, %rsp
	popq %rbp
	ret
//}
	jmp END_IF295
ELSE295:
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 80
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 72
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 80
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 72
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 80
	movq $281, %rax
	movq %rax, %r10
	popq %rax // 72
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE296
//{ (1657)
//call new_node
	movq $4, %rax
	pushq %rax // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _new_node
	addq $8, %rsp // 72
	movq %rax, -40(%rbp) // node = rax
//call new_temp_token
	movq $256, %rax
	pushq %rax // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _new_temp_token
	addq $8, %rsp // 72
	pushq %rax // 80
//cast to (Token**)
//cast to (char*)
	movq -40(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 88
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 80
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 72
	movq %r10, (%rax)
	movslq _ct(%rip), %rax
	pushq %rax // 80
	movslq _ct(%rip), %rax
	pushq %rax // 88
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 80
	addq %r10, %rax
	movl %eax, _ct(%rip)
	popq %rax // 72
//cast to (Type*)
	movq $0, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq %rax, -48(%rbp) // t = rax
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 80
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 72
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 80
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 72
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 80
	movq $40, %rax
	movq %rax, %r10
	popq %rax // 72
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR298
//call is_typename
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 80
	movslq _ct(%rip), %rax
	pushq %rax // 88
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 80
	addq %r10, %rax
	movq %rax, %r10
	popq %rax // 72
	imulq $40, %r10
	addq %r10, %rax
	pushq %rax // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _is_typename
	addq $8, %rsp // 72
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR298:
	cmpq $0, %rax
	je ELSE297
//{ (1663)
	movslq _ct(%rip), %rax
	pushq %rax // 80
	movslq _ct(%rip), %rax
	pushq %rax // 88
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 80
	addq %r10, %rax
	movl %eax, _ct(%rip)
	popq %rax // 72
//call parse_type
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _parse_type
	addq $8, %rsp // 72
	movq %rax, -48(%rbp) // t = rax
//call skip
	movq $41, %rax
	pushq %rax // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _skip
	addq $8, %rsp // 72
//}
	jmp END_IF297
ELSE297:
//{ (1669)
//call unary
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _unary
	addq $8, %rsp // 72
	movq %rax, -56(%rbp) // left = rax
//call add_type
	movq -56(%rbp), %rax // left
	pushq %rax // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _add_type
	addq $8, %rsp // 72
	movq %rax, -48(%rbp) // t = rax
//}
END_IF297:
//if begin
//cast to (int*)
//cast to (char*)
	movq -48(%rbp), %rax // t
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 80
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 72
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 80
	movq $3, %rax
	movq %rax, %r10
	popq %rax // 72
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE299
//cast to (long)
//cast to (int*)
//cast to (char*)
	movq -48(%rbp), %rax // t
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 80
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 72
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 80
//cast to (int*)
//cast to (char*)
	movq -48(%rbp), %rax // t
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 88
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 80
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	movq %rax, %r10
	popq %rax // 72
	imulq %r10, %rax
	pushq %rax // 80
//cast to (long*)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -40(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 88
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 80
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 88
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 80
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 72
	movq %r10, (%rax)
	jmp END_IF299
ELSE299:
//cast to (long)
//cast to (int*)
//cast to (char*)
	movq -48(%rbp), %rax // t
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 80
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 72
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 80
//cast to (long*)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -40(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 88
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 80
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 88
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 80
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 72
	movq %r10, (%rax)
END_IF299:
	movq -40(%rbp), %rax // node
	movq %rbp, %rsp
	popq %rbp
	ret
//}
	jmp END_IF296
ELSE296:
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 80
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 72
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 80
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 72
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 80
	movq $275, %rax
	movq %rax, %r10
	popq %rax // 72
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR301
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 80
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 72
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 80
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 72
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 80
	movq $276, %rax
	movq %rax, %r10
	popq %rax // 72
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR301:
	cmpq $0, %rax
	je ELSE300
//{ (1681)
//call new_node
	movq $5, %rax
	pushq %rax // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _new_node
	addq $8, %rsp // 72
	movq %rax, -64(%rbp) // node = rax
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 80
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 72
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 80
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 72
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 80
	movq $275, %rax
	movq %rax, %r10
	popq %rax // 72
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je QUES302
	movq $43, %rax
	jmp QUES_END302
QUES302:
	movq $45, %rax
QUES_END302:
	pushq %rax // 80
//cast to (int*)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -64(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 88
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 80
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 88
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 80
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 72
	movl %r10d, (%rax)
	movslq _ct(%rip), %rax
	pushq %rax // 80
	movslq _ct(%rip), %rax
	pushq %rax // 88
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 80
	addq %r10, %rax
	movl %eax, _ct(%rip)
	popq %rax // 72
//call unary
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _unary
	addq $8, %rsp // 72
	pushq %rax // 80
//cast to (Node**)
//cast to (char*)
	movq -64(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 88
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 80
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 72
	movq %r10, (%rax)
//call new_node
	movq $4, %rax
	pushq %rax // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _new_node
	addq $8, %rsp // 72
	pushq %rax // 80
//cast to (Node**)
//cast to (char*)
	movq -64(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 88
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 80
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 72
	movq %r10, (%rax)
//call new_temp_token
	movq $256, %rax
	pushq %rax // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _new_temp_token
	addq $8, %rsp // 72
	pushq %rax // 80
//cast to (Token**)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -64(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 88
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 80
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 88
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 80
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 72
	movq %r10, (%rax)
//cast to (long)
	movq $1, %rax
	pushq %rax // 80
//cast to (long*)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -64(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 88
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 80
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 88
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 80
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 88
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 80
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 72
	movq %r10, (%rax)
//call new_node
	movq $6, %rax
	pushq %rax // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _new_node
	addq $8, %rsp // 72
	movq %rax, -72(%rbp) // assign = rax
//call new_temp_token
	movq $61, %rax
	pushq %rax // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _new_temp_token
	addq $8, %rsp // 72
	pushq %rax // 80
//cast to (Token**)
//cast to (char*)
	movq -72(%rbp), %rax // assign
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 88
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 80
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 72
	movq %r10, (%rax)
//cast to (Node**)
//cast to (char*)
	movq -64(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 80
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 72
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 80
//cast to (Node**)
//cast to (char*)
	movq -72(%rbp), %rax // assign
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 88
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 80
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 72
	movq %r10, (%rax)
	movq -64(%rbp), %rax // node
	pushq %rax // 80
//cast to (Node**)
//cast to (char*)
	movq -72(%rbp), %rax // assign
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 88
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 80
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 72
	movq %r10, (%rax)
	movq -72(%rbp), %rax // assign
	movq %rbp, %rsp
	popq %rbp
	ret
//}
	jmp END_IF300
ELSE300:
END_IF300:
END_IF296:
END_IF295:
END_IF294:
END_IF293:
END_IF292:
END_IF291:
//call postfix
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _postfix
	addq $8, %rsp // 72
	movq %rbp, %rsp
	popq %rbp
	ret
//}
	addq $72, %rsp // 0
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

//Node* postfix()
_postfix:
	pushq %rbp
	movq %rsp, %rbp
	subq $104, %rsp // 104
//{ (1700)
//call primary
	subq $8, %rsp // 112
	xorq %rax, %rax
	callq _primary
	addq $8, %rsp // 104
	movq %rax, -8(%rbp) // left = rax
WHILE303:
	movq $1, %rax
	cmpq $0, %rax
	je WHILE_END303
//{ (1704)
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 112
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 104
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 112
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 104
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 112
	movq $91, %rax
	movq %rax, %r10
	popq %rax // 104
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE304
//{ (1706)
	movslq _ct(%rip), %rax
	pushq %rax // 112
	movslq _ct(%rip), %rax
	pushq %rax // 120
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 112
	addq %r10, %rax
	movl %eax, _ct(%rip)
	popq %rax // 104
//call expr
	subq $8, %rsp // 112
	xorq %rax, %rax
	callq _expr
	addq $8, %rsp // 104
	movq %rax, -16(%rbp) // index = rax
//call skip
	movq $93, %rax
	pushq %rax // 112
	popq %rdi // 104
	subq $8, %rsp // 112
	xorq %rax, %rax
	callq _skip
	addq $8, %rsp // 104
//call new_node
	movq $5, %rax
	pushq %rax // 112
	popq %rdi // 104
	subq $8, %rsp // 112
	xorq %rax, %rax
	callq _new_node
	addq $8, %rsp // 104
	movq %rax, -24(%rbp) // node = rax
//call new_temp_token
	movq $43, %rax
	pushq %rax // 112
	popq %rdi // 104
	subq $8, %rsp // 112
	xorq %rax, %rax
	callq _new_temp_token
	addq $8, %rsp // 104
	pushq %rax // 112
//cast to (Token**)
//cast to (char*)
	movq -24(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 120
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 112
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 104
	movq %r10, (%rax)
	movq -8(%rbp), %rax // left
	pushq %rax // 112
//cast to (Node**)
//cast to (char*)
	movq -24(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 120
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 112
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 104
	movq %r10, (%rax)
	movq -16(%rbp), %rax // index
	pushq %rax // 112
//cast to (Node**)
//cast to (char*)
	movq -24(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 120
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 112
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 104
	movq %r10, (%rax)
//call new_node
	movq $16, %rax
	pushq %rax // 112
	popq %rdi // 104
	subq $8, %rsp // 112
	xorq %rax, %rax
	callq _new_node
	addq $8, %rsp // 104
	movq %rax, -32(%rbp) // deref = rax
//call new_temp_token
	movq $42, %rax
	pushq %rax // 112
	popq %rdi // 104
	subq $8, %rsp // 112
	xorq %rax, %rax
	callq _new_temp_token
	addq $8, %rsp // 104
	pushq %rax // 112
//cast to (Token**)
//cast to (char*)
	movq -32(%rbp), %rax // deref
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 120
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 112
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 104
	movq %r10, (%rax)
	movq -24(%rbp), %rax // node
	pushq %rax // 112
//cast to (Node**)
//cast to (char*)
	movq -32(%rbp), %rax // deref
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 120
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 112
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 104
	movq %r10, (%rax)
	movq -32(%rbp), %rax // deref
	movq %rax, -8(%rbp) // left = rax
//}
	jmp END_IF304
ELSE304:
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 112
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 104
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 112
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 104
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 112
	movq $275, %rax
	movq %rax, %r10
	popq %rax // 104
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR306
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 112
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 104
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 112
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 104
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 112
	movq $276, %rax
	movq %rax, %r10
	popq %rax // 104
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR306:
	cmpq $0, %rax
	je ELSE305
//{ (1720)
//call new_node
	movq $14, %rax
	pushq %rax // 112
	popq %rdi // 104
	subq $8, %rsp // 112
	xorq %rax, %rax
	callq _new_node
	addq $8, %rsp // 104
	movq %rax, -40(%rbp) // node = rax
	movq -8(%rbp), %rax // left
	pushq %rax // 112
//cast to (Node**)
//cast to (char*)
	movq -40(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 120
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 112
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 104
	movq %r10, (%rax)
	movq -40(%rbp), %rax // node
	movq %rax, -8(%rbp) // left = rax
	movslq _ct(%rip), %rax
	pushq %rax // 112
	movslq _ct(%rip), %rax
	pushq %rax // 120
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 112
	addq %r10, %rax
	movl %eax, _ct(%rip)
	popq %rax // 104
//}
	jmp END_IF305
ELSE305:
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 112
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 104
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 112
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 104
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 112
	movq $46, %rax
	movq %rax, %r10
	popq %rax // 104
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR308
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 112
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 104
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 112
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 104
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 112
	movq $288, %rax
	movq %rax, %r10
	popq %rax // 104
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR308:
	cmpq $0, %rax
	je ELSE307
//{ (1727)
//call new_node
	movq $24, %rax
	pushq %rax // 112
	popq %rdi // 104
	subq $8, %rsp // 112
	xorq %rax, %rax
	callq _new_node
	addq $8, %rsp // 104
	movq %rax, -48(%rbp) // tmp = rax
	movq -8(%rbp), %rax // left
	pushq %rax // 112
//cast to (Node**)
//cast to (char*)
	movq -48(%rbp), %rax // tmp
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 120
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 112
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 104
	movq %r10, (%rax)
//call add_type
	movq -8(%rbp), %rax // left
	pushq %rax // 112
	popq %rdi // 104
	subq $8, %rsp // 112
	xorq %rax, %rax
	callq _add_type
	addq $8, %rsp // 104
	movq %rax, -56(%rbp) // type = rax
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 112
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 104
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 112
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 104
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 112
	movq $288, %rax
	movq %rax, %r10
	popq %rax // 104
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR310
//cast to (int*)
//cast to (char*)
	movq -56(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 112
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 104
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 112
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 104
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR311
//cast to (int*)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
	movq -56(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 112
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 104
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 112
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 104
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 112
	movq $7, %rax
	movq %rax, %r10
	popq %rax // 104
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR311:
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR310:
	cmpq $0, %rax
	je ELSE309
//{ (1732)
//call error_token
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 112
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 104
	imulq $40, %r10
	addq %r10, %rax
	pushq %rax // 112
	leaq L_.str.70(%rip), %rax
	pushq %rax // 120
	popq %rsi // 112
	popq %rdi // 104
	subq $8, %rsp // 112
	xorq %rax, %rax
	callq _error_token
	addq $8, %rsp // 104
//}
	jmp END_IF309
ELSE309:
END_IF309:
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 112
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 104
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 112
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 104
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 112
	movq $288, %rax
	movq %rax, %r10
	popq %rax // 104
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE312
//cast to (Type**)
//cast to (char*)
	movq -56(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 112
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 104
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	movq %rax, -56(%rbp) // type = rax
	jmp END_IF312
ELSE312:
END_IF312:
//if begin
//cast to (int*)
//cast to (char*)
	movq -56(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 112
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 104
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 112
	movq $7, %rax
	movq %rax, %r10
	popq %rax // 104
	cmpq %r10, %rax
	setne %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE313
//call error_token
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 112
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 104
	imulq $40, %r10
	addq %r10, %rax
	pushq %rax // 112
	leaq L_.str.71(%rip), %rax
	pushq %rax // 120
	popq %rsi // 112
	popq %rdi // 104
	subq $8, %rsp // 112
	xorq %rax, %rax
	callq _error_token
	addq $8, %rsp // 104
	jmp END_IF313
ELSE313:
END_IF313:
	movslq _ct(%rip), %rax
	pushq %rax // 112
	movslq _ct(%rip), %rax
	pushq %rax // 120
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 112
	addq %r10, %rax
	movl %eax, _ct(%rip)
	popq %rax // 104
	movq $0, %rax
	movl %eax, -60(%rbp) // i = rax
//for init
FOR314:
	movslq -60(%rbp), %rax // i
	pushq %rax // 112
//cast to (int*)
//cast to (char*)
	movq -56(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 120
	movq $2048, %rax
	movq %rax, %r10
	popq %rax // 112
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	movq %rax, %r10
	popq %rax // 104
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je FOR_END314
//{ (1744)
//if begin
//call strcmp
//cast to (char*[100])
//cast to (char*)
	movq -56(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 112
	movq $848, %rax
	movq %rax, %r10
	popq %rax // 104
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 112
	movslq -60(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 104
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 112
//cast to (char**)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 120
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 112
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 120
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 112
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 120
	popq %rsi // 112
	popq %rdi // 104
	subq $8, %rsp // 112
	xorq %rax, %rax
	callq _strcmp
	addq $8, %rsp // 104
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE315
	jmp FOR_END314
	jmp END_IF315
ELSE315:
END_IF315:
//}
FOR_INC314:
	movslq -60(%rbp), %rax // i
	pushq %rax // 112
	movslq -60(%rbp), %rax // i
	pushq %rax // 120
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 112
	addq %r10, %rax
	movl %eax, -60(%rbp) // i = rax
	popq %rax // 104
	jmp FOR314
FOR_END314:
//if begin
	movslq -60(%rbp), %rax // i
	pushq %rax // 112
//cast to (int*)
//cast to (char*)
	movq -56(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 120
	movq $2048, %rax
	movq %rax, %r10
	popq %rax // 112
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	movq %rax, %r10
	popq %rax // 104
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE316
//call error_token
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 112
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 104
	imulq $40, %r10
	addq %r10, %rax
	pushq %rax // 112
	leaq L_.str.72(%rip), %rax
	pushq %rax // 120
	popq %rsi // 112
	popq %rdi // 104
	subq $8, %rsp // 112
	xorq %rax, %rax
	callq _error_token
	addq $8, %rsp // 104
	jmp END_IF316
ELSE316:
END_IF316:
//call new_type
	movq $1, %rax
	pushq %rax // 112
	popq %rdi // 104
	subq $8, %rsp // 112
	xorq %rax, %rax
	callq _new_type
	addq $8, %rsp // 104
	movq %rax, -72(%rbp) // char_ptr = rax
	movq _type_char(%rip), %rax // type_char
	pushq %rax // 112
//cast to (Type**)
//cast to (char*)
	movq -72(%rbp), %rax // char_ptr
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 120
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 112
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 104
	movq %r10, (%rax)
	movq -8(%rbp), %rax // left
	movq %rax, -80(%rbp) // addr = rax
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 112
	movslq _ct(%rip), %rax
	pushq %rax // 120
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 112
	subq %r10, %rax
	movq %rax, %r10
	popq %rax // 104
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 112
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 104
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 112
	movq $46, %rax
	movq %rax, %r10
	popq %rax // 104
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE317
//{ (1759)
//call new_node
	movq $17, %rax
	pushq %rax // 112
	popq %rdi // 104
	subq $8, %rsp // 112
	xorq %rax, %rax
	callq _new_node
	addq $8, %rsp // 104
	movq %rax, -80(%rbp) // addr = rax
	movq -8(%rbp), %rax // left
	pushq %rax // 112
//cast to (Node**)
//cast to (char*)
	movq -80(%rbp), %rax // addr
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 120
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 112
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 104
	movq %r10, (%rax)
//}
	jmp END_IF317
ELSE317:
END_IF317:
//call implicit_cast
	movq %rbp, %rax // &addr
	subq $80, %rax
	pushq %rax // 112
	movq -72(%rbp), %rax // char_ptr
	pushq %rax // 120
	popq %rsi // 112
	popq %rdi // 104
	subq $8, %rsp // 112
	xorq %rax, %rax
	callq _implicit_cast
	addq $8, %rsp // 104
//call new_node
	movq $5, %rax
	pushq %rax // 112
	popq %rdi // 104
	subq $8, %rsp // 112
	xorq %rax, %rax
	callq _new_node
	addq $8, %rsp // 104
	movq %rax, -88(%rbp) // add = rax
//call new_temp_token
	movq $43, %rax
	pushq %rax // 112
	popq %rdi // 104
	subq $8, %rsp // 112
	xorq %rax, %rax
	callq _new_temp_token
	addq $8, %rsp // 104
	pushq %rax // 112
//cast to (Token**)
//cast to (char*)
	movq -88(%rbp), %rax // add
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 120
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 112
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 104
	movq %r10, (%rax)
	movq -80(%rbp), %rax // addr
	pushq %rax // 112
//cast to (Node**)
//cast to (char*)
	movq -88(%rbp), %rax // add
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 120
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 112
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 104
	movq %r10, (%rax)
//call new_node
	movq $4, %rax
	pushq %rax // 112
	popq %rdi // 104
	subq $8, %rsp // 112
	xorq %rax, %rax
	callq _new_node
	addq $8, %rsp // 104
	pushq %rax // 112
//cast to (Node**)
//cast to (char*)
	movq -88(%rbp), %rax // add
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 120
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 112
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 104
	movq %r10, (%rax)
//call new_temp_token
	movq $256, %rax
	pushq %rax // 112
	popq %rdi // 104
	subq $8, %rsp // 112
	xorq %rax, %rax
	callq _new_temp_token
	addq $8, %rsp // 104
	pushq %rax // 112
//cast to (Token**)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -88(%rbp), %rax // add
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 120
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 112
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 120
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 112
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 104
	movq %r10, (%rax)
//cast to (long)
//cast to (int[100])
//cast to (char*)
	movq -56(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 112
	movq $1648, %rax
	movq %rax, %r10
	popq %rax // 104
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 112
	movslq -60(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 104
	imulq $4, %r10
	addq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 112
//cast to (long*)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -88(%rbp), %rax // add
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 120
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 112
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 120
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 112
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 120
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 112
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 104
	movq %r10, (%rax)
//call new_type
	movq $1, %rax
	pushq %rax // 112
	popq %rdi // 104
	subq $8, %rsp // 112
	xorq %rax, %rax
	callq _new_type
	addq $8, %rsp // 104
	movq %rax, -96(%rbp) // t = rax
//if begin
//cast to (int*)
//cast to (char*)
//cast to (Type*[100])
//cast to (char*)
	movq -56(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 112
	movq $48, %rax
	movq %rax, %r10
	popq %rax // 104
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 112
	movslq -60(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 104
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 112
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 104
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 112
	movq $3, %rax
	movq %rax, %r10
	popq %rax // 104
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE318
//{ (1773)
//cast to (Type*[100])
//cast to (char*)
	movq -56(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 112
	movq $48, %rax
	movq %rax, %r10
	popq %rax // 104
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 112
	movslq -60(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 104
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	movq %rax, -96(%rbp) // t = rax
//call implicit_cast
	movq %rbp, %rax // &add
	subq $88, %rax
	pushq %rax // 112
	movq -96(%rbp), %rax // t
	pushq %rax // 120
	popq %rsi // 112
	popq %rdi // 104
	subq $8, %rsp // 112
	xorq %rax, %rax
	callq _implicit_cast
	addq $8, %rsp // 104
	movq -88(%rbp), %rax // add
	movq %rax, -104(%rbp) // node = rax
//}
	jmp END_IF318
ELSE318:
//{ (1780)
//cast to (Type*[100])
//cast to (char*)
	movq -56(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 112
	movq $48, %rax
	movq %rax, %r10
	popq %rax // 104
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 112
	movslq -60(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 104
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 112
//cast to (Type**)
//cast to (char*)
	movq -96(%rbp), %rax // t
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 120
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 112
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 104
	movq %r10, (%rax)
//call implicit_cast
	movq %rbp, %rax // &add
	subq $88, %rax
	pushq %rax // 112
	movq -96(%rbp), %rax // t
	pushq %rax // 120
	popq %rsi // 112
	popq %rdi // 104
	subq $8, %rsp // 112
	xorq %rax, %rax
	callq _implicit_cast
	addq $8, %rsp // 104
//call new_node
	movq $16, %rax
	pushq %rax // 112
	popq %rdi // 104
	subq $8, %rsp // 112
	xorq %rax, %rax
	callq _new_node
	addq $8, %rsp // 104
	movq %rax, -104(%rbp) // node = rax
	movq -88(%rbp), %rax // add
	pushq %rax // 112
//cast to (Node**)
//cast to (char*)
	movq -104(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 120
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 112
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 104
	movq %r10, (%rax)
//}
END_IF318:
	movq -104(%rbp), %rax // node
	pushq %rax // 112
//cast to (Node**)
//cast to (char*)
	movq -48(%rbp), %rax // tmp
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 120
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 112
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 104
	movq %r10, (%rax)
//call skip
	movq $257, %rax
	pushq %rax // 112
	popq %rdi // 104
	subq $8, %rsp // 112
	xorq %rax, %rax
	callq _skip
	addq $8, %rsp // 104
	movq -48(%rbp), %rax // tmp
	movq %rax, -8(%rbp) // left = rax
//}
	jmp END_IF307
ELSE307:
	jmp WHILE_END303
END_IF307:
END_IF305:
END_IF304:
//}
	jmp WHILE303
WHILE_END303:
	movq -8(%rbp), %rax // left
	movq %rbp, %rsp
	popq %rbp
	ret
//}
	addq $104, %rsp // 0
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

//Node* primary()
_primary:
	pushq %rbp
	movq %rsp, %rbp
	subq $28, %rsp // 28
//{ (1797)
//cast to (Node*)
	movq $0, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq %rax, -8(%rbp) // node = rax
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 36
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 28
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 36
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 28
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 36
	movq $256, %rax
	movq %rax, %r10
	popq %rax // 28
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE319
//{ (1800)
//call new_node
	movq $4, %rax
	pushq %rax // 36
	popq %rdi // 28
	subq $4, %rsp // 32
	xorq %rax, %rax
	callq _new_node
	addq $4, %rsp // 28
	movq %rax, -8(%rbp) // node = rax
	movslq _ct(%rip), %rax
	pushq %rax // 36
	movslq _ct(%rip), %rax
	pushq %rax // 44
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 36
	addq %r10, %rax
	movl %eax, _ct(%rip)
	popq %rax // 28
//}
	jmp END_IF319
ELSE319:
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 36
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 28
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 36
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 28
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 36
	movq $274, %rax
	movq %rax, %r10
	popq %rax // 28
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE320
//{ (1805)
//call new_node
	movq $19, %rax
	pushq %rax // 36
	popq %rdi // 28
	subq $4, %rsp // 32
	xorq %rax, %rax
	callq _new_node
	addq $4, %rsp // 28
	movq %rax, -8(%rbp) // node = rax
	movslq _ct(%rip), %rax
	pushq %rax // 36
	movslq _ct(%rip), %rax
	pushq %rax // 44
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 36
	addq %r10, %rax
	movl %eax, _ct(%rip)
	popq %rax // 28
//}
	jmp END_IF320
ELSE320:
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 36
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 28
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 36
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 28
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 36
	movq $40, %rax
	movq %rax, %r10
	popq %rax // 28
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE321
//{ (1810)
	movslq _ct(%rip), %rax
	pushq %rax // 36
	movslq _ct(%rip), %rax
	pushq %rax // 44
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 36
	addq %r10, %rax
	movl %eax, _ct(%rip)
	popq %rax // 28
//call expr
	subq $4, %rsp // 32
	xorq %rax, %rax
	callq _expr
	addq $4, %rsp // 28
	movq %rax, -8(%rbp) // node = rax
//call skip
	movq $41, %rax
	pushq %rax // 36
	popq %rdi // 28
	subq $4, %rsp // 32
	xorq %rax, %rax
	callq _skip
	addq $4, %rsp // 28
//}
	jmp END_IF321
ELSE321:
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 36
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 28
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 36
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 28
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 36
	movq $257, %rax
	movq %rax, %r10
	popq %rax // 28
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR323
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 36
	movslq _ct(%rip), %rax
	pushq %rax // 44
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 36
	addq %r10, %rax
	movq %rax, %r10
	popq %rax // 28
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 36
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 28
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 36
	movq $40, %rax
	movq %rax, %r10
	popq %rax // 28
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR323:
	cmpq $0, %rax
	je ELSE322
//{ (1816)
//call new_node
	movq $13, %rax
	pushq %rax // 36
	popq %rdi // 28
	subq $4, %rsp // 32
	xorq %rax, %rax
	callq _new_node
	addq $4, %rsp // 28
	movq %rax, -8(%rbp) // node = rax
//call find_func
//cast to (char**)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 36
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 28
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 36
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 28
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 36
	popq %rdi // 28
	subq $4, %rsp // 32
	xorq %rax, %rax
	callq _find_func
	addq $4, %rsp // 28
	pushq %rax // 36
//cast to (Func**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 44
	movq $152, %rax
	movq %rax, %r10
	popq %rax // 36
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 28
	movq %r10, (%rax)
//if begin
//cast to (Func**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 36
	movq $152, %rax
	movq %rax, %r10
	popq %rax // 28
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE324
//call error_token
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 36
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 28
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 36
	leaq L_.str.73(%rip), %rax
	pushq %rax // 44
//cast to (char**)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 52
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 44
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 52
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 44
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 52
	popq %rdx // 44
	popq %rsi // 36
	popq %rdi // 28
	subq $4, %rsp // 32
	xorq %rax, %rax
	callq _error_token
	addq $4, %rsp // 28
	jmp END_IF324
ELSE324:
END_IF324:
	movslq _ct(%rip), %rax
	pushq %rax // 36
	movq $2, %rax
	movq %rax, %r10
	popq %rax // 28
	addq %r10, %rax
	movl %eax, _ct(%rip)
	movq $0, %rax
	movl %eax, -12(%rbp) // count = rax
WHILE325:
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 36
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 28
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 36
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 28
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 36
	movq $41, %rax
	movq %rax, %r10
	popq %rax // 28
	cmpq %r10, %rax
	setne %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je WHILE_END325
//{ (1824)
//if begin
//call strcmp
//cast to (char**)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 36
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 28
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 36
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 28
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 36
	leaq L_.str.50(%rip), %rax
	pushq %rax // 44
	popq %rsi // 36
	popq %rdi // 28
	subq $4, %rsp // 32
	xorq %rax, %rax
	callq _strcmp
	addq $4, %rsp // 28
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR327
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 36
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 28
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 36
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 28
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 36
	movq $123, %rax
	movq %rax, %r10
	popq %rax // 28
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR327:
	cmpq $0, %rax
	je ELSE326
//call statement
	subq $4, %rsp // 32
	xorq %rax, %rax
	callq _statement
	addq $4, %rsp // 28
	pushq %rax // 36
//cast to (Node*[100])
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 44
	movq $168, %rax
	movq %rax, %r10
	popq %rax // 36
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 44
	movslq -12(%rbp), %rax // count
	movq %rax, %r10
	popq %rax // 36
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 28
	movq %r10, (%rax)
	jmp END_IF326
ELSE326:
//call assign
	subq $4, %rsp // 32
	xorq %rax, %rax
	callq _assign
	addq $4, %rsp // 28
	pushq %rax // 36
//cast to (Node*[100])
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 44
	movq $168, %rax
	movq %rax, %r10
	popq %rax // 36
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 44
	movslq -12(%rbp), %rax // count
	movq %rax, %r10
	popq %rax // 36
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 28
	movq %r10, (%rax)
END_IF326:
	movslq -12(%rbp), %rax // count
	pushq %rax // 36
	movslq -12(%rbp), %rax // count
	pushq %rax // 44
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 36
	addq %r10, %rax
	movl %eax, -12(%rbp) // count = rax
	popq %rax // 28
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 36
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 28
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 36
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 28
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 36
	movq $44, %rax
	movq %rax, %r10
	popq %rax // 28
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE328
	movslq _ct(%rip), %rax
	pushq %rax // 36
	movslq _ct(%rip), %rax
	pushq %rax // 44
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 36
	addq %r10, %rax
	movl %eax, _ct(%rip)
	popq %rax // 28
	jmp END_IF328
ELSE328:
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 36
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 28
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 36
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 28
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 36
	movq $41, %rax
	movq %rax, %r10
	popq %rax // 28
	cmpq %r10, %rax
	setne %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE329
//call skip
	movq $41, %rax
	pushq %rax // 36
	popq %rdi // 28
	subq $4, %rsp // 32
	xorq %rax, %rax
	callq _skip
	addq $4, %rsp // 28
	jmp END_IF329
ELSE329:
END_IF329:
END_IF328:
//}
	jmp WHILE325
WHILE_END325:
	movslq _ct(%rip), %rax
	pushq %rax // 36
	movslq _ct(%rip), %rax
	pushq %rax // 44
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 36
	addq %r10, %rax
	movl %eax, _ct(%rip)
	popq %rax // 28
	movslq -12(%rbp), %rax // count
	pushq %rax // 36
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 44
	movq $1768, %rax
	movq %rax, %r10
	popq %rax // 36
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 28
	movl %r10d, (%rax)
//}
	jmp END_IF322
ELSE322:
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 36
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 28
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 36
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 28
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 36
	movq $257, %rax
	movq %rax, %r10
	popq %rax // 28
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE330
//{ (1839)
//call find_var
//cast to (char**)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 36
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 28
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 36
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 28
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 36
	popq %rdi // 28
	subq $4, %rsp // 32
	xorq %rax, %rax
	callq _find_var
	addq $4, %rsp // 28
	movq %rax, -24(%rbp) // var = rax
//if begin
	movq -24(%rbp), %rax // var
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE331
//{ (1842)
//for init
	movq $0, %rax
	movl %eax, -28(%rbp) // i = rax
FOR332:
	movslq -28(%rbp), %rax // i
	pushq %rax // 36
	movslq _enum_count(%rip), %rax
	movq %rax, %r10
	popq %rax // 28
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je FOR_END332
//{ (1844)
//if begin
//call strcmp
//cast to (char**)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 36
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 28
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 36
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 28
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 36
//cast to (char**)
//cast to (char*)
	movq _enums@GOTPCREL(%rip), %rax
	pushq %rax // 44
	movslq -28(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 36
	imulq $16, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 44
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 36
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 44
	popq %rsi // 36
	popq %rdi // 28
	subq $4, %rsp // 32
	xorq %rax, %rax
	callq _strcmp
	addq $4, %rsp // 28
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE333
//{ (1846)
//call new_node
	movq $4, %rax
	pushq %rax // 36
	popq %rdi // 28
	subq $4, %rsp // 32
	xorq %rax, %rax
	callq _new_node
	addq $4, %rsp // 28
	movq %rax, -8(%rbp) // node = rax
	movslq _ct(%rip), %rax
	pushq %rax // 36
	movslq _ct(%rip), %rax
	pushq %rax // 44
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 36
	addq %r10, %rax
	movl %eax, _ct(%rip)
	popq %rax // 28
//call new_temp_token
	movq $256, %rax
	pushq %rax // 36
	popq %rdi // 28
	subq $4, %rsp // 32
	xorq %rax, %rax
	callq _new_temp_token
	addq $4, %rsp // 28
	pushq %rax // 36
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 44
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 36
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 28
	movq %r10, (%rax)
//cast to (long)
//cast to (int*)
//cast to (char*)
	movq _enums@GOTPCREL(%rip), %rax
	pushq %rax // 36
	movslq -28(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 28
	imulq $16, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 36
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 28
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 36
//cast to (long*)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 44
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 36
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 44
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 36
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 28
	movq %r10, (%rax)
	movq -8(%rbp), %rax // node
	movq %rbp, %rsp
	popq %rbp
	ret
//}
	jmp END_IF333
ELSE333:
END_IF333:
//}
FOR_INC332:
	movslq -28(%rbp), %rax // i
	pushq %rax // 36
	movslq -28(%rbp), %rax // i
	pushq %rax // 44
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 36
	addq %r10, %rax
	movl %eax, -28(%rbp) // i = rax
	popq %rax // 28
	jmp FOR332
FOR_END332:
//call error_token
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 36
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 28
	imulq $40, %r10
	addq %r10, %rax
	pushq %rax // 36
	leaq L_.str.74(%rip), %rax
	pushq %rax // 44
//cast to (char**)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 52
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 44
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 52
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 44
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 52
	popq %rdx // 44
	popq %rsi // 36
	popq %rdi // 28
	subq $4, %rsp // 32
	xorq %rax, %rax
	callq _error_token
	addq $4, %rsp // 28
//}
	jmp END_IF331
ELSE331:
END_IF331:
//call new_node
	movq $2, %rax
	pushq %rax // 36
	popq %rdi // 28
	subq $4, %rsp // 32
	xorq %rax, %rax
	callq _new_node
	addq $4, %rsp // 28
	movq %rax, -8(%rbp) // node = rax
	movq -24(%rbp), %rax // var
	pushq %rax // 36
//cast to (Var**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 44
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 36
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 28
	movq %r10, (%rax)
	movslq _ct(%rip), %rax
	pushq %rax // 36
	movslq _ct(%rip), %rax
	pushq %rax // 44
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 36
	addq %r10, %rax
	movl %eax, _ct(%rip)
	popq %rax // 28
//}
	jmp END_IF330
ELSE330:
//call error_token
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 36
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 28
	imulq $40, %r10
	addq %r10, %rax
	pushq %rax // 36
	leaq L_.str.75(%rip), %rax
	pushq %rax // 44
	popq %rsi // 36
	popq %rdi // 28
	subq $4, %rsp // 32
	xorq %rax, %rax
	callq _error_token
	addq $4, %rsp // 28
END_IF330:
END_IF322:
END_IF321:
END_IF320:
END_IF319:
	movq -8(%rbp), %rax // node
	movq %rbp, %rsp
	popq %rbp
	ret
//}
	addq $28, %rsp // 0
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

//char* get_inst_suffix(int size)
_get_inst_suffix:
	pushq %rbp
	movq %rsp, %rbp
	subq $4, %rsp // 4
	movl %edi, -4(%rbp) //size
//{ (1868)
//if begin
	movslq -4(%rbp), %rax // size
	pushq %rax // 12
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 4
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE334
	leaq L_.str.76(%rip), %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF334
ELSE334:
//if begin
	movslq -4(%rbp), %rax // size
	pushq %rax // 12
	movq $2, %rax
	movq %rax, %r10
	popq %rax // 4
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE335
	leaq L_.str.77(%rip), %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF335
ELSE335:
//if begin
	movslq -4(%rbp), %rax // size
	pushq %rax // 12
	movq $4, %rax
	movq %rax, %r10
	popq %rax // 4
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE336
	leaq L_.str.78(%rip), %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF336
ELSE336:
//if begin
	movslq -4(%rbp), %rax // size
	pushq %rax // 12
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 4
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE337
	leaq L_.str.79(%rip), %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF337
ELSE337:
END_IF337:
END_IF336:
END_IF335:
END_IF334:
//}
	addq $4, %rsp // 0
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

//char* get_size_name(int size)
_get_size_name:
	pushq %rbp
	movq %rsp, %rbp
	subq $4, %rsp // 4
	movl %edi, -4(%rbp) //size
//{ (1881)
//if begin
	movslq -4(%rbp), %rax // size
	pushq %rax // 12
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 4
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE338
	leaq L_.str.80(%rip), %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF338
ELSE338:
//if begin
	movslq -4(%rbp), %rax // size
	pushq %rax // 12
	movq $2, %rax
	movq %rax, %r10
	popq %rax // 4
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE339
	leaq L_.str.23(%rip), %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF339
ELSE339:
//if begin
	movslq -4(%rbp), %rax // size
	pushq %rax // 12
	movq $4, %rax
	movq %rax, %r10
	popq %rax // 4
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE340
	leaq L_.str.24(%rip), %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF340
ELSE340:
//if begin
	movslq -4(%rbp), %rax // size
	pushq %rax // 12
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 4
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE341
	leaq L_.str.81(%rip), %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF341
ELSE341:
END_IF341:
END_IF340:
END_IF339:
END_IF338:
//}
	addq $4, %rsp // 0
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

//int log2_int(int x)
_log2_int:
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp // 8
	movl %edi, -4(%rbp) //x
//{ (1894)
	movq $0, %rax
	movl %eax, -8(%rbp) // y = rax
WHILE342:
	movslq -4(%rbp), %rax // x
	pushq %rax // 16
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 8
	cmpq %r10, %rax
	setg %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je WHILE_END342
//{ (1897)
	movslq -4(%rbp), %rax // x
	pushq %rax // 16
	movq $2, %rax
	movq %rax, %r10
	popq %rax // 8
	cqto
	idivq %r10
	movl %eax, -4(%rbp) // x = rax
	movslq -8(%rbp), %rax // y
	pushq %rax // 16
	movslq -8(%rbp), %rax // y
	pushq %rax // 24
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 16
	addq %r10, %rax
	movl %eax, -8(%rbp) // y = rax
	popq %rax // 8
//}
	jmp WHILE342
WHILE_END342:
	movslq -8(%rbp), %rax // y
	movq %rbp, %rsp
	popq %rbp
	ret
//}
	addq $8, %rsp // 0
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

//char* get_register_by_size(char* reg, int size)
_get_register_by_size:
	pushq %rbp
	movq %rsp, %rbp
	subq $304, %rsp // 304
	movq %rdi, -8(%rbp) //reg
	movl %esi, -12(%rbp) //size
//{ (1905)
	leaq L_.str.82(%rip), %rax
	pushq %rax // 312
	movq %rbp, %rax // rax
	subq $48, %rax
	pushq %rax // 320
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 304
	movq %r10, (%rax)
	leaq L_.str.83(%rip), %rax
	pushq %rax // 312
	movq %rbp, %rax // rax
	subq $48, %rax
	pushq %rax // 320
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 304
	movq %r10, (%rax)
	leaq L_.str.84(%rip), %rax
	pushq %rax // 312
	movq %rbp, %rax // rax
	subq $48, %rax
	pushq %rax // 320
	movq $2, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 304
	movq %r10, (%rax)
	leaq L_.str.85(%rip), %rax
	pushq %rax // 312
	movq %rbp, %rax // rax
	subq $48, %rax
	pushq %rax // 320
	movq $3, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 304
	movq %r10, (%rax)
	leaq L_.str.86(%rip), %rax
	pushq %rax // 312
	movq %rbp, %rax // rdx
	subq $80, %rax
	pushq %rax // 320
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 304
	movq %r10, (%rax)
	leaq L_.str.87(%rip), %rax
	pushq %rax // 312
	movq %rbp, %rax // rdx
	subq $80, %rax
	pushq %rax // 320
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 304
	movq %r10, (%rax)
	leaq L_.str.88(%rip), %rax
	pushq %rax // 312
	movq %rbp, %rax // rdx
	subq $80, %rax
	pushq %rax // 320
	movq $2, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 304
	movq %r10, (%rax)
	leaq L_.str.89(%rip), %rax
	pushq %rax // 312
	movq %rbp, %rax // rdx
	subq $80, %rax
	pushq %rax // 320
	movq $3, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 304
	movq %r10, (%rax)
	leaq L_.str.90(%rip), %rax
	pushq %rax // 312
	movq %rbp, %rax // rcx
	subq $112, %rax
	pushq %rax // 320
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 304
	movq %r10, (%rax)
	leaq L_.str.91(%rip), %rax
	pushq %rax // 312
	movq %rbp, %rax // rcx
	subq $112, %rax
	pushq %rax // 320
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 304
	movq %r10, (%rax)
	leaq L_.str.92(%rip), %rax
	pushq %rax // 312
	movq %rbp, %rax // rcx
	subq $112, %rax
	pushq %rax // 320
	movq $2, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 304
	movq %r10, (%rax)
	leaq L_.str.93(%rip), %rax
	pushq %rax // 312
	movq %rbp, %rax // rcx
	subq $112, %rax
	pushq %rax // 320
	movq $3, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 304
	movq %r10, (%rax)
	leaq L_.str.94(%rip), %rax
	pushq %rax // 312
	movq %rbp, %rax // rdi
	subq $144, %rax
	pushq %rax // 320
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 304
	movq %r10, (%rax)
	leaq L_.str.95(%rip), %rax
	pushq %rax // 312
	movq %rbp, %rax // rdi
	subq $144, %rax
	pushq %rax // 320
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 304
	movq %r10, (%rax)
	leaq L_.str.96(%rip), %rax
	pushq %rax // 312
	movq %rbp, %rax // rdi
	subq $144, %rax
	pushq %rax // 320
	movq $2, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 304
	movq %r10, (%rax)
	leaq L_.str.97(%rip), %rax
	pushq %rax // 312
	movq %rbp, %rax // rdi
	subq $144, %rax
	pushq %rax // 320
	movq $3, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 304
	movq %r10, (%rax)
	leaq L_.str.98(%rip), %rax
	pushq %rax // 312
	movq %rbp, %rax // rsi
	subq $176, %rax
	pushq %rax // 320
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 304
	movq %r10, (%rax)
	leaq L_.str.99(%rip), %rax
	pushq %rax // 312
	movq %rbp, %rax // rsi
	subq $176, %rax
	pushq %rax // 320
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 304
	movq %r10, (%rax)
	leaq L_.str.100(%rip), %rax
	pushq %rax // 312
	movq %rbp, %rax // rsi
	subq $176, %rax
	pushq %rax // 320
	movq $2, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 304
	movq %r10, (%rax)
	leaq L_.str.101(%rip), %rax
	pushq %rax // 312
	movq %rbp, %rax // rsi
	subq $176, %rax
	pushq %rax // 320
	movq $3, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 304
	movq %r10, (%rax)
	leaq L_.str.102(%rip), %rax
	pushq %rax // 312
	movq %rbp, %rax // r8
	subq $208, %rax
	pushq %rax // 320
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 304
	movq %r10, (%rax)
	leaq L_.str.103(%rip), %rax
	pushq %rax // 312
	movq %rbp, %rax // r8
	subq $208, %rax
	pushq %rax // 320
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 304
	movq %r10, (%rax)
	leaq L_.str.104(%rip), %rax
	pushq %rax // 312
	movq %rbp, %rax // r8
	subq $208, %rax
	pushq %rax // 320
	movq $2, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 304
	movq %r10, (%rax)
	leaq L_.str.105(%rip), %rax
	pushq %rax // 312
	movq %rbp, %rax // r8
	subq $208, %rax
	pushq %rax // 320
	movq $3, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 304
	movq %r10, (%rax)
	leaq L_.str.106(%rip), %rax
	pushq %rax // 312
	movq %rbp, %rax // r9
	subq $240, %rax
	pushq %rax // 320
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 304
	movq %r10, (%rax)
	leaq L_.str.107(%rip), %rax
	pushq %rax // 312
	movq %rbp, %rax // r9
	subq $240, %rax
	pushq %rax // 320
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 304
	movq %r10, (%rax)
	leaq L_.str.108(%rip), %rax
	pushq %rax // 312
	movq %rbp, %rax // r9
	subq $240, %rax
	pushq %rax // 320
	movq $2, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 304
	movq %r10, (%rax)
	leaq L_.str.109(%rip), %rax
	pushq %rax // 312
	movq %rbp, %rax // r9
	subq $240, %rax
	pushq %rax // 320
	movq $3, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 304
	movq %r10, (%rax)
	leaq L_.str.110(%rip), %rax
	pushq %rax // 312
	movq %rbp, %rax // r10
	subq $272, %rax
	pushq %rax // 320
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 304
	movq %r10, (%rax)
	leaq L_.str.111(%rip), %rax
	pushq %rax // 312
	movq %rbp, %rax // r10
	subq $272, %rax
	pushq %rax // 320
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 304
	movq %r10, (%rax)
	leaq L_.str.112(%rip), %rax
	pushq %rax // 312
	movq %rbp, %rax // r10
	subq $272, %rax
	pushq %rax // 320
	movq $2, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 304
	movq %r10, (%rax)
	leaq L_.str.113(%rip), %rax
	pushq %rax // 312
	movq %rbp, %rax // r10
	subq $272, %rax
	pushq %rax // 320
	movq $3, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 304
	movq %r10, (%rax)
	leaq L_.str.114(%rip), %rax
	pushq %rax // 312
	movq %rbp, %rax // r11
	subq $304, %rax
	pushq %rax // 320
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 304
	movq %r10, (%rax)
	leaq L_.str.115(%rip), %rax
	pushq %rax // 312
	movq %rbp, %rax // r11
	subq $304, %rax
	pushq %rax // 320
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 304
	movq %r10, (%rax)
	leaq L_.str.116(%rip), %rax
	pushq %rax // 312
	movq %rbp, %rax // r11
	subq $304, %rax
	pushq %rax // 320
	movq $2, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 304
	movq %r10, (%rax)
	leaq L_.str.117(%rip), %rax
	pushq %rax // 312
	movq %rbp, %rax // r11
	subq $304, %rax
	pushq %rax // 320
	movq $3, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 304
	movq %r10, (%rax)
//call log2_int
	movslq -12(%rbp), %rax // size
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _log2_int
	addq $0, %rsp // 304
	movl %eax, -12(%rbp) // size = rax
//if begin
//call strcmp
	movq -8(%rbp), %rax // reg
	pushq %rax // 312
	leaq L_.str.85(%rip), %rax
	pushq %rax // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _strcmp
	addq $0, %rsp // 304
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE343
	movq %rbp, %rax // rax
	subq $48, %rax
	pushq %rax // 312
	movslq -12(%rbp), %rax // size
	movq %rax, %r10
	popq %rax // 304
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF343
ELSE343:
END_IF343:
//if begin
//call strcmp
	movq -8(%rbp), %rax // reg
	pushq %rax // 312
	leaq L_.str.89(%rip), %rax
	pushq %rax // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _strcmp
	addq $0, %rsp // 304
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE344
	movq %rbp, %rax // rdx
	subq $80, %rax
	pushq %rax // 312
	movslq -12(%rbp), %rax // size
	movq %rax, %r10
	popq %rax // 304
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF344
ELSE344:
END_IF344:
//if begin
//call strcmp
	movq -8(%rbp), %rax // reg
	pushq %rax // 312
	leaq L_.str.93(%rip), %rax
	pushq %rax // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _strcmp
	addq $0, %rsp // 304
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE345
	movq %rbp, %rax // rcx
	subq $112, %rax
	pushq %rax // 312
	movslq -12(%rbp), %rax // size
	movq %rax, %r10
	popq %rax // 304
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF345
ELSE345:
END_IF345:
//if begin
//call strcmp
	movq -8(%rbp), %rax // reg
	pushq %rax // 312
	leaq L_.str.97(%rip), %rax
	pushq %rax // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _strcmp
	addq $0, %rsp // 304
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE346
	movq %rbp, %rax // rdi
	subq $144, %rax
	pushq %rax // 312
	movslq -12(%rbp), %rax // size
	movq %rax, %r10
	popq %rax // 304
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF346
ELSE346:
END_IF346:
//if begin
//call strcmp
	movq -8(%rbp), %rax // reg
	pushq %rax // 312
	leaq L_.str.101(%rip), %rax
	pushq %rax // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _strcmp
	addq $0, %rsp // 304
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE347
	movq %rbp, %rax // rsi
	subq $176, %rax
	pushq %rax // 312
	movslq -12(%rbp), %rax // size
	movq %rax, %r10
	popq %rax // 304
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF347
ELSE347:
END_IF347:
//if begin
//call strcmp
	movq -8(%rbp), %rax // reg
	pushq %rax // 312
	leaq L_.str.105(%rip), %rax
	pushq %rax // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _strcmp
	addq $0, %rsp // 304
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE348
	movq %rbp, %rax // r8
	subq $208, %rax
	pushq %rax // 312
	movslq -12(%rbp), %rax // size
	movq %rax, %r10
	popq %rax // 304
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF348
ELSE348:
END_IF348:
//if begin
//call strcmp
	movq -8(%rbp), %rax // reg
	pushq %rax // 312
	leaq L_.str.109(%rip), %rax
	pushq %rax // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _strcmp
	addq $0, %rsp // 304
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE349
	movq %rbp, %rax // r9
	subq $240, %rax
	pushq %rax // 312
	movslq -12(%rbp), %rax // size
	movq %rax, %r10
	popq %rax // 304
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF349
ELSE349:
END_IF349:
//if begin
//call strcmp
	movq -8(%rbp), %rax // reg
	pushq %rax // 312
	leaq L_.str.113(%rip), %rax
	pushq %rax // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _strcmp
	addq $0, %rsp // 304
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE350
	movq %rbp, %rax // r10
	subq $272, %rax
	pushq %rax // 312
	movslq -12(%rbp), %rax // size
	movq %rax, %r10
	popq %rax // 304
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF350
ELSE350:
END_IF350:
//if begin
//call strcmp
	movq -8(%rbp), %rax // reg
	pushq %rax // 312
	leaq L_.str.117(%rip), %rax
	pushq %rax // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _strcmp
	addq $0, %rsp // 304
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE351
	movq %rbp, %rax // r11
	subq $304, %rax
	pushq %rax // 312
	movslq -12(%rbp), %rax // size
	movq %rax, %r10
	popq %rax // 304
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF351
ELSE351:
END_IF351:
//}
	addq $304, %rsp // 0
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

//int add_string_lit(char* s)
_add_string_lit:
	pushq %rbp
	movq %rsp, %rbp
	subq $12, %rsp // 12
	movq %rdi, -8(%rbp) //s
//{ (1940)
//for init
	movq $0, %rax
	movl %eax, -12(%rbp) // i = rax
FOR352:
	movslq -12(%rbp), %rax // i
	pushq %rax // 20
	movslq _strings_literal_count(%rip), %rax
	movq %rax, %r10
	popq %rax // 12
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je FOR_END352
//{ (1942)
//if begin
//call strcmp
	movq -8(%rbp), %rax // s
	pushq %rax // 20
	movq _strings_literal@GOTPCREL(%rip), %rax
	pushq %rax // 28
	movslq -12(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 20
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 28
	popq %rsi // 20
	popq %rdi // 12
	subq $4, %rsp // 16
	xorq %rax, %rax
	callq _strcmp
	addq $4, %rsp // 12
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE353
	movslq -12(%rbp), %rax // i
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF353
ELSE353:
END_IF353:
//}
FOR_INC352:
	movslq -12(%rbp), %rax // i
	pushq %rax // 20
	movslq -12(%rbp), %rax // i
	pushq %rax // 28
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 20
	addq %r10, %rax
	movl %eax, -12(%rbp) // i = rax
	popq %rax // 12
	jmp FOR352
FOR_END352:
	movq -8(%rbp), %rax // s
	pushq %rax // 20
	movq _strings_literal@GOTPCREL(%rip), %rax
	pushq %rax // 28
	movslq _strings_literal_count(%rip), %rax
	movq %rax, %r10
	popq %rax // 20
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 12
	movq %r10, (%rax)
	movslq _strings_literal_count(%rip), %rax
	pushq %rax // 20
	movslq _strings_literal_count(%rip), %rax
	pushq %rax // 28
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 20
	addq %r10, %rax
	movl %eax, _strings_literal_count(%rip)
	popq %rax // 12
	movq %rbp, %rsp
	popq %rbp
	ret
//}
	addq $12, %rsp // 0
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

//void push(char* reg)
_push:
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp // 8
	movq %rdi, -8(%rbp) //reg
//{ (1960)
	movslq _stack_size(%rip), %rax
	pushq %rax // 16
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 8
	addq %r10, %rax
	movl %eax, _stack_size(%rip)
//call out
	leaq L_.str.118(%rip), %rax
	pushq %rax // 16
	movq -8(%rbp), %rax // reg
	pushq %rax // 24
	movslq _stack_size(%rip), %rax
	pushq %rax // 32
	popq %rdx // 24
	popq %rsi // 16
	popq %rdi // 8
	subq $8, %rsp // 16
	xorq %rax, %rax
	callq _out
	addq $8, %rsp // 8
//}
	addq $8, %rsp // 0
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

//void pop(char* reg)
_pop:
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp // 8
	movq %rdi, -8(%rbp) //reg
//{ (1966)
	movslq _stack_size(%rip), %rax
	pushq %rax // 16
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 8
	subq %r10, %rax
	movl %eax, _stack_size(%rip)
//call out
	leaq L_.str.119(%rip), %rax
	pushq %rax // 16
	movq -8(%rbp), %rax // reg
	pushq %rax // 24
	movslq _stack_size(%rip), %rax
	pushq %rax // 32
	popq %rdx // 24
	popq %rsi // 16
	popq %rdi // 8
	subq $8, %rsp // 16
	xorq %rax, %rax
	callq _out
	addq $8, %rsp // 8
//}
	addq $8, %rsp // 0
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

//void gen(Node* node)
_gen:
	pushq %rbp
	movq %rsp, %rbp
	subq $300, %rsp // 300
	movq %rdi, -8(%rbp) //node
//{ (1973)
//if begin
	movq -8(%rbp), %rax // node
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR355
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR355:
	cmpq $0, %rax
	je ELSE354
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF354
ELSE354:
END_IF354:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE356
//{ (1977)
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $40, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	movq %rax, -16(%rbp) // curr = rax
WHILE357:
	movq -16(%rbp), %rax // curr
	cmpq $0, %rax
	je WHILE_END357
//{ (1980)
//call gen
	movq -16(%rbp), %rax // curr
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $4, %rsp // 300
//cast to (Node**)
//cast to (char*)
	movq -16(%rbp), %rax // curr
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $40, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	movq %rax, -16(%rbp) // curr = rax
//}
	jmp WHILE357
WHILE_END357:
//}
	jmp END_IF356
ELSE356:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $15, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE358
//{ (1986)
//if begin
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $48, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE359
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF359
ELSE359:
END_IF359:
//if begin
//call strcmp
//cast to (char**)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 308
	leaq L_.str.120(%rip), %rax
	pushq %rax // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _strcmp
	addq $4, %rsp // 300
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE360
//call fprintf
	movq _f(%rip), %rax // f
	pushq %rax // 308
	leaq L_.str.121(%rip), %rax
	pushq %rax // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _fprintf
	addq $4, %rsp // 300
	jmp END_IF360
ELSE360:
END_IF360:
	movq $0, %rax
	movl %eax, _stack_size(%rip)
//call dbg
	leaq L_.str.122(%rip), %rax
	pushq %rax // 308
//call get_type_str
//cast to (Type**)
//cast to (char*)
//cast to (Func**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $152, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 316
	popq %rdi // 308
	subq $12, %rsp // 320
	xorq %rax, %rax
	callq _get_type_str
	addq $12, %rsp // 308
	pushq %rax // 316
//cast to (char**)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 324
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 316
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 324
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 316
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 324
	popq %rdx // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _dbg
	addq $4, %rsp // 300
//for init
	movq $0, %rax
	movl %eax, -20(%rbp) // i = rax
FOR361:
	movslq -20(%rbp), %rax // i
	pushq %rax // 308
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $1772, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je FOR_END361
//{ (1994)
//call dbg
	leaq L_.str.123(%rip), %rax
	pushq %rax // 308
//call get_type_str
//cast to (Type**)
//cast to (char*)
//cast to (Var**)
//cast to (char*)
//cast to (Node*[100])
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $968, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movslq -20(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 308
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 316
	popq %rdi // 308
	subq $12, %rsp // 320
	xorq %rax, %rax
	callq _get_type_str
	addq $12, %rsp // 308
	pushq %rax // 316
//cast to (char**)
//cast to (char*)
//cast to (Var**)
//cast to (char*)
//cast to (Node*[100])
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 324
	movq $968, %rax
	movq %rax, %r10
	popq %rax // 316
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 324
	movslq -20(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 316
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 324
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 316
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 324
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 316
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 324
	popq %rdx // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _dbg
	addq $4, %rsp // 300
//if begin
	movslq -20(%rbp), %rax // i
	pushq %rax // 308
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $1772, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 316
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 308
	subq %r10, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE362
//call dbg
	leaq L_.str.124(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _dbg
	addq $4, %rsp // 300
	jmp END_IF362
ELSE362:
END_IF362:
//}
FOR_INC361:
	movslq -20(%rbp), %rax // i
	pushq %rax // 308
	movslq -20(%rbp), %rax // i
	pushq %rax // 316
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 308
	addq %r10, %rax
	movl %eax, -20(%rbp) // i = rax
	popq %rax // 300
	jmp FOR361
FOR_END361:
//call dbg
	leaq L_.str.125(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _dbg
	addq $4, %rsp // 300
//call fprintf
	movq _f(%rip), %rax // f
	pushq %rax // 308
	leaq L_.str.126(%rip), %rax
	pushq %rax // 316
//cast to (char**)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 324
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 316
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 324
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 316
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 324
	popq %rdx // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _fprintf
	addq $4, %rsp // 300
//call out
	leaq L_.str.127(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.128(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $1776, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	movl %eax, _stack_size(%rip)
//call out
	leaq L_.str.129(%rip), %rax
	pushq %rax // 308
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $1776, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 316
	movslq _stack_size(%rip), %rax
	pushq %rax // 324
	popq %rdx // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
	leaq L_.str.97(%rip), %rax
	pushq %rax // 308
	movq %rbp, %rax // reg
	subq $72, %rax
	pushq %rax // 316
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 300
	movq %r10, (%rax)
	leaq L_.str.101(%rip), %rax
	pushq %rax // 308
	movq %rbp, %rax // reg
	subq $72, %rax
	pushq %rax // 316
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 300
	movq %r10, (%rax)
	leaq L_.str.89(%rip), %rax
	pushq %rax // 308
	movq %rbp, %rax // reg
	subq $72, %rax
	pushq %rax // 316
	movq $2, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 300
	movq %r10, (%rax)
	leaq L_.str.93(%rip), %rax
	pushq %rax // 308
	movq %rbp, %rax // reg
	subq $72, %rax
	pushq %rax // 316
	movq $3, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 300
	movq %r10, (%rax)
	leaq L_.str.105(%rip), %rax
	pushq %rax // 308
	movq %rbp, %rax // reg
	subq $72, %rax
	pushq %rax // 316
	movq $4, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 300
	movq %r10, (%rax)
	leaq L_.str.109(%rip), %rax
	pushq %rax // 308
	movq %rbp, %rax // reg
	subq $72, %rax
	pushq %rax // 316
	movq $5, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 300
	movq %r10, (%rax)
//for init
	movq $0, %rax
	movl %eax, -76(%rbp) // i = rax
FOR363:
	movslq -76(%rbp), %rax // i
	pushq %rax // 308
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $1772, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR364
	movslq -76(%rbp), %rax // i
	pushq %rax // 308
	movq $6, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR364:
	cmpq $0, %rax
	je FOR_END363
//{ (2012)
//cast to (Var**)
//cast to (char*)
//cast to (Node*[100])
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $968, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movslq -76(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 300
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	movq %rax, -88(%rbp) // v = rax
//call out
	leaq L_.str.130(%rip), %rax
	pushq %rax // 308
//call get_inst_suffix
//cast to (int*)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
	movq -88(%rbp), %rax // v
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 316
	popq %rdi // 308
	subq $12, %rsp // 320
	xorq %rax, %rax
	callq _get_inst_suffix
	addq $12, %rsp // 308
	pushq %rax // 316
//call get_register_by_size
	movq %rbp, %rax // reg
	subq $72, %rax
	pushq %rax // 324
	movslq -76(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 316
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 324
//cast to (int*)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
	movq -88(%rbp), %rax // v
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 332
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 324
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 332
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 324
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 332
	popq %rsi // 324
	popq %rdi // 316
	subq $4, %rsp // 320
	xorq %rax, %rax
	callq _get_register_by_size
	addq $4, %rsp // 316
	pushq %rax // 324
//cast to (int*)
//cast to (char*)
	movq -88(%rbp), %rax // v
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 332
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 324
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 332
//cast to (char**)
//cast to (char*)
	movq -88(%rbp), %rax // v
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 340
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 332
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 340
	popq %r8 // 332
	popq %rcx // 324
	popq %rdx // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//}
FOR_INC363:
	movslq -76(%rbp), %rax // i
	pushq %rax // 308
	movslq -76(%rbp), %rax // i
	pushq %rax // 316
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 308
	addq %r10, %rax
	movl %eax, -76(%rbp) // i = rax
	popq %rax // 300
	jmp FOR363
FOR_END363:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $1772, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $6, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	setg %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE365
//{ (2021)
//cast to (int*)
//cast to (char*)
//cast to (Var**)
//cast to (char*)
//cast to (Node*[100])
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $968, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $5, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 300
	addq %r10, %rax
	movl %eax, -92(%rbp) // offset = rax
	movq $16, %rax
	movl %eax, -96(%rbp) // offset2 = rax
//for init
	movq $6, %rax
	movl %eax, -100(%rbp) // i = rax
FOR366:
	movslq -100(%rbp), %rax // i
	pushq %rax // 308
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $1772, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je FOR_END366
//{ (2026)
//call out
	leaq L_.str.131(%rip), %rax
	pushq %rax // 308
	movslq -96(%rbp), %rax // offset2
	pushq %rax // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.132(%rip), %rax
	pushq %rax // 308
//call get_inst_suffix
//cast to (int*)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
//cast to (Var**)
//cast to (char*)
//cast to (Node*[100])
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $968, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movslq -100(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 308
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 316
	popq %rdi // 308
	subq $12, %rsp // 320
	xorq %rax, %rax
	callq _get_inst_suffix
	addq $12, %rsp // 308
	pushq %rax // 316
//call get_register_by_size
	leaq L_.str.85(%rip), %rax
	pushq %rax // 324
//cast to (int*)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
//cast to (Var**)
//cast to (char*)
//cast to (Node*[100])
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 332
	movq $968, %rax
	movq %rax, %r10
	popq %rax // 324
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 332
	movslq -100(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 324
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 332
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 324
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 332
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 324
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 332
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 324
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 332
	popq %rsi // 324
	popq %rdi // 316
	subq $4, %rsp // 320
	xorq %rax, %rax
	callq _get_register_by_size
	addq $4, %rsp // 316
	pushq %rax // 324
//cast to (int*)
//cast to (char*)
//cast to (Var**)
//cast to (char*)
//cast to (Node*[100])
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 332
	movq $968, %rax
	movq %rax, %r10
	popq %rax // 324
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 332
	movslq -100(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 324
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 332
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 324
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 332
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 324
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 332
//cast to (char**)
//cast to (char*)
//cast to (Var**)
//cast to (char*)
//cast to (Node*[100])
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 340
	movq $968, %rax
	movq %rax, %r10
	popq %rax // 332
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 340
	movslq -100(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 332
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 340
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 332
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 340
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 332
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 340
	popq %r8 // 332
	popq %rcx // 324
	popq %rdx // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
	movslq -92(%rbp), %rax // offset
	pushq %rax // 308
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 300
	addq %r10, %rax
	movl %eax, -92(%rbp) // offset = rax
	movslq -96(%rbp), %rax // offset2
	pushq %rax // 308
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 300
	addq %r10, %rax
	movl %eax, -96(%rbp) // offset2 = rax
//}
FOR_INC366:
	movslq -100(%rbp), %rax // i
	pushq %rax // 308
	movslq -100(%rbp), %rax // i
	pushq %rax // 316
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 308
	addq %r10, %rax
	movl %eax, -100(%rbp) // i = rax
	popq %rax // 300
	jmp FOR366
FOR_END366:
//}
	jmp END_IF365
ELSE365:
END_IF365:
//call gen
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $48, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $4, %rsp // 300
	movslq _stack_size(%rip), %rax
	pushq %rax // 308
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $1776, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	movq %rax, %r10
	popq %rax // 300
	subq %r10, %rax
	movl %eax, _stack_size(%rip)
//call out
	leaq L_.str.133(%rip), %rax
	pushq %rax // 308
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $1776, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 316
	movslq _stack_size(%rip), %rax
	pushq %rax // 324
	popq %rdx // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.134(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.135(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.136(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.137(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//}
	jmp END_IF358
ELSE358:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $12, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE367
//{ (2053)
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $96, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	movq %rax, -112(%rbp) // curr = rax
//call dbg
	leaq L_.str.138(%rip), %rax
	pushq %rax // 308
//cast to (int*)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _dbg
	addq $4, %rsp // 300
WHILE368:
	movq -112(%rbp), %rax // curr
	cmpq $0, %rax
	je WHILE_END368
//{ (2057)
//call gen
	movq -112(%rbp), %rax // curr
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $4, %rsp // 300
//cast to (Node**)
//cast to (char*)
	movq -112(%rbp), %rax // curr
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $80, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	movq %rax, -112(%rbp) // curr = rax
//}
	jmp WHILE368
WHILE_END368:
//call dbg
	leaq L_.str.139(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _dbg
	addq $4, %rsp // 300
//}
	jmp END_IF367
ELSE367:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE369
//{ (2064)
//call gen
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $4, %rsp // 300
//}
	jmp END_IF369
ELSE369:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $18, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE370
//{ (2068)
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $88, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	movq %rax, -120(%rbp) // curr = rax
WHILE371:
	movq -120(%rbp), %rax // curr
	cmpq $0, %rax
	je WHILE_END371
//{ (2071)
//if begin
//cast to (int*)
//cast to (char*)
//cast to (Var**)
//cast to (char*)
	movq -120(%rbp), %rax // curr
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	cmpq $0, %rax
	je ELSE372
//{ (2073)
//}
	jmp END_IF372
ELSE372:
//if begin
//cast to (int*)
//cast to (char*)
//cast to (Var**)
//cast to (char*)
	movq -120(%rbp), %rax // curr
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR374
//cast to (Node**)
//cast to (char*)
	movq -120(%rbp), %rax // curr
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR374:
	cmpq $0, %rax
	je ELSE373
//call gen
//cast to (Node**)
//cast to (char*)
	movq -120(%rbp), %rax // curr
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $4, %rsp // 300
	jmp END_IF373
ELSE373:
END_IF373:
END_IF372:
//cast to (Node**)
//cast to (char*)
	movq -120(%rbp), %rax // curr
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $88, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	movq %rax, -120(%rbp) // curr = rax
//}
	jmp WHILE371
WHILE_END371:
//}
	jmp END_IF370
ELSE370:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE375
//{ (2082)
//call gen
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $4, %rsp // 300
//call out
	leaq L_.str.135(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.136(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.140(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//}
	jmp END_IF375
ELSE375:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $9, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE376
//{ (2089)
	movslq _curr_label(%rip), %rax
	pushq %rax // 308
	movslq _curr_label(%rip), %rax
	pushq %rax // 316
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 308
	addq %r10, %rax
	movl %eax, _curr_label(%rip)
	popq %rax // 300
	movl %eax, -124(%rbp) // label = rax
//call fprintf
	movq _f(%rip), %rax // f
	pushq %rax // 308
	leaq L_.str.141(%rip), %rax
	pushq %rax // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _fprintf
	addq $4, %rsp // 300
//call gen
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $56, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $4, %rsp // 300
//call out
	leaq L_.str.142(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.143(%rip), %rax
	pushq %rax // 308
	movslq -124(%rbp), %rax // label
	pushq %rax // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call gen
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $48, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $4, %rsp // 300
//call out
	leaq L_.str.144(%rip), %rax
	pushq %rax // 308
	movslq -124(%rbp), %rax // label
	pushq %rax // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call fprintf
	movq _f(%rip), %rax // f
	pushq %rax // 308
	leaq L_.str.145(%rip), %rax
	pushq %rax // 316
	movslq -124(%rbp), %rax // label
	pushq %rax // 324
	popq %rdx // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _fprintf
	addq $4, %rsp // 300
//if begin
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $136, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	cmpq $0, %rax
	je ELSE377
//call gen
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $136, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $4, %rsp // 300
	jmp END_IF377
ELSE377:
END_IF377:
//call fprintf
	movq _f(%rip), %rax // f
	pushq %rax // 308
	leaq L_.str.146(%rip), %rax
	pushq %rax // 316
	movslq -124(%rbp), %rax // label
	pushq %rax // 324
	popq %rdx // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _fprintf
	addq $4, %rsp // 300
//}
	jmp END_IF376
ELSE376:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $10, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE378
//{ (2103)
	movslq _curr_label(%rip), %rax
	pushq %rax // 308
	movslq _curr_label(%rip), %rax
	pushq %rax // 316
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 308
	addq %r10, %rax
	movl %eax, _curr_label(%rip)
	popq %rax // 300
	movl %eax, -128(%rbp) // label = rax
//call fprintf
	movq _f(%rip), %rax // f
	pushq %rax // 308
	leaq L_.str.147(%rip), %rax
	pushq %rax // 316
	movslq -128(%rbp), %rax // label
	pushq %rax // 324
	popq %rdx // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _fprintf
	addq $4, %rsp // 300
//call gen
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $56, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $4, %rsp // 300
//call out
	leaq L_.str.142(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.148(%rip), %rax
	pushq %rax // 308
	movslq -128(%rbp), %rax // label
	pushq %rax // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
	movslq _loop_counter(%rip), %rax
	pushq %rax // 308
	movslq _loop_counter(%rip), %rax
	pushq %rax // 316
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 308
	addq %r10, %rax
	movl %eax, _loop_counter(%rip)
	popq %rax // 300
	movslq _curr_loop_label(%rip), %rax
	movl %eax, -132(%rbp) // s1 = rax
	movslq _curr_loop_is_for(%rip), %rax
	movl %eax, -136(%rbp) // s2 = rax
	movslq -128(%rbp), %rax // label
	movl %eax, _curr_loop_label(%rip)
	movq $0, %rax
	movl %eax, _curr_loop_is_for(%rip)
//call gen
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $48, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $4, %rsp // 300
	movslq -132(%rbp), %rax // s1
	movl %eax, _curr_loop_label(%rip)
	movslq -136(%rbp), %rax // s2
	movl %eax, _curr_loop_is_for(%rip)
	movslq _loop_counter(%rip), %rax
	pushq %rax // 308
	movslq _loop_counter(%rip), %rax
	pushq %rax // 316
	movq $-1, %rax
	movq %rax, %r10
	popq %rax // 308
	addq %r10, %rax
	movl %eax, _loop_counter(%rip)
	popq %rax // 300
//call out
	leaq L_.str.149(%rip), %rax
	pushq %rax // 308
	movslq -128(%rbp), %rax // label
	pushq %rax // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call fprintf
	movq _f(%rip), %rax // f
	pushq %rax // 308
	leaq L_.str.150(%rip), %rax
	pushq %rax // 316
	movslq -128(%rbp), %rax // label
	pushq %rax // 324
	popq %rdx // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _fprintf
	addq $4, %rsp // 300
//}
	jmp END_IF378
ELSE378:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $11, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE379
//{ (2122)
	movslq _curr_label(%rip), %rax
	pushq %rax // 308
	movslq _curr_label(%rip), %rax
	pushq %rax // 316
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 308
	addq %r10, %rax
	movl %eax, _curr_label(%rip)
	popq %rax // 300
	movl %eax, -140(%rbp) // label = rax
//call fprintf
	movq _f(%rip), %rax // f
	pushq %rax // 308
	leaq L_.str.151(%rip), %rax
	pushq %rax // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _fprintf
	addq $4, %rsp // 300
//call gen
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $64, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $4, %rsp // 300
//call fprintf
	movq _f(%rip), %rax // f
	pushq %rax // 308
	leaq L_.str.152(%rip), %rax
	pushq %rax // 316
	movslq -140(%rbp), %rax // label
	pushq %rax // 324
	popq %rdx // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _fprintf
	addq $4, %rsp // 300
//if begin
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $56, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	cmpq $0, %rax
	je ELSE380
//{ (2128)
//call gen
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $56, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $4, %rsp // 300
//call out
	leaq L_.str.142(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.153(%rip), %rax
	pushq %rax // 308
	movslq -140(%rbp), %rax // label
	pushq %rax // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//}
	jmp END_IF380
ELSE380:
END_IF380:
	movslq _loop_counter(%rip), %rax
	pushq %rax // 308
	movslq _loop_counter(%rip), %rax
	pushq %rax // 316
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 308
	addq %r10, %rax
	movl %eax, _loop_counter(%rip)
	popq %rax // 300
	movslq _curr_loop_label(%rip), %rax
	movl %eax, -144(%rbp) // s1 = rax
	movslq _curr_loop_is_for(%rip), %rax
	movl %eax, -148(%rbp) // s2 = rax
	movslq -140(%rbp), %rax // label
	movl %eax, _curr_loop_label(%rip)
	movq $1, %rax
	movl %eax, _curr_loop_is_for(%rip)
//call gen
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $48, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $4, %rsp // 300
	movslq _loop_counter(%rip), %rax
	pushq %rax // 308
	movslq _loop_counter(%rip), %rax
	pushq %rax // 316
	movq $-1, %rax
	movq %rax, %r10
	popq %rax // 308
	addq %r10, %rax
	movl %eax, _loop_counter(%rip)
	popq %rax // 300
	movslq -144(%rbp), %rax // s1
	movl %eax, _curr_loop_label(%rip)
	movslq -148(%rbp), %rax // s2
	movl %eax, _curr_loop_is_for(%rip)
//call fprintf
	movq _f(%rip), %rax // f
	pushq %rax // 308
	leaq L_.str.154(%rip), %rax
	pushq %rax // 316
	movslq -140(%rbp), %rax // label
	pushq %rax // 324
	popq %rdx // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _fprintf
	addq $4, %rsp // 300
//call gen
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $72, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $4, %rsp // 300
//call out
	leaq L_.str.155(%rip), %rax
	pushq %rax // 308
	movslq -140(%rbp), %rax // label
	pushq %rax // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call fprintf
	movq _f(%rip), %rax // f
	pushq %rax // 308
	leaq L_.str.156(%rip), %rax
	pushq %rax // 316
	movslq -140(%rbp), %rax // label
	pushq %rax // 324
	popq %rdx // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _fprintf
	addq $4, %rsp // 300
//}
	jmp END_IF379
ELSE379:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $4, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE381
//{ (2148)
//if begin
//cast to (int*)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $144, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $6, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE382
//call out
	leaq L_.str.157(%rip), %rax
	pushq %rax // 308
//cast to (long*)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
	jmp END_IF382
ELSE382:
//call out
	leaq L_.str.158(%rip), %rax
	pushq %rax // 308
//cast to (long*)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
END_IF382:
//}
	jmp END_IF381
ELSE381:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $19, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE383
//{ (2155)
//call add_string_lit
//cast to (char**)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _add_string_lit
	addq $4, %rsp // 300
	movl %eax, -152(%rbp) // id = rax
//call out
	leaq L_.str.159(%rip), %rax
	pushq %rax // 308
	movslq -152(%rbp), %rax // id
	pushq %rax // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//}
	jmp END_IF383
ELSE383:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $2, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE384
//{ (2160)
//if begin
//cast to (int*)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $144, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $3, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR386
//cast to (int*)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $144, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $7, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR386:
	cmpq $0, %rax
	je ELSE385
//{ (2162)
//if begin
//cast to (int*)
//cast to (char*)
//cast to (Var**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	cmpq $0, %rax
	je ELSE387
//{ (2164)
//call out
	leaq L_.str.160(%rip), %rax
	pushq %rax // 308
//cast to (char**)
//cast to (char*)
//cast to (Var**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//}
	jmp END_IF387
ELSE387:
//{ (2168)
//call out
	leaq L_.str.161(%rip), %rax
	pushq %rax // 308
//cast to (char**)
//cast to (char*)
//cast to (Var**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.162(%rip), %rax
	pushq %rax // 308
//cast to (int*)
//cast to (char*)
//cast to (Var**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//}
END_IF387:
//}
	jmp END_IF385
ELSE385:
//if begin
//cast to (int*)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $144, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE388
//{ (2174)
//call out
	leaq L_.str.163(%rip), %rax
	pushq %rax // 308
//cast to (char**)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//}
	jmp END_IF388
ELSE388:
//{ (2178)
//if begin
//cast to (int*)
//cast to (char*)
//cast to (Var**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	cmpq $0, %rax
	je ELSE389
//{ (2180)
//if begin
//cast to (int*)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $144, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	cmpq $0, %rax
	je ELSE390
//{ (2182)
//if begin
//cast to (int*)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $144, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $4, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE391
//call out
	leaq L_.str.164(%rip), %rax
	pushq %rax // 308
//call get_inst_suffix
//cast to (int*)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $144, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 316
	popq %rdi // 308
	subq $12, %rsp // 320
	xorq %rax, %rax
	callq _get_inst_suffix
	addq $12, %rsp // 308
	pushq %rax // 316
//cast to (char**)
//cast to (char*)
//cast to (Var**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 324
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 316
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 324
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 316
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 324
//cast to (char**)
//cast to (char*)
//cast to (Var**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 332
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 324
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 332
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 324
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 332
	popq %rcx // 324
	popq %rdx // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
	jmp END_IF391
ELSE391:
//call out
	leaq L_.str.165(%rip), %rax
	pushq %rax // 308
//call get_inst_suffix
//cast to (int*)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $144, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 316
	popq %rdi // 308
	subq $12, %rsp // 320
	xorq %rax, %rax
	callq _get_inst_suffix
	addq $12, %rsp // 308
	pushq %rax // 316
//cast to (char**)
//cast to (char*)
//cast to (Var**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 324
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 316
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 324
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 316
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 324
//call get_register_by_size
	leaq L_.str.85(%rip), %rax
	pushq %rax // 332
//cast to (int*)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 340
	movq $144, %rax
	movq %rax, %r10
	popq %rax // 332
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 340
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 332
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 340
	popq %rsi // 332
	popq %rdi // 324
	subq $12, %rsp // 336
	xorq %rax, %rax
	callq _get_register_by_size
	addq $12, %rsp // 324
	pushq %rax // 332
//cast to (char**)
//cast to (char*)
//cast to (Var**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 340
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 332
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 340
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 332
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 340
	popq %r8 // 332
	popq %rcx // 324
	popq %rdx // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
END_IF391:
//}
	jmp END_IF390
ELSE390:
//{ (2196)
//if begin
//cast to (int*)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $144, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE392
//{ (2198)
//call out
	leaq L_.str.166(%rip), %rax
	pushq %rax // 308
//call get_inst_suffix
//cast to (int*)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $144, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 316
	popq %rdi // 308
	subq $12, %rsp // 320
	xorq %rax, %rax
	callq _get_inst_suffix
	addq $12, %rsp // 308
	pushq %rax // 316
//cast to (char**)
//cast to (char*)
//cast to (Var**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 324
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 316
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 324
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 316
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 324
	popq %rdx // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//}
	jmp END_IF392
ELSE392:
//call out
	leaq L_.str.167(%rip), %rax
	pushq %rax // 308
//cast to (char**)
//cast to (char*)
//cast to (Var**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
END_IF392:
//}
END_IF390:
//}
	jmp END_IF389
ELSE389:
//{ (2213)
//if begin
//cast to (int*)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $144, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	cmpq $0, %rax
	je ELSE393
//{ (2215)
//if begin
//cast to (int*)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $144, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $4, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE394
//call out
	leaq L_.str.168(%rip), %rax
	pushq %rax // 308
//call get_inst_suffix
//cast to (int*)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $144, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 316
	popq %rdi // 308
	subq $12, %rsp // 320
	xorq %rax, %rax
	callq _get_inst_suffix
	addq $12, %rsp // 308
	pushq %rax // 316
//cast to (int*)
//cast to (char*)
//cast to (Var**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 324
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 316
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 324
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 316
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 324
//cast to (char**)
//cast to (char*)
//cast to (Var**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 332
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 324
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 332
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 324
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 332
	popq %rcx // 324
	popq %rdx // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
	jmp END_IF394
ELSE394:
//call out
	leaq L_.str.169(%rip), %rax
	pushq %rax // 308
//call get_inst_suffix
//cast to (int*)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $144, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 316
	popq %rdi // 308
	subq $12, %rsp // 320
	xorq %rax, %rax
	callq _get_inst_suffix
	addq $12, %rsp // 308
	pushq %rax // 316
//cast to (int*)
//cast to (char*)
//cast to (Var**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 324
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 316
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 324
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 316
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 324
//call get_register_by_size
	leaq L_.str.85(%rip), %rax
	pushq %rax // 332
//cast to (int*)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 340
	movq $144, %rax
	movq %rax, %r10
	popq %rax // 332
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 340
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 332
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 340
	popq %rsi // 332
	popq %rdi // 324
	subq $12, %rsp // 336
	xorq %rax, %rax
	callq _get_register_by_size
	addq $12, %rsp // 324
	pushq %rax // 332
//cast to (char**)
//cast to (char*)
//cast to (Var**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 340
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 332
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 340
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 332
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 340
	popq %r8 // 332
	popq %rcx // 324
	popq %rdx // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
END_IF394:
//}
	jmp END_IF393
ELSE393:
//{ (2229)
//if begin
//cast to (int*)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $144, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE395
//{ (2231)
//call out
	leaq L_.str.170(%rip), %rax
	pushq %rax // 308
//call get_inst_suffix
//cast to (int*)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $144, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 316
	popq %rdi // 308
	subq $12, %rsp // 320
	xorq %rax, %rax
	callq _get_inst_suffix
	addq $12, %rsp // 308
	pushq %rax // 316
//cast to (int*)
//cast to (char*)
//cast to (Var**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 324
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 316
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 324
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 316
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 324
//cast to (char**)
//cast to (char*)
//cast to (Var**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 332
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 324
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 332
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 324
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 332
	popq %rcx // 324
	popq %rdx // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//}
	jmp END_IF395
ELSE395:
//call out
	leaq L_.str.171(%rip), %rax
	pushq %rax // 308
//cast to (int*)
//cast to (char*)
//cast to (Var**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 316
//cast to (char**)
//cast to (char*)
//cast to (Var**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 324
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 316
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 324
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 316
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 324
	popq %rdx // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
END_IF395:
//}
END_IF393:
//}
END_IF389:
//}
END_IF388:
END_IF385:
//}
	jmp END_IF384
ELSE384:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $13, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE396
//{ (2243)
//if begin
//call strcmp
//cast to (char**)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 308
	leaq L_.str.50(%rip), %rax
	pushq %rax // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _strcmp
	addq $4, %rsp // 300
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE397
//{ (2245)
	movslq _curr_label(%rip), %rax
	pushq %rax // 308
	movslq _curr_label(%rip), %rax
	pushq %rax // 316
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 308
	addq %r10, %rax
	movl %eax, _curr_label(%rip)
	popq %rax // 300
	movl %eax, -156(%rbp) // label = rax
//cast to (char**)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	movq %rax, -168(%rbp) // s2 = rax
WHILE398:
//cast to (int)
	movq -168(%rbp), %rax // s2
	movsbq (%rax), %rax
	pushq %rax // 308
	movq $10, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	setne %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je WHILE_END398
	movq -168(%rbp), %rax // s2
	pushq %rax // 308
	movq -168(%rbp), %rax // s2
	pushq %rax // 316
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	movq %rax, -168(%rbp) // s2 = rax
	popq %rax // 300
	jmp WHILE398
WHILE_END398:
//call fprintf
	movq _f(%rip), %rax // f
	pushq %rax // 308
	leaq L_.str.172(%rip), %rax
	pushq %rax // 316
//cast to (int)
	movq -168(%rbp), %rax // s2
	pushq %rax // 324
//cast to (char**)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 332
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 324
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 332
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 324
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	movq %rax, %r10
	popq %rax // 316
	subq %r10, %rax
	movq $1, %r10
	xorq %rdx, %rdx
	divq %r10
	pushq %rax // 324
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 316
	addq %r10, %rax
	pushq %rax // 324
//cast to (char**)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 332
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 324
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 332
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 324
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 332
	popq %rcx // 324
	popq %rdx // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _fprintf
	addq $4, %rsp // 300
//call gen
//cast to (Node*[100])
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $168, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $4, %rsp // 300
//call out
	leaq L_.str.173(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call gen
//cast to (Node*[100])
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $168, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $4, %rsp // 300
//call out
	leaq L_.str.174(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.175(%rip), %rax
	pushq %rax // 308
	movslq -156(%rbp), %rax // label
	pushq %rax // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.176(%rip), %rax
	pushq %rax // 308
//cast to (int*)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.177(%rip), %rax
	pushq %rax // 308
//cast to (int*)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.178(%rip), %rax
	pushq %rax // 308
//cast to (int*)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.179(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call fprintf
	movq _f(%rip), %rax // f
	pushq %rax // 308
	leaq L_.str.180(%rip), %rax
	pushq %rax // 316
	movslq -156(%rbp), %rax // label
	pushq %rax // 324
	popq %rdx // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _fprintf
	addq $4, %rsp // 300
//}
	jmp END_IF397
ELSE397:
//{ (2263)
	leaq L_.str.97(%rip), %rax
	pushq %rax // 308
	movq %rbp, %rax // reg
	subq $216, %rax
	pushq %rax // 316
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 300
	movq %r10, (%rax)
	leaq L_.str.101(%rip), %rax
	pushq %rax // 308
	movq %rbp, %rax // reg
	subq $216, %rax
	pushq %rax // 316
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 300
	movq %r10, (%rax)
	leaq L_.str.89(%rip), %rax
	pushq %rax // 308
	movq %rbp, %rax // reg
	subq $216, %rax
	pushq %rax // 316
	movq $2, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 300
	movq %r10, (%rax)
	leaq L_.str.93(%rip), %rax
	pushq %rax // 308
	movq %rbp, %rax // reg
	subq $216, %rax
	pushq %rax // 316
	movq $3, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 300
	movq %r10, (%rax)
	leaq L_.str.105(%rip), %rax
	pushq %rax // 308
	movq %rbp, %rax // reg
	subq $216, %rax
	pushq %rax // 316
	movq $4, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 300
	movq %r10, (%rax)
	leaq L_.str.109(%rip), %rax
	pushq %rax // 308
	movq %rbp, %rax // reg
	subq $216, %rax
	pushq %rax // 316
	movq $5, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 300
	movq %r10, (%rax)
//call dbg
	leaq L_.str.181(%rip), %rax
	pushq %rax // 308
//cast to (char**)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _dbg
	addq $4, %rsp // 300
//for init
	movq $0, %rax
	movl %eax, -220(%rbp) // i = rax
FOR399:
	movslq -220(%rbp), %rax // i
	pushq %rax // 308
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $1768, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR400
	movslq -220(%rbp), %rax // i
	pushq %rax // 308
	movq $6, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR400:
	cmpq $0, %rax
	je FOR_END399
//{ (2267)
//call gen
//cast to (Node*[100])
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $168, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movslq -220(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 300
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $4, %rsp // 300
//call push
	leaq L_.str.85(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _push
	addq $4, %rsp // 300
//}
FOR_INC399:
	movslq -220(%rbp), %rax // i
	pushq %rax // 308
	movslq -220(%rbp), %rax // i
	pushq %rax // 316
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 308
	addq %r10, %rax
	movl %eax, -220(%rbp) // i = rax
	popq %rax // 300
	jmp FOR399
FOR_END399:
//for init
	movq $0, %rax
	movl %eax, -224(%rbp) // i = rax
FOR401:
	movslq -224(%rbp), %rax // i
	pushq %rax // 308
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $1768, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR402
	movslq -224(%rbp), %rax // i
	pushq %rax // 308
	movq $6, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR402:
	cmpq $0, %rax
	je FOR_END401
//{ (2273)
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $1768, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	movl %eax, -228(%rbp) // last = rax
//if begin
	movslq -228(%rbp), %rax // last
	pushq %rax // 308
	movq $6, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	setg %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE403
	movq $6, %rax
	movl %eax, -228(%rbp) // last = rax
	jmp END_IF403
ELSE403:
END_IF403:
//call pop
	movq %rbp, %rax // reg
	subq $216, %rax
	pushq %rax // 308
	movslq -228(%rbp), %rax // last
	pushq %rax // 316
	movslq -224(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 308
	subq %r10, %rax
	pushq %rax // 316
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 308
	subq %r10, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _pop
	addq $4, %rsp // 300
//}
FOR_INC401:
	movslq -224(%rbp), %rax // i
	pushq %rax // 308
	movslq -224(%rbp), %rax // i
	pushq %rax // 316
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 308
	addq %r10, %rax
	movl %eax, -224(%rbp) // i = rax
	popq %rax // 300
	jmp FOR401
FOR_END401:
	movslq _stack_size(%rip), %rax
	movl %eax, -232(%rbp) // s = rax
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $1768, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $6, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	setg %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE404
	movslq -232(%rbp), %rax // s
	pushq %rax // 308
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $1768, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 316
	movq $6, %rax
	movq %rax, %r10
	popq %rax // 308
	subq %r10, %rax
	pushq %rax // 316
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq %r10, %rax
	movq %rax, %r10
	popq %rax // 300
	addq %r10, %rax
	movl %eax, -232(%rbp) // s = rax
	jmp END_IF404
ELSE404:
END_IF404:
//call align
	movslq -232(%rbp), %rax // s
	pushq %rax // 308
	movq $16, %rax
	pushq %rax // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _align
	addq $4, %rsp // 300
	movl %eax, -236(%rbp) // target = rax
//call out
	leaq L_.str.129(%rip), %rax
	pushq %rax // 308
	movslq -236(%rbp), %rax // target
	pushq %rax // 316
	movslq -232(%rbp), %rax // s
	movq %rax, %r10
	popq %rax // 308
	subq %r10, %rax
	pushq %rax // 316
	movslq _stack_size(%rip), %rax
	pushq %rax // 324
	movslq -236(%rbp), %rax // target
	movq %rax, %r10
	popq %rax // 316
	addq %r10, %rax
	pushq %rax // 324
	movslq -232(%rbp), %rax // s
	movq %rax, %r10
	popq %rax // 316
	subq %r10, %rax
	pushq %rax // 324
	popq %rdx // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
	movslq _stack_size(%rip), %rax
	pushq %rax // 308
	movslq -236(%rbp), %rax // target
	pushq %rax // 316
	movslq -232(%rbp), %rax // s
	movq %rax, %r10
	popq %rax // 308
	subq %r10, %rax
	movq %rax, %r10
	popq %rax // 300
	addq %r10, %rax
	movl %eax, _stack_size(%rip)
//for init
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $1768, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 300
	subq %r10, %rax
	movl %eax, -240(%rbp) // i = rax
FOR405:
	movslq -240(%rbp), %rax // i
	pushq %rax // 308
	movq $6, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	setge %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je FOR_END405
//{ (2289)
//call gen
//cast to (Node*[100])
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $168, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movslq -240(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 300
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $4, %rsp // 300
//call push
	leaq L_.str.85(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _push
	addq $4, %rsp // 300
//}
FOR_INC405:
	movslq -240(%rbp), %rax // i
	pushq %rax // 308
	movslq -240(%rbp), %rax // i
	pushq %rax // 316
	movq $-1, %rax
	movq %rax, %r10
	popq %rax // 308
	addq %r10, %rax
	movl %eax, -240(%rbp) // i = rax
	popq %rax // 300
	jmp FOR405
FOR_END405:
//call out
	leaq L_.str.182(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.183(%rip), %rax
	pushq %rax // 308
//cast to (char**)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
	movslq -236(%rbp), %rax // target
	pushq %rax // 308
	movslq -232(%rbp), %rax // s
	movq %rax, %r10
	popq %rax // 300
	subq %r10, %rax
	movl %eax, -244(%rbp) // add = rax
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $1768, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $6, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	setg %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE406
	movslq -244(%rbp), %rax // add
	pushq %rax // 308
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $1768, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 316
	movq $6, %rax
	movq %rax, %r10
	popq %rax // 308
	subq %r10, %rax
	pushq %rax // 316
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq %r10, %rax
	movq %rax, %r10
	popq %rax // 300
	addq %r10, %rax
	movl %eax, -244(%rbp) // add = rax
	jmp END_IF406
ELSE406:
END_IF406:
	movslq _stack_size(%rip), %rax
	pushq %rax // 308
	movslq -244(%rbp), %rax // add
	movq %rax, %r10
	popq %rax // 300
	subq %r10, %rax
	movl %eax, _stack_size(%rip)
//call out
	leaq L_.str.133(%rip), %rax
	pushq %rax // 308
	movslq -244(%rbp), %rax // add
	pushq %rax // 316
	movslq _stack_size(%rip), %rax
	pushq %rax // 324
	popq %rdx // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//}
END_IF397:
//}
	jmp END_IF396
ELSE396:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $17, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE407
//{ (2306)
//if begin
//cast to (int*)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE408
//cast to (Node**)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 308
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 300
	movq %r10, (%rax)
	jmp END_IF408
ELSE408:
END_IF408:
//if begin
//cast to (int*)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE409
//{ (2310)
//call gen
//cast to (Node**)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $4, %rsp // 300
//}
	jmp END_IF409
ELSE409:
//if begin
//cast to (int*)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $2, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE410
//{ (2314)
//if begin
//cast to (int*)
//cast to (char*)
//cast to (Var**)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	cmpq $0, %rax
	je ELSE411
//{ (2317)
//call out
	leaq L_.str.160(%rip), %rax
	pushq %rax // 308
//cast to (char**)
//cast to (char*)
//cast to (Var**)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//}
	jmp END_IF411
ELSE411:
//{ (2321)
//call out
	leaq L_.str.184(%rip), %rax
	pushq %rax // 308
//cast to (char**)
//cast to (char*)
//cast to (Var**)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.162(%rip), %rax
	pushq %rax // 308
//cast to (int*)
//cast to (char*)
//cast to (Var**)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//}
END_IF411:
//}
	jmp END_IF410
ELSE410:
//if begin
//cast to (int*)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $22, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE412
//{ (2327)
//cast to (Node**)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 308
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 300
	movq %r10, (%rax)
//call gen
	movq -8(%rbp), %rax // node
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $4, %rsp // 300
//}
	jmp END_IF412
ELSE412:
END_IF412:
END_IF410:
END_IF409:
//}
	jmp END_IF407
ELSE407:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE413
//{ (2335)
//call gen
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $4, %rsp // 300
//if begin
//cast to (Type**)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $144, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE414
//call error_token
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 308
	leaq L_.str.185(%rip), %rax
	pushq %rax // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _error_token
	addq $4, %rsp // 300
	jmp END_IF414
ELSE414:
END_IF414:
//if begin
//cast to (int*)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $144, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $7, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE415
	jmp END_IF415
ELSE415:
//if begin
//cast to (int*)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $144, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE416
//call out
	leaq L_.str.186(%rip), %rax
	pushq %rax // 308
//call get_inst_suffix
//cast to (int*)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $144, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 316
	popq %rdi // 308
	subq $12, %rsp // 320
	xorq %rax, %rax
	callq _get_inst_suffix
	addq $12, %rsp // 308
	pushq %rax // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
	jmp END_IF416
ELSE416:
//call out
	leaq L_.str.187(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
END_IF416:
END_IF415:
//}
	jmp END_IF413
ELSE413:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $7, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE417
//{ (2353)
//call gen
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $4, %rsp // 300
//if begin
//cast to (Type**)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $144, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	cmpq $0, %rax
	je ELSE418
//call error_token
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 308
	leaq L_.str.188(%rip), %rax
	pushq %rax // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _error_token
	addq $4, %rsp // 300
	jmp END_IF418
ELSE418:
END_IF418:
//call out
	leaq L_.str.189(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.190(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.191(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//}
	jmp END_IF417
ELSE417:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $22, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE419
//{ (2362)
//call dbg
	leaq L_.str.192(%rip), %rax
	pushq %rax // 308
//call get_type_str
//cast to (Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $144, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 316
	popq %rdi // 308
	subq $12, %rsp // 320
	xorq %rax, %rax
	callq _get_type_str
	addq $12, %rsp // 308
	pushq %rax // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _dbg
	addq $4, %rsp // 300
//call gen
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $4, %rsp // 300
//cast to (Type**)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $144, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	movq %rax, -256(%rbp) // t1 = rax
//cast to (Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $144, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	movq %rax, -264(%rbp) // t2 = rax
//if begin
//cast to (int*)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $144, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $3, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE420
//{ (2368)
//call new_type
	movq $1, %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _new_type
	addq $4, %rsp // 300
	movq %rax, -264(%rbp) // t2 = rax
//cast to (Type**)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $144, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 308
//cast to (Type**)
//cast to (char*)
	movq -264(%rbp), %rax // t2
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 300
	movq %r10, (%rax)
//}
	jmp END_IF420
ELSE420:
END_IF420:
//if begin
//cast to (int*)
//cast to (char*)
	movq -256(%rbp), %rax // t1
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR422
//cast to (int*)
//cast to (char*)
	movq -264(%rbp), %rax // t2
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR422:
	cmpq $0, %rax
	je ELSE421
//{ (2375)
//if begin
//cast to (int*)
//cast to (char*)
	movq -264(%rbp), %rax // t2
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
//cast to (int*)
//cast to (char*)
	movq -256(%rbp), %rax // t1
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE423
//{ (2377)
//call out
	leaq L_.str.193(%rip), %rax
	pushq %rax // 308
//call get_inst_suffix
//cast to (int*)
//cast to (char*)
	movq -264(%rbp), %rax // t2
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 316
	popq %rdi // 308
	subq $12, %rsp // 320
	xorq %rax, %rax
	callq _get_inst_suffix
	addq $12, %rsp // 308
	pushq %rax // 316
//call get_register_by_size
	leaq L_.str.85(%rip), %rax
	pushq %rax // 324
//cast to (int*)
//cast to (char*)
	movq -264(%rbp), %rax // t2
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 332
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 324
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 332
	popq %rsi // 324
	popq %rdi // 316
	subq $4, %rsp // 320
	xorq %rax, %rax
	callq _get_register_by_size
	addq $4, %rsp // 316
	pushq %rax // 324
	popq %rdx // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.191(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//}
	jmp END_IF423
ELSE423:
END_IF423:
//}
	jmp END_IF421
ELSE421:
//if begin
//cast to (int*)
//cast to (char*)
	movq -264(%rbp), %rax // t2
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	cmpq $0, %rax
	je ELSE424
//{ (2387)
//call out
	leaq L_.str.189(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.194(%rip), %rax
	pushq %rax // 308
//call get_inst_suffix
//cast to (int*)
//cast to (char*)
	movq -264(%rbp), %rax // t2
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 316
	popq %rdi // 308
	subq $12, %rsp // 320
	xorq %rax, %rax
	callq _get_inst_suffix
	addq $12, %rsp // 308
	pushq %rax // 316
//call get_register_by_size
	leaq L_.str.85(%rip), %rax
	pushq %rax // 324
//cast to (int*)
//cast to (char*)
	movq -264(%rbp), %rax // t2
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 332
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 324
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 332
	popq %rsi // 324
	popq %rdi // 316
	subq $4, %rsp // 320
	xorq %rax, %rax
	callq _get_register_by_size
	addq $4, %rsp // 316
	pushq %rax // 324
//call get_register_by_size
	leaq L_.str.113(%rip), %rax
	pushq %rax // 332
//cast to (int*)
//cast to (char*)
	movq -264(%rbp), %rax // t2
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 340
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 332
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 340
	popq %rsi // 332
	popq %rdi // 324
	subq $12, %rsp // 336
	xorq %rax, %rax
	callq _get_register_by_size
	addq $12, %rsp // 324
	pushq %rax // 332
	popq %rcx // 324
	popq %rdx // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.191(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//}
	jmp END_IF424
ELSE424:
//{ (2396)
//if begin
//cast to (int*)
//cast to (char*)
	movq -264(%rbp), %rax // t2
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE425
//{ (2398)
//call out
	leaq L_.str.189(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.194(%rip), %rax
	pushq %rax // 308
//call get_inst_suffix
//cast to (int*)
//cast to (char*)
	movq -264(%rbp), %rax // t2
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 316
	popq %rdi // 308
	subq $12, %rsp // 320
	xorq %rax, %rax
	callq _get_inst_suffix
	addq $12, %rsp // 308
	pushq %rax // 316
//call get_register_by_size
	leaq L_.str.85(%rip), %rax
	pushq %rax // 324
//cast to (int*)
//cast to (char*)
	movq -264(%rbp), %rax // t2
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 332
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 324
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 332
	popq %rsi // 324
	popq %rdi // 316
	subq $4, %rsp // 320
	xorq %rax, %rax
	callq _get_register_by_size
	addq $4, %rsp // 316
	pushq %rax // 324
//call get_register_by_size
	leaq L_.str.113(%rip), %rax
	pushq %rax // 332
//cast to (int*)
//cast to (char*)
	movq -264(%rbp), %rax // t2
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 340
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 332
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 340
	popq %rsi // 332
	popq %rdi // 324
	subq $12, %rsp // 336
	xorq %rax, %rax
	callq _get_register_by_size
	addq $12, %rsp // 324
	pushq %rax // 332
	popq %rcx // 324
	popq %rdx // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.195(%rip), %rax
	pushq %rax // 308
//call get_inst_suffix
//cast to (int*)
//cast to (char*)
	movq -264(%rbp), %rax // t2
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 316
	popq %rdi // 308
	subq $12, %rsp // 320
	xorq %rax, %rax
	callq _get_inst_suffix
	addq $12, %rsp // 308
	pushq %rax // 316
//call get_register_by_size
	leaq L_.str.113(%rip), %rax
	pushq %rax // 324
//cast to (int*)
//cast to (char*)
	movq -264(%rbp), %rax // t2
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 332
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 324
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 332
	popq %rsi // 324
	popq %rdi // 316
	subq $4, %rsp // 320
	xorq %rax, %rax
	callq _get_register_by_size
	addq $4, %rsp // 316
	pushq %rax // 324
	popq %rdx // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//}
	jmp END_IF425
ELSE425:
END_IF425:
//}
END_IF424:
END_IF421:
//}
	jmp END_IF419
ELSE419:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $5, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE426
//{ (2414)
//call gen
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $4, %rsp // 300
//if begin
//call type_match
//cast to (int*)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $258, %rax
	pushq %rax // 316
	movq $259, %rax
	pushq %rax // 324
	movq $1, %rax
	xorq %r10, %r10
	subq %rax, %r10
	movq %r10, %rax
	pushq %rax // 332
	popq %rcx // 324
	popq %rdx // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _type_match
	addq $4, %rsp // 300
	cmpq $0, %rax
	je ELSE427
//{ (2417)
	movslq _curr_label(%rip), %rax
	pushq %rax // 308
	movslq _curr_label(%rip), %rax
	pushq %rax // 316
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 308
	addq %r10, %rax
	movl %eax, _curr_label(%rip)
	popq %rax // 300
	movl %eax, -268(%rbp) // label = rax
//cast to (int*)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $258, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	movl %eax, -272(%rbp) // is_and = rax
//call out
	leaq L_.str.142(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.196(%rip), %rax
	pushq %rax // 308
	movslq -272(%rbp), %rax // is_and
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	pushq %rax // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.197(%rip), %rax
	pushq %rax // 308
	movslq -272(%rbp), %rax // is_and
	cmpq $0, %rax
	je QUES428
	leaq L_.str.65(%rip), %rax
	jmp QUES_END428
QUES428:
	leaq L_.str.198(%rip), %rax
QUES_END428:
	pushq %rax // 316
	movslq -268(%rbp), %rax // label
	pushq %rax // 324
	popq %rdx // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call gen
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $4, %rsp // 300
//call out
	leaq L_.str.142(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.199(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.200(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call fprintf
	movq _f(%rip), %rax // f
	pushq %rax // 308
	leaq L_.str.201(%rip), %rax
	pushq %rax // 316
	movslq -268(%rbp), %rax // label
	pushq %rax // 324
	popq %rdx // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _fprintf
	addq $4, %rsp // 300
//}
	jmp END_IF427
ELSE427:
//{ (2430)
//call push
	leaq L_.str.85(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _push
	addq $4, %rsp // 300
//call gen
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $4, %rsp // 300
//call out
	leaq L_.str.202(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call pop
	leaq L_.str.85(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _pop
	addq $4, %rsp // 300
//if begin
//cast to (int*)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $43, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR430
//cast to (int*)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $45, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR430:
	cmpq $0, %rax
	je ELSE429
//{ (2443)
//if begin
//cast to (Type**)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $144, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR432
//cast to (Type**)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $144, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR432:
	cmpq $0, %rax
	je ELSE431
//call out
	leaq L_.str.203(%rip), %rax
	pushq %rax // 308
//cast to (int*)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $144, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
	jmp END_IF431
ELSE431:
//if begin
//cast to (Type**)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $144, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR434
//cast to (Type**)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $144, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR434:
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR435
//cast to (int*)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $43, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR435:
	cmpq $0, %rax
	je ELSE433
//call out
	leaq L_.str.204(%rip), %rax
	pushq %rax // 308
//cast to (int*)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $144, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
	jmp END_IF433
ELSE433:
END_IF433:
END_IF431:
//}
	jmp END_IF429
ELSE429:
END_IF429:
//if begin
//cast to (int*)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $43, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE436
//call out
	leaq L_.str.205(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
	jmp END_IF436
ELSE436:
//if begin
//cast to (int*)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $45, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE437
//call out
	leaq L_.str.206(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
	jmp END_IF437
ELSE437:
//if begin
//cast to (int*)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $42, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE438
//call out
	leaq L_.str.207(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
	jmp END_IF438
ELSE438:
//if begin
//cast to (int*)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $47, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR440
//cast to (int*)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $37, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR440:
	cmpq $0, %rax
	je ELSE439
//{ (2457)
//if begin
//cast to (int*)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $144, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE441
//{ (2461)
//call out
	leaq L_.str.208(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.209(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//}
	jmp END_IF441
ELSE441:
//{ (2466)
//call out
	leaq L_.str.210(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.211(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//}
END_IF441:
//if begin
//cast to (int*)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $37, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE442
//call out
	leaq L_.str.212(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
	jmp END_IF442
ELSE442:
END_IF442:
//}
	jmp END_IF439
ELSE439:
//if begin
//call type_match
//cast to (int*)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $260, %rax
	pushq %rax // 316
	movq $261, %rax
	pushq %rax // 324
	movq $262, %rax
	pushq %rax // 332
	movq $263, %rax
	pushq %rax // 340
	movq $60, %rax
	pushq %rax // 348
	popq %r9 // 340
	popq %r8 // 332
	popq %rcx // 324
	popq %rdx // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	movq $1, %rax
	xorq %r10, %r10
	subq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $62, %rax
	pushq %rax // 320
	xorq %rax, %rax
	callq _type_match
	addq $20, %rsp // 300
	cmpq $0, %rax
	je ELSE443
//{ (2475)
	leaq L_.str.65(%rip), %rax
	movq %rax, -280(%rbp) // s = rax
//if begin
//cast to (int*)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $260, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE444
	leaq L_.str.213(%rip), %rax
	movq %rax, -280(%rbp) // s = rax
	jmp END_IF444
ELSE444:
//if begin
//cast to (int*)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $261, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE445
	leaq L_.str.214(%rip), %rax
	movq %rax, -280(%rbp) // s = rax
	jmp END_IF445
ELSE445:
//if begin
//cast to (int*)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $60, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE446
	leaq L_.str.78(%rip), %rax
	movq %rax, -280(%rbp) // s = rax
	jmp END_IF446
ELSE446:
//if begin
//cast to (int*)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $62, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE447
	leaq L_.str.215(%rip), %rax
	movq %rax, -280(%rbp) // s = rax
	jmp END_IF447
ELSE447:
//if begin
//cast to (int*)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $262, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE448
	leaq L_.str.216(%rip), %rax
	movq %rax, -280(%rbp) // s = rax
	jmp END_IF448
ELSE448:
//if begin
//cast to (int*)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $263, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE449
	leaq L_.str.217(%rip), %rax
	movq %rax, -280(%rbp) // s = rax
	jmp END_IF449
ELSE449:
END_IF449:
END_IF448:
END_IF447:
END_IF446:
END_IF445:
END_IF444:
//call out
	leaq L_.str.218(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.219(%rip), %rax
	pushq %rax // 308
	movq -280(%rbp), %rax // s
	pushq %rax // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.220(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.200(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//}
	jmp END_IF443
ELSE443:
END_IF443:
END_IF439:
END_IF438:
END_IF437:
END_IF436:
//if begin
//cast to (Type**)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $144, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR451
//cast to (Type**)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $144, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR451:
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR452
//cast to (int*)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $45, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR452:
	cmpq $0, %rax
	je ELSE450
//{ (2497)
//call out
	leaq L_.str.221(%rip), %rax
	pushq %rax // 308
//cast to (int*)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $144, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.210(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.211(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//}
	jmp END_IF450
ELSE450:
END_IF450:
//}
END_IF427:
//}
	jmp END_IF426
ELSE426:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $6, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE453
//{ (2505)
//if begin
//cast to (int*)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE454
//cast to (Node**)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 308
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 300
	movq %r10, (%rax)
	jmp END_IF454
ELSE454:
END_IF454:
//if begin
//cast to (int*)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE455
//{ (2509)
//call gen
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $4, %rsp // 300
//if begin
//cast to (int*)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $144, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $7, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE456
//{ (2512)
//call push
	leaq L_.str.85(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _push
	addq $4, %rsp // 300
//call gen
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $4, %rsp // 300
//call pop
	leaq L_.str.101(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _pop
	addq $4, %rsp // 300
//call out
	leaq L_.str.222(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.223(%rip), %rax
	pushq %rax // 308
//cast to (int*)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $144, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.224(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//}
	jmp END_IF456
ELSE456:
//{ (2522)
//call push
	leaq L_.str.85(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _push
	addq $4, %rsp // 300
//call gen
//cast to (Node**)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $4, %rsp // 300
//if begin
//cast to (Type**)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $144, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE457
//call error_token
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 308
	leaq L_.str.185(%rip), %rax
	pushq %rax // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _error_token
	addq $4, %rsp // 300
	jmp END_IF457
ELSE457:
END_IF457:
//call pop
	leaq L_.str.113(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _pop
	addq $4, %rsp // 300
//call out
	leaq L_.str.225(%rip), %rax
	pushq %rax // 308
//call get_inst_suffix
//cast to (int*)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $144, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 316
	popq %rdi // 308
	subq $12, %rsp // 320
	xorq %rax, %rax
	callq _get_inst_suffix
	addq $12, %rsp // 308
	pushq %rax // 316
//call get_register_by_size
	leaq L_.str.113(%rip), %rax
	pushq %rax // 324
//cast to (int*)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 332
	movq $144, %rax
	movq %rax, %r10
	popq %rax // 324
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 332
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 324
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 332
	popq %rsi // 324
	popq %rdi // 316
	subq $4, %rsp // 320
	xorq %rax, %rax
	callq _get_register_by_size
	addq $4, %rsp // 316
	pushq %rax // 324
	popq %rdx // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//}
END_IF456:
//}
	jmp END_IF455
ELSE455:
//if begin
//cast to (int*)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $2, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE458
//{ (2536)
//call gen
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $4, %rsp // 300
//cast to (Type**)
//cast to (char*)
//cast to (Var**)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 308
//cast to (Type**)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $144, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 300
	movq %r10, (%rax)
//if begin
//cast to (int*)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $144, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $3, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE459
//call error_token
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 308
	leaq L_.str.226(%rip), %rax
	pushq %rax // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _error_token
	addq $4, %rsp // 300
	jmp END_IF459
ELSE459:
END_IF459:
//if begin
//cast to (int*)
//cast to (char*)
//cast to (Var**)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	cmpq $0, %rax
	je ELSE460
//{ (2545)
//if begin
//cast to (int*)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $144, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $7, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE461
	jmp END_IF461
ELSE461:
END_IF461:
//call out
	leaq L_.str.227(%rip), %rax
	pushq %rax // 308
//call get_inst_suffix
//cast to (int*)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $144, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 316
	popq %rdi // 308
	subq $12, %rsp // 320
	xorq %rax, %rax
	callq _get_inst_suffix
	addq $12, %rsp // 308
	pushq %rax // 316
//call get_register_by_size
	leaq L_.str.85(%rip), %rax
	pushq %rax // 324
//cast to (int*)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 332
	movq $144, %rax
	movq %rax, %r10
	popq %rax // 324
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 332
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 324
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 332
	popq %rsi // 324
	popq %rdi // 316
	subq $4, %rsp // 320
	xorq %rax, %rax
	callq _get_register_by_size
	addq $4, %rsp // 316
	pushq %rax // 324
//cast to (char**)
//cast to (char*)
//cast to (Var**)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 332
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 324
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 332
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 324
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 332
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 324
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 332
	popq %rcx // 324
	popq %rdx // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//}
	jmp END_IF460
ELSE460:
//{ (2553)
//if begin
//cast to (int*)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $144, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $7, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE462
//{ (2555)
//call out
	leaq L_.str.228(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.229(%rip), %rax
	pushq %rax // 308
//cast to (int*)
//cast to (char*)
//cast to (Var**)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.230(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.223(%rip), %rax
	pushq %rax // 308
//cast to (int*)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
//cast to (Var**)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.224(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//}
	jmp END_IF462
ELSE462:
//{ (2564)
//call out
	leaq L_.str.231(%rip), %rax
	pushq %rax // 308
//call get_inst_suffix
//cast to (int*)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $144, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 316
	popq %rdi // 308
	subq $12, %rsp // 320
	xorq %rax, %rax
	callq _get_inst_suffix
	addq $12, %rsp // 308
	pushq %rax // 316
//call get_register_by_size
	leaq L_.str.85(%rip), %rax
	pushq %rax // 324
//cast to (int*)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 332
	movq $144, %rax
	movq %rax, %r10
	popq %rax // 324
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 332
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 324
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 332
	popq %rsi // 324
	popq %rdi // 316
	subq $4, %rsp // 320
	xorq %rax, %rax
	callq _get_register_by_size
	addq $4, %rsp // 316
	pushq %rax // 324
//cast to (int*)
//cast to (char*)
//cast to (Var**)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 332
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 324
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 332
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 324
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 332
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 324
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 332
//cast to (char**)
//cast to (char*)
//cast to (Var**)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 340
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 332
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 340
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 332
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 340
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 332
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 340
	popq %r8 // 332
	popq %rcx // 324
	popq %rdx // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//}
END_IF462:
//}
END_IF460:
//}
	jmp END_IF458
ELSE458:
END_IF458:
END_IF455:
//}
	jmp END_IF453
ELSE453:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $20, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE463
//{ (2575)
//if begin
	movslq _loop_counter(%rip), %rax
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE464
//call error_token
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 308
	leaq L_.str.232(%rip), %rax
	pushq %rax // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _error_token
	addq $4, %rsp // 300
	jmp END_IF464
ELSE464:
END_IF464:
//if begin
	movslq _curr_loop_is_for(%rip), %rax
	cmpq $0, %rax
	je ELSE465
//call out
	leaq L_.str.233(%rip), %rax
	pushq %rax // 308
	movslq _curr_loop_label(%rip), %rax
	pushq %rax // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
	jmp END_IF465
ELSE465:
//call out
	leaq L_.str.149(%rip), %rax
	pushq %rax // 308
	movslq _curr_loop_label(%rip), %rax
	pushq %rax // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
END_IF465:
//}
	jmp END_IF463
ELSE463:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $21, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE466
//{ (2584)
//if begin
	movslq _loop_counter(%rip), %rax
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE467
//call error_token
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 308
	leaq L_.str.234(%rip), %rax
	pushq %rax // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _error_token
	addq $4, %rsp // 300
	jmp END_IF467
ELSE467:
END_IF467:
//if begin
	movslq _curr_loop_is_for(%rip), %rax
	cmpq $0, %rax
	je ELSE468
//call out
	leaq L_.str.235(%rip), %rax
	pushq %rax // 308
	movslq _curr_loop_label(%rip), %rax
	pushq %rax // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
	jmp END_IF468
ELSE468:
//call out
	leaq L_.str.236(%rip), %rax
	pushq %rax // 308
	movslq _curr_loop_label(%rip), %rax
	pushq %rax // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
END_IF468:
//}
	jmp END_IF466
ELSE466:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $14, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE469
//{ (2593)
//call gen
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $4, %rsp // 300
//if begin
//cast to (int*)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $33, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE470
//{ (2596)
//call out
	leaq L_.str.142(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.199(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.237(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.220(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.200(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//}
	jmp END_IF470
ELSE470:
//if begin
//cast to (int*)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $275, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR472
//cast to (int*)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $276, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR472:
	cmpq $0, %rax
	je ELSE471
//{ (2604)
//call push
	leaq L_.str.85(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _push
	addq $4, %rsp // 300
//call new_node
	movq $4, %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _new_node
	addq $4, %rsp // 300
	movq %rax, -288(%rbp) // one = rax
//call new_temp_token
	movq $256, %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _new_temp_token
	addq $4, %rsp // 300
	pushq %rax // 308
//cast to (Token**)
//cast to (char*)
	movq -288(%rbp), %rax // one
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 300
	movq %r10, (%rax)
//cast to (long)
//cast to (int*)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $275, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je QUES473
	movq $1, %rax
	jmp QUES_END473
QUES473:
	movq $1, %rax
	xorq %r10, %r10
	subq %rax, %r10
	movq %r10, %rax
QUES_END473:
	pushq %rax // 308
//cast to (long*)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -288(%rbp), %rax // one
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 300
	movq %r10, (%rax)
//call new_node
	movq $6, %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _new_node
	addq $4, %rsp // 300
	movq %rax, -296(%rbp) // assign = rax
//call new_temp_token
	movq $61, %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _new_temp_token
	addq $4, %rsp // 300
	pushq %rax // 308
//cast to (Token**)
//cast to (char*)
	movq -296(%rbp), %rax // assign
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 300
	movq %r10, (%rax)
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 308
//cast to (Node**)
//cast to (char*)
	movq -296(%rbp), %rax // assign
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 300
	movq %r10, (%rax)
//call new_node
	movq $5, %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _new_node
	addq $4, %rsp // 300
	pushq %rax // 308
//cast to (Node**)
//cast to (char*)
	movq -296(%rbp), %rax // assign
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 300
	movq %r10, (%rax)
//call new_temp_token
	movq $43, %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _new_temp_token
	addq $4, %rsp // 300
	pushq %rax // 308
//cast to (Token**)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -296(%rbp), %rax // assign
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 300
	movq %r10, (%rax)
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 308
//cast to (Node**)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -296(%rbp), %rax // assign
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 300
	movq %r10, (%rax)
	movq -288(%rbp), %rax // one
	pushq %rax // 308
//cast to (Node**)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -296(%rbp), %rax // assign
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 316
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 308
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 300
	movq %r10, (%rax)
//call add_type
	movq -296(%rbp), %rax // assign
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _add_type
	addq $4, %rsp // 300
//call gen
	movq -296(%rbp), %rax // assign
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $4, %rsp // 300
//call pop
	leaq L_.str.85(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _pop
	addq $4, %rsp // 300
//}
	jmp END_IF471
ELSE471:
END_IF471:
END_IF470:
//}
	jmp END_IF469
ELSE469:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 308
	movq $23, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE474
//{ (2624)
	movslq _curr_label(%rip), %rax
	pushq %rax // 308
	movslq _curr_label(%rip), %rax
	pushq %rax // 316
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 308
	addq %r10, %rax
	movl %eax, _curr_label(%rip)
	popq %rax // 300
	movl %eax, -300(%rbp) // label = rax
//call gen
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $56, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $4, %rsp // 300
//call out
	leaq L_.str.142(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.238(%rip), %rax
	pushq %rax // 308
	movslq -300(%rbp), %rax // label
	pushq %rax // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call gen
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $4, %rsp // 300
//call out
	leaq L_.str.239(%rip), %rax
	pushq %rax // 308
	movslq -300(%rbp), %rax // label
	pushq %rax // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call fprintf
	movq _f(%rip), %rax // f
	pushq %rax // 308
	leaq L_.str.240(%rip), %rax
	pushq %rax // 316
	movslq -300(%rbp), %rax // label
	pushq %rax // 324
	popq %rdx // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _fprintf
	addq $4, %rsp // 300
//call gen
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $4, %rsp // 300
//call fprintf
	movq _f(%rip), %rax // f
	pushq %rax // 308
	leaq L_.str.241(%rip), %rax
	pushq %rax // 316
	movslq -300(%rbp), %rax // label
	pushq %rax // 324
	popq %rdx // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _fprintf
	addq $4, %rsp // 300
//}
	jmp END_IF474
ELSE474:
END_IF474:
END_IF469:
END_IF466:
END_IF463:
END_IF453:
END_IF426:
END_IF419:
END_IF417:
END_IF413:
END_IF407:
END_IF396:
END_IF384:
END_IF383:
END_IF381:
END_IF379:
END_IF378:
END_IF376:
END_IF375:
END_IF370:
END_IF369:
END_IF367:
END_IF358:
END_IF356:
//if begin
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $104, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	cmpq $0, %rax
	je ELSE475
//call gen
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 308
	movq $104, %rax
	movq %rax, %r10
	popq %rax // 300
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $4, %rsp // 300
	jmp END_IF475
ELSE475:
END_IF475:
//}
	addq $300, %rsp // 0
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

//void print(Node* node)
_print:
	pushq %rbp
	movq %rsp, %rbp
	subq $52, %rsp // 52
	movq %rdi, -8(%rbp) //node
//{ (2648)
//if begin
	movq -8(%rbp), %rax // node
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE476
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF476
ELSE476:
END_IF476:
//if begin
	movq -8(%rbp), %rax // node
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR478
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 60
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 52
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR478:
	cmpq $0, %rax
	je ELSE477
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF477
ELSE477:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 60
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 52
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE479
//{ (2655)
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $40, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	movq %rax, -16(%rbp) // curr = rax
WHILE480:
	movq -16(%rbp), %rax // curr
	cmpq $0, %rax
	je WHILE_END480
//{ (2658)
//call print
	movq -16(%rbp), %rax // curr
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _print
	addq $12, %rsp // 52
//cast to (Node**)
//cast to (char*)
	movq -16(%rbp), %rax // curr
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $40, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	movq %rax, -16(%rbp) // curr = rax
//}
	jmp WHILE480
WHILE_END480:
//}
	jmp END_IF479
ELSE479:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 60
	movq $15, %rax
	movq %rax, %r10
	popq %rax // 52
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE481
//{ (2664)
//call printf
	leaq L_.str.242(%rip), %rax
	pushq %rax // 60
//cast to (char**)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 68
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 60
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 68
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 60
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 68
	popq %rsi // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
//for init
	movq $0, %rax
	movl %eax, -20(%rbp) // i = rax
FOR482:
	movslq -20(%rbp), %rax // i
	pushq %rax // 60
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 68
	movq $1772, %rax
	movq %rax, %r10
	popq %rax // 60
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	movq %rax, %r10
	popq %rax // 52
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je FOR_END482
//{ (2667)
//call printf
	leaq L_.str.123(%rip), %rax
	pushq %rax // 60
//call get_type_str
//cast to (Type**)
//cast to (char*)
//cast to (Var**)
//cast to (char*)
//cast to (Node*[100])
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 68
	movq $968, %rax
	movq %rax, %r10
	popq %rax // 60
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 68
	movslq -20(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 60
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 68
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 60
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 68
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 60
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 68
	popq %rdi // 60
	subq $4, %rsp // 64
	xorq %rax, %rax
	callq _get_type_str
	addq $4, %rsp // 60
	pushq %rax // 68
//cast to (char**)
//cast to (char*)
//cast to (Var**)
//cast to (char*)
//cast to (Node*[100])
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 76
	movq $968, %rax
	movq %rax, %r10
	popq %rax // 68
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 76
	movslq -20(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 68
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 76
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 68
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 76
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 68
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 76
	popq %rdx // 68
	popq %rsi // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
//if begin
	movslq -20(%rbp), %rax // i
	pushq %rax // 60
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 68
	movq $1772, %rax
	movq %rax, %r10
	popq %rax // 60
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 68
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 60
	subq %r10, %rax
	movq %rax, %r10
	popq %rax // 52
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE483
//call printf
	leaq L_.str.124(%rip), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
	jmp END_IF483
ELSE483:
END_IF483:
//}
FOR_INC482:
	movslq -20(%rbp), %rax // i
	pushq %rax // 60
	movslq -20(%rbp), %rax // i
	pushq %rax // 68
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 60
	addq %r10, %rax
	movl %eax, -20(%rbp) // i = rax
	popq %rax // 52
	jmp FOR482
FOR_END482:
//call printf
	leaq L_.str.243(%rip), %rax
	pushq %rax // 60
//call get_type_str
//cast to (Type**)
//cast to (char*)
//cast to (Func**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 68
	movq $152, %rax
	movq %rax, %r10
	popq %rax // 60
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 68
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 60
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 68
	popq %rdi // 60
	subq $4, %rsp // 64
	xorq %rax, %rax
	callq _get_type_str
	addq $4, %rsp // 60
	pushq %rax // 68
//cast to (int*)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 76
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 68
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 76
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 68
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 76
	popq %rdx // 68
	popq %rsi // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
//call print
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $48, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _print
	addq $12, %rsp // 52
//call printf
	leaq L_.str.58(%rip), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
//}
	jmp END_IF481
ELSE481:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 60
	movq $12, %rax
	movq %rax, %r10
	popq %rax // 52
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE484
//{ (2677)
//call printf
	leaq L_.str.244(%rip), %rax
	pushq %rax // 60
	movslq _tab(%rip), %rax
	pushq %rax // 68
	leaq L_.str.65(%rip), %rax
	pushq %rax // 76
	popq %rdx // 68
	popq %rsi // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
	movslq _tab(%rip), %rax
	pushq %rax // 60
	movq $4, %rax
	movq %rax, %r10
	popq %rax // 52
	addq %r10, %rax
	movl %eax, _tab(%rip)
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $96, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	movq %rax, -32(%rbp) // curr = rax
WHILE485:
	movq -32(%rbp), %rax // curr
	cmpq $0, %rax
	je WHILE_END485
//{ (2682)
//call printf
	leaq L_.str.245(%rip), %rax
	pushq %rax // 60
	movslq _tab(%rip), %rax
	pushq %rax // 68
	leaq L_.str.65(%rip), %rax
	pushq %rax // 76
	popq %rdx // 68
	popq %rsi // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
//call print
	movq -32(%rbp), %rax // curr
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _print
	addq $12, %rsp // 52
//call printf
	leaq L_.str.58(%rip), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
//cast to (Node**)
//cast to (char*)
	movq -32(%rbp), %rax // curr
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $80, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	movq %rax, -32(%rbp) // curr = rax
//}
	jmp WHILE485
WHILE_END485:
	movslq _tab(%rip), %rax
	pushq %rax // 60
	movq $4, %rax
	movq %rax, %r10
	popq %rax // 52
	subq %r10, %rax
	movl %eax, _tab(%rip)
//call printf
	leaq L_.str.246(%rip), %rax
	pushq %rax // 60
	movslq _tab(%rip), %rax
	pushq %rax // 68
	leaq L_.str.65(%rip), %rax
	pushq %rax // 76
	popq %rdx // 68
	popq %rsi // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
//}
	jmp END_IF484
ELSE484:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 60
	movq $18, %rax
	movq %rax, %r10
	popq %rax // 52
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE486
//{ (2692)
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $88, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	movq %rax, -40(%rbp) // curr = rax
//if begin
//cast to (int*)
//cast to (char*)
//cast to (Var**)
//cast to (char*)
	movq -40(%rbp), %rax // curr
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	cmpq $0, %rax
	je ELSE487
//call printf
	leaq L_.str.58(%rip), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
	jmp END_IF487
ELSE487:
END_IF487:
//call printf
	leaq L_.str.247(%rip), %rax
	pushq %rax // 60
//call get_type_str
//cast to (Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 68
	movq $120, %rax
	movq %rax, %r10
	popq %rax // 60
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 68
	popq %rdi // 60
	subq $4, %rsp // 64
	xorq %rax, %rax
	callq _get_type_str
	addq $4, %rsp // 60
	pushq %rax // 68
	popq %rsi // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
WHILE488:
	movq -40(%rbp), %rax // curr
	cmpq $0, %rax
	je WHILE_END488
//{ (2699)
//cast to (Type**)
//cast to (char*)
//cast to (Var**)
//cast to (char*)
	movq -40(%rbp), %rax // curr
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	movq %rax, -48(%rbp) // t = rax
WHILE489:
	movq -48(%rbp), %rax // t
	pushq %rax // 60
//cast to (Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 68
	movq $120, %rax
	movq %rax, %r10
	popq %rax // 60
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	movq %rax, %r10
	popq %rax // 52
	cmpq %r10, %rax
	setne %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je WHILE_END489
//{ (2702)
//cast to (Type**)
//cast to (char*)
	movq -48(%rbp), %rax // t
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	movq %rax, -48(%rbp) // t = rax
//call printf
	leaq L_.str.41(%rip), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
//}
	jmp WHILE489
WHILE_END489:
//if begin
//cast to (Node**)
//cast to (char*)
	movq -40(%rbp), %rax // curr
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE490
//call printf
	leaq L_.str.52(%rip), %rax
	pushq %rax // 60
//cast to (char**)
//cast to (char*)
//cast to (Var**)
//cast to (char*)
	movq -40(%rbp), %rax // curr
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 68
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 60
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 68
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 60
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 68
	popq %rsi // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
	jmp END_IF490
ELSE490:
//call print
//cast to (Node**)
//cast to (char*)
	movq -40(%rbp), %rax // curr
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _print
	addq $12, %rsp // 52
END_IF490:
//if begin
//cast to (Node**)
//cast to (char*)
	movq -40(%rbp), %rax // curr
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $88, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	cmpq $0, %rax
	je ELSE491
//call printf
	leaq L_.str.124(%rip), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
	jmp END_IF491
ELSE491:
//call printf
	leaq L_.str.248(%rip), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
END_IF491:
//if begin
//cast to (int*)
//cast to (char*)
//cast to (Var**)
//cast to (char*)
	movq -40(%rbp), %rax // curr
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	cmpq $0, %rax
	je ELSE492
//call printf
	leaq L_.str.58(%rip), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
	jmp END_IF492
ELSE492:
END_IF492:
//cast to (Node**)
//cast to (char*)
	movq -40(%rbp), %rax // curr
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $88, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	movq %rax, -40(%rbp) // curr = rax
//}
	jmp WHILE488
WHILE_END488:
//}
	jmp END_IF486
ELSE486:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 60
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 52
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE493
//{ (2721)
//call printf
	leaq L_.str.249(%rip), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
//if begin
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	cmpq $0, %rax
	je ELSE494
//call print
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _print
	addq $12, %rsp // 52
	jmp END_IF494
ELSE494:
END_IF494:
//call printf
	leaq L_.str.248(%rip), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
//}
	jmp END_IF493
ELSE493:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 60
	movq $9, %rax
	movq %rax, %r10
	popq %rax // 52
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR496
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 60
	movq $10, %rax
	movq %rax, %r10
	popq %rax // 52
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR496:
	cmpq $0, %rax
	je ELSE495
//{ (2728)
//call printf
	leaq L_.str.250(%rip), %rax
	pushq %rax // 60
//call token_type_name
//cast to (int*)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 68
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 60
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 68
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 60
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 68
	popq %rdi // 60
	subq $4, %rsp // 64
	xorq %rax, %rax
	callq _token_type_name
	addq $4, %rsp // 60
	pushq %rax // 68
	popq %rsi // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
//call print
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $56, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _print
	addq $12, %rsp // 52
//call printf
	leaq L_.str.125(%rip), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
//if begin
//cast to (int*)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $48, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 60
	movq $12, %rax
	movq %rax, %r10
	popq %rax // 52
	cmpq %r10, %rax
	setne %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE497
//call printf
	leaq L_.str.245(%rip), %rax
	pushq %rax // 60
	movslq _tab(%rip), %rax
	pushq %rax // 68
	movq $4, %rax
	movq %rax, %r10
	popq %rax // 60
	addq %r10, %rax
	pushq %rax // 68
	leaq L_.str.65(%rip), %rax
	pushq %rax // 76
	popq %rdx // 68
	popq %rsi // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
	jmp END_IF497
ELSE497:
END_IF497:
//call print
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $48, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _print
	addq $12, %rsp // 52
//if begin
//cast to (int*)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $48, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 60
	movq $12, %rax
	movq %rax, %r10
	popq %rax // 52
	cmpq %r10, %rax
	setne %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE498
//call printf
	leaq L_.str.58(%rip), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
	jmp END_IF498
ELSE498:
END_IF498:
//if begin
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $136, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	cmpq $0, %rax
	je ELSE499
//{ (2738)
//call printf
	leaq L_.str.251(%rip), %rax
	pushq %rax // 60
	movslq _tab(%rip), %rax
	pushq %rax // 68
	leaq L_.str.65(%rip), %rax
	pushq %rax // 76
	popq %rdx // 68
	popq %rsi // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
//if begin
//cast to (int*)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $136, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 60
	movq $9, %rax
	movq %rax, %r10
	popq %rax // 52
	cmpq %r10, %rax
	setne %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE500
//{ (2741)
//call printf
	leaq L_.str.58(%rip), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
//if begin
//cast to (int*)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $136, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 60
	movq $12, %rax
	movq %rax, %r10
	popq %rax // 52
	cmpq %r10, %rax
	setne %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE501
//call printf
	leaq L_.str.245(%rip), %rax
	pushq %rax // 60
	movslq _tab(%rip), %rax
	pushq %rax // 68
	movq $4, %rax
	movq %rax, %r10
	popq %rax // 60
	addq %r10, %rax
	pushq %rax // 68
	leaq L_.str.65(%rip), %rax
	pushq %rax // 76
	popq %rdx // 68
	popq %rsi // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
	jmp END_IF501
ELSE501:
END_IF501:
//}
	jmp END_IF500
ELSE500:
END_IF500:
//call print
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $136, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _print
	addq $12, %rsp // 52
//}
	jmp END_IF499
ELSE499:
END_IF499:
//}
	jmp END_IF495
ELSE495:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 60
	movq $11, %rax
	movq %rax, %r10
	popq %rax // 52
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE502
//{ (2750)
//call printf
	leaq L_.str.252(%rip), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
//call print
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $64, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _print
	addq $12, %rsp // 52
//if begin
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $64, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR504
//cast to (int*)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $64, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 60
	movq $18, %rax
	movq %rax, %r10
	popq %rax // 52
	cmpq %r10, %rax
	setne %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR504:
	cmpq $0, %rax
	je ELSE503
//call printf
	leaq L_.str.248(%rip), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
	jmp END_IF503
ELSE503:
END_IF503:
//call printf
	leaq L_.str.253(%rip), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
//call print
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $56, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _print
	addq $12, %rsp // 52
//call printf
	leaq L_.str.254(%rip), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
//call print
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $72, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _print
	addq $12, %rsp // 52
//call printf
	leaq L_.str.125(%rip), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
//if begin
//cast to (int*)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $48, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 60
	movq $12, %rax
	movq %rax, %r10
	popq %rax // 52
	cmpq %r10, %rax
	setne %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE505
//call printf
	leaq L_.str.245(%rip), %rax
	pushq %rax // 60
	movslq _tab(%rip), %rax
	pushq %rax // 68
	movq $4, %rax
	movq %rax, %r10
	popq %rax // 60
	addq %r10, %rax
	pushq %rax // 68
	leaq L_.str.65(%rip), %rax
	pushq %rax // 76
	popq %rdx // 68
	popq %rsi // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
	jmp END_IF505
ELSE505:
END_IF505:
//call print
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $48, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _print
	addq $12, %rsp // 52
//}
	jmp END_IF502
ELSE502:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 60
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 52
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE506
//{ (2765)
//call print
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _print
	addq $12, %rsp // 52
//call printf
	leaq L_.str.52(%rip), %rax
	pushq %rax // 60
//call token_type_name
//cast to (int*)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 68
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 60
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 68
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 60
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 68
	popq %rdi // 60
	subq $4, %rsp // 64
	xorq %rax, %rax
	callq _token_type_name
	addq $4, %rsp // 60
	pushq %rax // 68
	popq %rsi // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
//call printf
	leaq L_.str.52(%rip), %rax
	pushq %rax // 60
//cast to (char**)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 68
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 60
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 68
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 60
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 68
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 60
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 68
	popq %rsi // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
//}
	jmp END_IF506
ELSE506:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 60
	movq $4, %rax
	movq %rax, %r10
	popq %rax // 52
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE507
//call printf
	leaq L_.str.255(%rip), %rax
	pushq %rax // 60
//cast to (long*)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 68
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 60
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 68
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 60
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 68
	popq %rsi // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
	jmp END_IF507
ELSE507:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 60
	movq $2, %rax
	movq %rax, %r10
	popq %rax // 52
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE508
//call printf
	leaq L_.str.52(%rip), %rax
	pushq %rax // 60
//cast to (char**)
//cast to (char*)
//cast to (Var**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 68
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 60
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 68
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 60
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 68
	popq %rsi // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
	jmp END_IF508
ELSE508:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 60
	movq $19, %rax
	movq %rax, %r10
	popq %rax // 52
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE509
//call printf
	leaq L_.str.256(%rip), %rax
	pushq %rax // 60
//cast to (char**)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 68
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 60
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 68
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 60
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 68
	popq %rsi // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
	jmp END_IF509
ELSE509:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 60
	movq $13, %rax
	movq %rax, %r10
	popq %rax // 52
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE510
//{ (2777)
//call printf
	leaq L_.str.257(%rip), %rax
	pushq %rax // 60
//cast to (char**)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 68
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 60
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 68
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 60
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 68
	popq %rsi // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
//for init
	movq $0, %rax
	movl %eax, -52(%rbp) // i = rax
FOR511:
	movslq -52(%rbp), %rax // i
	pushq %rax // 60
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 68
	movq $1768, %rax
	movq %rax, %r10
	popq %rax // 60
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	movq %rax, %r10
	popq %rax // 52
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je FOR_END511
//{ (2780)
//call print
//cast to (Node*[100])
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $168, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movslq -52(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 52
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _print
	addq $12, %rsp // 52
//if begin
	movslq -52(%rbp), %rax // i
	pushq %rax // 60
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 68
	movq $1768, %rax
	movq %rax, %r10
	popq %rax // 60
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 68
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 60
	subq %r10, %rax
	movq %rax, %r10
	popq %rax // 52
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE512
//call printf
	leaq L_.str.124(%rip), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
	jmp END_IF512
ELSE512:
END_IF512:
//}
FOR_INC511:
	movslq -52(%rbp), %rax // i
	pushq %rax // 60
	movslq -52(%rbp), %rax // i
	pushq %rax // 68
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 60
	addq %r10, %rax
	movl %eax, -52(%rbp) // i = rax
	popq %rax // 52
	jmp FOR511
FOR_END511:
//call printf
	leaq L_.str.258(%rip), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
//}
	jmp END_IF510
ELSE510:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 60
	movq $17, %rax
	movq %rax, %r10
	popq %rax // 52
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR514
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 60
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 52
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR514:
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR515
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 60
	movq $7, %rax
	movq %rax, %r10
	popq %rax // 52
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR515:
	cmpq $0, %rax
	je ELSE513
//{ (2788)
//call printf
	leaq L_.str.259(%rip), %rax
	pushq %rax // 60
//cast to (int*)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 68
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 60
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 68
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 60
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 68
	popq %rsi // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
//call print
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _print
	addq $12, %rsp // 52
//call printf
	leaq L_.str.258(%rip), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
//}
	jmp END_IF513
ELSE513:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 60
	movq $22, %rax
	movq %rax, %r10
	popq %rax // 52
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE516
//{ (2794)
//call printf
	leaq L_.str.260(%rip), %rax
	pushq %rax // 60
//call get_type_str
//cast to (Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 68
	movq $144, %rax
	movq %rax, %r10
	popq %rax // 60
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 68
	popq %rdi // 60
	subq $4, %rsp // 64
	xorq %rax, %rax
	callq _get_type_str
	addq $4, %rsp // 60
	pushq %rax // 68
	popq %rsi // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
//call print
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _print
	addq $12, %rsp // 52
//call printf
	leaq L_.str.258(%rip), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
//}
	jmp END_IF516
ELSE516:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 60
	movq $5, %rax
	movq %rax, %r10
	popq %rax // 52
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE517
//{ (2800)
//call print
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _print
	addq $12, %rsp // 52
//call printf
	leaq L_.str.261(%rip), %rax
	pushq %rax // 60
//call token_type_name
//cast to (int*)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 68
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 60
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 68
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 60
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 68
	popq %rdi // 60
	subq $4, %rsp // 64
	xorq %rax, %rax
	callq _token_type_name
	addq $4, %rsp // 60
	pushq %rax // 68
	popq %rsi // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
//call print
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _print
	addq $12, %rsp // 52
//}
	jmp END_IF517
ELSE517:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 60
	movq $6, %rax
	movq %rax, %r10
	popq %rax // 52
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE518
//{ (2806)
//call print
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _print
	addq $12, %rsp // 52
//call printf
	leaq L_.str.261(%rip), %rax
	pushq %rax // 60
//call token_type_name
//cast to (int*)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 68
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 60
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 68
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 60
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 68
	popq %rdi // 60
	subq $4, %rsp // 64
	xorq %rax, %rax
	callq _token_type_name
	addq $4, %rsp // 60
	pushq %rax // 68
	popq %rsi // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
//call print
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _print
	addq $12, %rsp // 52
//}
	jmp END_IF518
ELSE518:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 60
	movq $20, %rax
	movq %rax, %r10
	popq %rax // 52
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE519
//call printf
	leaq L_.str.262(%rip), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
	jmp END_IF519
ELSE519:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 60
	movq $21, %rax
	movq %rax, %r10
	popq %rax // 52
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE520
//call printf
	leaq L_.str.263(%rip), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
	jmp END_IF520
ELSE520:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 60
	movq $14, %rax
	movq %rax, %r10
	popq %rax // 52
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE521
//{ (2816)
//if begin
//cast to (int*)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 60
	movq $33, %rax
	movq %rax, %r10
	popq %rax // 52
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE522
//{ (2818)
//call printf
	leaq L_.str.264(%rip), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
//call print
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _print
	addq $12, %rsp // 52
//call printf
	leaq L_.str.258(%rip), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
//}
	jmp END_IF522
ELSE522:
//{ (2824)
//call print
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _print
	addq $12, %rsp // 52
//call printf
	leaq L_.str.9(%rip), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
//}
END_IF522:
//}
	jmp END_IF521
ELSE521:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 60
	movq $23, %rax
	movq %rax, %r10
	popq %rax // 52
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE523
//{ (2830)
//call printf
	leaq L_.str.265(%rip), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
//call print
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $56, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _print
	addq $12, %rsp // 52
//call printf
	leaq L_.str.266(%rip), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
//call print
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _print
	addq $12, %rsp // 52
//call printf
	leaq L_.str.267(%rip), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
//call print
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _print
	addq $12, %rsp // 52
//call printf
	leaq L_.str.258(%rip), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
//}
	jmp END_IF523
ELSE523:
END_IF523:
END_IF521:
END_IF520:
END_IF519:
END_IF518:
END_IF517:
END_IF516:
END_IF513:
END_IF510:
END_IF509:
END_IF508:
END_IF507:
END_IF506:
END_IF502:
END_IF495:
END_IF493:
END_IF486:
END_IF484:
END_IF481:
END_IF479:
END_IF477:
//if begin
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $104, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	cmpq $0, %rax
	je ELSE524
//{ (2840)
//call printf
	leaq L_.str.124(%rip), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
//call print
//cast to (Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 60
	movq $104, %rax
	movq %rax, %r10
	popq %rax // 52
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _print
	addq $12, %rsp // 52
//}
	jmp END_IF524
ELSE524:
END_IF524:
//}
	addq $52, %rsp // 0
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

//char* read_entire_file(char* name)
_read_entire_file:
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp // 32
	movq %rdi, -8(%rbp) //name
//{ (2848)
//cast to (char*)
	movq $0, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq %rax, -16(%rbp) // buffer = rax
//call fopen
	movq -8(%rbp), %rax // name
	pushq %rax // 40
	leaq L_.str.268(%rip), %rax
	pushq %rax // 48
	popq %rsi // 40
	popq %rdi // 32
	subq $0, %rsp // 32
	xorq %rax, %rax
	callq _fopen
	addq $0, %rsp // 32
	movq %rax, -32(%rbp) // file = rax
//if begin
	movq -32(%rbp), %rax // file
	cmpq $0, %rax
	je ELSE525
//{ (2853)
//call fseek
	movq -32(%rbp), %rax // file
	pushq %rax // 40
	movq $0, %rax
	pushq %rax // 48
	movq $2, %rax
	pushq %rax // 56
	popq %rdx // 48
	popq %rsi // 40
	popq %rdi // 32
	subq $0, %rsp // 32
	xorq %rax, %rax
	callq _fseek
	addq $0, %rsp // 32
//call ftell
	movq -32(%rbp), %rax // file
	pushq %rax // 40
	popq %rdi // 32
	subq $0, %rsp // 32
	xorq %rax, %rax
	callq _ftell
	addq $0, %rsp // 32
	movq %rax, -24(%rbp) // length = rax
//call fseek
	movq -32(%rbp), %rax // file
	pushq %rax // 40
	movq $0, %rax
	pushq %rax // 48
	movq $0, %rax
	pushq %rax // 56
	popq %rdx // 48
	popq %rsi // 40
	popq %rdi // 32
	subq $0, %rsp // 32
	xorq %rax, %rax
	callq _fseek
	addq $0, %rsp // 32
//cast to (char*)
//call malloc
	movq -24(%rbp), %rax // length
	pushq %rax // 40
//cast to (long)
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 32
	addq %r10, %rax
	pushq %rax // 40
	popq %rdi // 32
	subq $0, %rsp // 32
	xorq %rax, %rax
	callq _malloc
	addq $0, %rsp // 32
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq %rax, -16(%rbp) // buffer = rax
//if begin
	movq -16(%rbp), %rax // buffer
	cmpq $0, %rax
	je ELSE526
//call fread
	movq -16(%rbp), %rax // buffer
	pushq %rax // 40
	movq $1, %rax
	pushq %rax // 48
	movq -24(%rbp), %rax // length
	pushq %rax // 56
	movq -32(%rbp), %rax // file
	pushq %rax // 64
	popq %rcx // 56
	popq %rdx // 48
	popq %rsi // 40
	popq %rdi // 32
	subq $0, %rsp // 32
	xorq %rax, %rax
	callq _fread
	addq $0, %rsp // 32
	jmp END_IF526
ELSE526:
END_IF526:
//cast to (char)
	movq $0, %rax
	movsbq %al, %r10
	movq %r10, %rax
	pushq %rax // 40
	movq -16(%rbp), %rax // buffer
	pushq %rax // 48
	movq -24(%rbp), %rax // length
	movq %rax, %r10
	popq %rax // 40
	imulq $1, %r10
	addq %r10, %rax
	popq %r10 // 32
	movb %r10b, (%rax)
//call fclose
	movq -32(%rbp), %rax // file
	pushq %rax // 40
	popq %rdi // 32
	subq $0, %rsp // 32
	xorq %rax, %rax
	callq _fclose
	addq $0, %rsp // 32
//}
	jmp END_IF525
ELSE525:
END_IF525:
	movq -16(%rbp), %rax // buffer
	movq %rbp, %rsp
	popq %rbp
	ret
//}
	addq $32, %rsp // 0
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

.globl	_main
//int main()
_main:
	pushq %rbp
	movq %rsp, %rbp
	subq $40, %rsp // 40
//{ (2867)
	leaq L_.str.269(%rip), %rax
	movq %rax, _filename(%rip)
//call new_type
	movq $6, %rax
	pushq %rax // 48
	popq %rdi // 40
	subq $8, %rsp // 48
	xorq %rax, %rax
	callq _new_type
	addq $8, %rsp // 40
	movq %rax, _type_long(%rip)
//call new_type
	movq $0, %rax
	pushq %rax // 48
	popq %rdi // 40
	subq $8, %rsp // 48
	xorq %rax, %rax
	callq _new_type
	addq $8, %rsp // 40
	movq %rax, _type_int(%rip)
//call new_type
	movq $4, %rax
	pushq %rax // 48
	popq %rdi // 40
	subq $8, %rsp // 48
	xorq %rax, %rax
	callq _new_type
	addq $8, %rsp // 40
	movq %rax, _type_short(%rip)
//call new_type
	movq $5, %rax
	pushq %rax // 48
	popq %rdi // 40
	subq $8, %rsp // 48
	xorq %rax, %rax
	callq _new_type
	addq $8, %rsp // 40
	movq %rax, _type_char(%rip)
//call new_type
	movq $2, %rax
	pushq %rax // 48
	popq %rdi // 40
	subq $8, %rsp // 48
	xorq %rax, %rax
	callq _new_type
	addq $8, %rsp // 40
	movq %rax, _type_void(%rip)
//call read_entire_file
	movq _filename(%rip), %rax // filename
	pushq %rax // 48
	popq %rdi // 40
	subq $8, %rsp // 48
	xorq %rax, %rax
	callq _read_entire_file
	addq $8, %rsp // 40
	movq %rax, _program_str(%rip)
//call parse
	movq _program_str(%rip), %rax // program_str
	pushq %rax // 48
	popq %rdi // 40
	subq $8, %rsp // 48
	xorq %rax, %rax
	callq _parse
	addq $8, %rsp // 40
	movq %rax, -8(%rbp) // node = rax
//call strdup
	movq _filename(%rip), %rax // filename
	pushq %rax // 48
	popq %rdi // 40
	subq $8, %rsp // 48
	xorq %rax, %rax
	callq _strdup
	addq $8, %rsp // 40
	movq %rax, -16(%rbp) // out_name = rax
//cast to (char)
	movq $115, %rax
	movsbq %al, %r10
	movq %r10, %rax
	pushq %rax // 48
	movq -16(%rbp), %rax // out_name
	pushq %rax // 56
//call strlen
	movq -16(%rbp), %rax // out_name
	pushq %rax // 64
	popq %rdi // 56
	subq $8, %rsp // 64
	xorq %rax, %rax
	callq _strlen
	addq $8, %rsp // 56
	pushq %rax // 64
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 56
	subq %r10, %rax
	movq %rax, %r10
	popq %rax // 48
	imulq $1, %r10
	addq %r10, %rax
	popq %r10 // 40
	movb %r10b, (%rax)
//call fopen
	movq -16(%rbp), %rax // out_name
	pushq %rax // 48
	leaq L_.str.77(%rip), %rax
	pushq %rax // 56
	popq %rsi // 48
	popq %rdi // 40
	subq $8, %rsp // 48
	xorq %rax, %rax
	callq _fopen
	addq $8, %rsp // 40
	movq %rax, _f(%rip)
//call print
	movq -8(%rbp), %rax // node
	pushq %rax // 48
	popq %rdi // 40
	subq $8, %rsp // 48
	xorq %rax, %rax
	callq _print
	addq $8, %rsp // 40
//call gen
	movq -8(%rbp), %rax // node
	pushq %rax // 48
	popq %rdi // 40
	subq $8, %rsp // 48
	xorq %rax, %rax
	callq _gen
	addq $8, %rsp // 40
//call out
	leaq L_.str.270(%rip), %rax
	pushq %rax // 48
	popq %rdi // 40
	subq $8, %rsp // 48
	xorq %rax, %rax
	callq _out
	addq $8, %rsp // 40
//for init
	movq $0, %rax
	movl %eax, -20(%rbp) // i = rax
FOR527:
	movslq -20(%rbp), %rax // i
	pushq %rax // 48
//cast to (int*)
//cast to (char*)
	movq _curr_scope(%rip), %rax // curr_scope
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 56
	movq $832, %rax
	movq %rax, %r10
	popq %rax // 48
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	movq %rax, %r10
	popq %rax // 40
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je FOR_END527
//{ (2898)
//cast to (Node**)
//cast to (char*)
//cast to (Var*[100])
//cast to (char*)
	movq _curr_scope(%rip), %rax // curr_scope
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 48
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 40
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 48
	movslq -20(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 40
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 48
	movq $40, %rax
	movq %rax, %r10
	popq %rax // 40
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	movq %rax, -32(%rbp) // decl = rax
//if begin
//cast to (Node**)
//cast to (char*)
	movq -32(%rbp), %rax // decl
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 48
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 40
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR529
//cast to (int*)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -32(%rbp), %rax // decl
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 48
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 40
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 48
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 40
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 48
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 40
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 48
	movq $4, %rax
	movq %rax, %r10
	popq %rax // 40
	cmpq %r10, %rax
	setne %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR529:
	cmpq $0, %rax
	je ELSE528
//{ (2902)
//call printf
	leaq L_.str.271(%rip), %rax
	pushq %rax // 48
//cast to (char**)
//cast to (char*)
//cast to (Var**)
//cast to (char*)
	movq -32(%rbp), %rax // decl
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 56
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 48
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 56
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 48
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 56
//cast to (int*)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -32(%rbp), %rax // decl
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 64
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 56
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 64
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 56
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 64
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 56
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 64
	popq %rdx // 56
	popq %rsi // 48
	popq %rdi // 40
	subq $8, %rsp // 48
	xorq %rax, %rax
	callq _printf
	addq $8, %rsp // 40
//call error_token
//cast to (Token**)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -32(%rbp), %rax // decl
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 48
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 40
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 48
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 40
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 48
	leaq L_.str.272(%rip), %rax
	pushq %rax // 56
	popq %rsi // 48
	popq %rdi // 40
	subq $8, %rsp // 48
	xorq %rax, %rax
	callq _error_token
	addq $8, %rsp // 40
//}
	jmp END_IF528
ELSE528:
END_IF528:
//if begin
//cast to (int*)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
//cast to (Var**)
//cast to (char*)
	movq -32(%rbp), %rax // decl
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 48
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 40
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 48
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 40
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 48
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 40
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 48
	movq $3, %rax
	movq %rax, %r10
	popq %rax // 40
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE530
//{ (2907)
//call out
	leaq L_.str.273(%rip), %rax
	pushq %rax // 48
//cast to (char**)
//cast to (char*)
//cast to (Var**)
//cast to (char*)
	movq -32(%rbp), %rax // decl
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 56
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 48
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 56
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 48
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 56
//cast to (int*)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
//cast to (Var**)
//cast to (char*)
	movq -32(%rbp), %rax // decl
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 64
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 56
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 64
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 56
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 64
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 56
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 64
//cast to (int*)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
//cast to (Var**)
//cast to (char*)
	movq -32(%rbp), %rax // decl
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	movq %rax, %r10
	popq %rax // 56
	imulq %r10, %rax
	pushq %rax // 64
	movq $4, %rax
	pushq %rax // 72
	popq %rcx // 64
	popq %rdx // 56
	popq %rsi // 48
	popq %rdi // 40
	subq $8, %rsp // 48
	xorq %rax, %rax
	callq _out
	addq $8, %rsp // 40
//}
	jmp END_IF530
ELSE530:
//{ (2912)
//call out
	leaq L_.str.274(%rip), %rax
	pushq %rax // 48
//cast to (char**)
//cast to (char*)
//cast to (Var**)
//cast to (char*)
	movq -32(%rbp), %rax // decl
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 56
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 48
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 56
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 48
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 56
	popq %rsi // 48
	popq %rdi // 40
	subq $8, %rsp // 48
	xorq %rax, %rax
	callq _out
	addq $8, %rsp // 40
//call log2_int
//cast to (int*)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
//cast to (Var**)
//cast to (char*)
	movq -32(%rbp), %rax // decl
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 48
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 40
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 48
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 40
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 48
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 40
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 48
	popq %rdi // 40
	subq $8, %rsp // 48
	xorq %rax, %rax
	callq _log2_int
	addq $8, %rsp // 40
	movl %eax, -36(%rbp) // align = rax
//if begin
	movslq -36(%rbp), %rax // align
	cmpq $0, %rax
	je ELSE531
//call out
	leaq L_.str.275(%rip), %rax
	pushq %rax // 48
	movslq -36(%rbp), %rax // align
	pushq %rax // 56
	popq %rsi // 48
	popq %rdi // 40
	subq $8, %rsp // 48
	xorq %rax, %rax
	callq _out
	addq $8, %rsp // 40
	jmp END_IF531
ELSE531:
END_IF531:
//call fprintf
	movq _f(%rip), %rax // f
	pushq %rax // 48
	leaq L_.str.126(%rip), %rax
	pushq %rax // 56
//cast to (char**)
//cast to (char*)
//cast to (Var*[100])
//cast to (char*)
	movq _curr_scope(%rip), %rax // curr_scope
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 64
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 56
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 64
	movslq -20(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 56
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 64
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 56
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 64
	popq %rdx // 56
	popq %rsi // 48
	popq %rdi // 40
	subq $8, %rsp // 48
	xorq %rax, %rax
	callq _fprintf
	addq $8, %rsp // 40
//call out
	leaq L_.str.276(%rip), %rax
	pushq %rax // 48
//call get_size_name
//cast to (int*)
//cast to (char*)
//cast to (Type**)
//cast to (char*)
//cast to (Var*[100])
//cast to (char*)
	movq _curr_scope(%rip), %rax // curr_scope
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 56
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 48
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 56
	movslq -20(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 48
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 56
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 48
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 56
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 48
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 56
	popq %rdi // 48
	subq $0, %rsp // 48
	xorq %rax, %rax
	callq _get_size_name
	addq $0, %rsp // 48
	pushq %rax // 56
//cast to (Node**)
//cast to (char*)
	movq -32(%rbp), %rax // decl
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 64
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 56
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je QUES532
//cast to (long)
	movq $0, %rax
	jmp QUES_END532
QUES532:
//cast to (long*)
//cast to (char*)
//cast to (Token**)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
//cast to (Node**)
//cast to (char*)
	movq -32(%rbp), %rax // decl
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 64
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 56
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 64
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 56
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 64
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 56
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 64
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 56
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
QUES_END532:
	pushq %rax // 64
	popq %rdx // 56
	popq %rsi // 48
	popq %rdi // 40
	subq $8, %rsp // 48
	xorq %rax, %rax
	callq _out
	addq $8, %rsp // 40
//}
END_IF530:
//}
FOR_INC527:
	movslq -20(%rbp), %rax // i
	pushq %rax // 48
	movslq -20(%rbp), %rax // i
	pushq %rax // 56
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 48
	addq %r10, %rax
	movl %eax, -20(%rbp) // i = rax
	popq %rax // 40
	jmp FOR527
FOR_END527:
//for init
	movq $0, %rax
	movl %eax, -40(%rbp) // i = rax
FOR533:
	movslq -40(%rbp), %rax // i
	pushq %rax // 48
	movslq _strings_literal_count(%rip), %rax
	movq %rax, %r10
	popq %rax // 40
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je FOR_END533
//{ (2924)
//call fprintf
	movq _f(%rip), %rax // f
	pushq %rax // 48
	leaq L_.str.277(%rip), %rax
	pushq %rax // 56
	movslq -40(%rbp), %rax // i
	pushq %rax // 64
	popq %rdx // 56
	popq %rsi // 48
	popq %rdi // 40
	subq $8, %rsp // 48
	xorq %rax, %rax
	callq _fprintf
	addq $8, %rsp // 40
//call out
	leaq L_.str.278(%rip), %rax
	pushq %rax // 48
	movq _strings_literal@GOTPCREL(%rip), %rax
	pushq %rax // 56
	movslq -40(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 48
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 56
	popq %rsi // 48
	popq %rdi // 40
	subq $8, %rsp // 48
	xorq %rax, %rax
	callq _out
	addq $8, %rsp // 40
//}
FOR_INC533:
	movslq -40(%rbp), %rax // i
	pushq %rax // 48
	movslq -40(%rbp), %rax // i
	pushq %rax // 56
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 48
	addq %r10, %rax
	movl %eax, -40(%rbp) // i = rax
	popq %rax // 40
	jmp FOR533
FOR_END533:
//}
	addq $40, %rsp // 0
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

	.section	__DATA,__data
	.globl _filename
	.p2align 3
_filename:
	.quad 0

	.globl _program_str
	.p2align 3
_program_str:
	.quad 0

	.globl _f
	.p2align 3
_f:
	.quad 0

	.comm _types,20560000,4

	.globl _type_count
	.p2align 2
_type_count:
	.long 0

	.comm _types_declared,8000,4

	.globl _types_declared_count
	.p2align 2
_types_declared_count:
	.long 0

	.comm _strings_literal,80000,4

	.globl _strings_literal_count
	.p2align 2
_strings_literal_count:
	.long 0

	.globl _type_long
	.p2align 3
_type_long:
	.quad 0

	.globl _type_int
	.p2align 3
_type_int:
	.quad 0

	.globl _type_short
	.p2align 3
_type_short:
	.quad 0

	.globl _type_char
	.p2align 3
_type_char:
	.quad 0

	.globl _type_void
	.p2align 3
_type_void:
	.quad 0

	.comm _funcs,160000,4

	.globl _func_count
	.p2align 2
_func_count:
	.long 0

	.comm _scopes,84000000,4

	.globl _scope_count
	.p2align 2
_scope_count:
	.long 0

	.globl _curr_scope
	.p2align 3
_curr_scope:
	.quad 0

	.comm _tokens,4000000,4

	.globl _ct
	.p2align 2
_ct:
	.long 0

	.comm __nodes,178400000,4

	.globl __curr_node
	.p2align 2
__curr_node:
	.long 0

	.comm _vars,480000,4

	.globl _var_count
	.p2align 2
_var_count:
	.long 0

	.comm _enums,160000,4

	.globl _enum_count
	.p2align 2
_enum_count:
	.long 0

	.globl _curr_func
	.p2align 3
_curr_func:
	.quad 0

	.comm _multi_char_tokens_type,320,4

	.comm _keywords,480,4

	.comm _token_type_name_c,2040,4

	.globl _multi_char_token_count
	.p2align 2
_multi_char_token_count:
	.long 0

	.globl _keyword_count
	.p2align 2
_keyword_count:
	.long 0

	.globl _curr_label
	.p2align 2
_curr_label:
	.long 0

	.globl _loop_counter
	.p2align 2
_loop_counter:
	.long 0

	.globl _curr_loop_label
	.p2align 2
_curr_loop_label:
	.long 0

	.globl _curr_loop_is_for
	.p2align 2
_curr_loop_is_for:
	.long 0

	.globl _stack_size
	.p2align 2
_stack_size:
	.long 0

	.globl _tab
	.p2align 2
_tab:
	.long 0

L_.str.0:
	.asciz "int"
L_.str.1:
	.asciz "identifier"
L_.str.2:
	.asciz "string"
L_.str.3:
	.asciz "=="
L_.str.4:
	.asciz "!="
L_.str.5:
	.asciz "<="
L_.str.6:
	.asciz ">="
L_.str.7:
	.asciz "&&"
L_.str.8:
	.asciz "||"
L_.str.9:
	.asciz "++"
L_.str.10:
	.asciz "--"
L_.str.11:
	.asciz "+="
L_.str.12:
	.asciz "-="
L_.str.13:
	.asciz "*="
L_.str.14:
	.asciz "/="
L_.str.15:
	.asciz "->"
L_.str.16:
	.asciz "return"
L_.str.17:
	.asciz "for"
L_.str.18:
	.asciz "while"
L_.str.19:
	.asciz "if"
L_.str.20:
	.asciz "else"
L_.str.21:
	.asciz "void"
L_.str.22:
	.asciz "char"
L_.str.23:
	.asciz "short"
L_.str.24:
	.asciz "long"
L_.str.25:
	.asciz "unsigned"
L_.str.26:
	.asciz "signed"
L_.str.27:
	.asciz "break"
L_.str.28:
	.asciz "continue"
L_.str.29:
	.asciz "sizeof"
L_.str.30:
	.asciz "struct"
L_.str.31:
	.asciz "union"
L_.str.32:
	.asciz "enum"
L_.str.33:
	.asciz "unclosed comment"
L_.str.34:
	.asciz "missing terminating ' character"
L_.str.35:
	.asciz "missing terminating \" character"
L_.str.36:
	.asciz "+-*/%()=;,<>{}&[]?:.!"
L_.str.37:
	.asciz "unknown token `%c`"
L_.str.38:
	.asciz "redeclaration of variable \"%s\"\n"
L_.str.39:
	.asciz "type with size 0?"
L_.str.40:
	.asciz "expected `%s`"
L_.str.41:
	.asciz "*"
L_.str.42:
	.asciz "[%d]"
L_.str.43:
	.asciz "unknown"
L_.str.44:
	.asciz "invalid operand for '%s' operator"
L_.str.45:
	.asciz "invalid operand for '&'"
L_.str.46:
	.asciz "derefrencing a non-pointer"
L_.str.47:
	.asciz "derefrencing a void pointer"
L_.str.48:
	.asciz "invalid operand for '-'"
L_.str.49:
	.asciz "invalid operands to binary expression ('%s' and '%s')"
L_.str.50:
	.asciz "ASSERT"
L_.str.51:
	.asciz "enum "
L_.str.52:
	.asciz "%s"
L_.str.53:
	.asciz "non-name"
L_.str.54:
	.asciz ":\n"
L_.str.55:
	.asciz "\t%s"
L_.str.56:
	.asciz " = %lld"
L_.str.57:
	.asciz ","
L_.str.58:
	.asciz "\n"
L_.str.59:
	.asciz "empty structs are not handled yet"
L_.str.60:
	.asciz "expected a function or variable declaration"
L_.str.61:
	.asciz "unknown type"
L_.str.62:
	.asciz "struct %s: (size=%d, align=%d)\n"
L_.str.63:
	.asciz "\t[%d padding]\n"
L_.str.64:
	.asciz "\t%s: %*s%s\n"
L_.str.65:
	.asciz ""
L_.str.66:
	.asciz "invalid type"
L_.str.67:
	.asciz "variable type can't be void"
L_.str.68:
	.asciz "invalid initiliazer"
L_.str.69:
	.asciz "expression is not assignable"
L_.str.70:
	.asciz "expected struct pointer"
L_.str.71:
	.asciz "expected struct type"
L_.str.72:
	.asciz "undeclared struct member"
L_.str.73:
	.asciz "undeclared function \"%s\""
L_.str.74:
	.asciz "undeclared variable `%s`\n"
L_.str.75:
	.asciz "expected an expression"
L_.str.76:
	.asciz "b"
L_.str.77:
	.asciz "w"
L_.str.78:
	.asciz "l"
L_.str.79:
	.asciz "q"
L_.str.80:
	.asciz "byte"
L_.str.81:
	.asciz "quad"
L_.str.82:
	.asciz "al"
L_.str.83:
	.asciz "ax"
L_.str.84:
	.asciz "eax"
L_.str.85:
	.asciz "rax"
L_.str.86:
	.asciz "dh"
L_.str.87:
	.asciz "dx"
L_.str.88:
	.asciz "edx"
L_.str.89:
	.asciz "rdx"
L_.str.90:
	.asciz "ch"
L_.str.91:
	.asciz "cx"
L_.str.92:
	.asciz "ecx"
L_.str.93:
	.asciz "rcx"
L_.str.94:
	.asciz "dil"
L_.str.95:
	.asciz "di"
L_.str.96:
	.asciz "edi"
L_.str.97:
	.asciz "rdi"
L_.str.98:
	.asciz "sil"
L_.str.99:
	.asciz "si"
L_.str.100:
	.asciz "esi"
L_.str.101:
	.asciz "rsi"
L_.str.102:
	.asciz "r8b"
L_.str.103:
	.asciz "r8w"
L_.str.104:
	.asciz "r8d"
L_.str.105:
	.asciz "r8"
L_.str.106:
	.asciz "r9b"
L_.str.107:
	.asciz "r9w"
L_.str.108:
	.asciz "r9d"
L_.str.109:
	.asciz "r9"
L_.str.110:
	.asciz "r10b"
L_.str.111:
	.asciz "r10w"
L_.str.112:
	.asciz "r10d"
L_.str.113:
	.asciz "r10"
L_.str.114:
	.asciz "r11b"
L_.str.115:
	.asciz "r11w"
L_.str.116:
	.asciz "r11d"
L_.str.117:
	.asciz "r11"
L_.str.118:
	.asciz "pushq %%%s // %d"
L_.str.119:
	.asciz "popq %%%s // %d"
L_.str.120:
	.asciz "main"
L_.str.121:
	.asciz ".globl\t_main\n"
L_.str.122:
	.asciz "//%s %s("
L_.str.123:
	.asciz "%s %s"
L_.str.124:
	.asciz ", "
L_.str.125:
	.asciz ")\n"
L_.str.126:
	.asciz "_%s:\n"
L_.str.127:
	.asciz "pushq %%rbp"
L_.str.128:
	.asciz "movq %%rsp, %%rbp"
L_.str.129:
	.asciz "subq $%d, %%rsp // %d"
L_.str.130:
	.asciz "mov%s %%%s, -%d(%%rbp) //%s"
L_.str.131:
	.asciz "movq %d(%%rbp), %%rax"
L_.str.132:
	.asciz "mov%s %%%s, -%d(%%rbp) // %s"
L_.str.133:
	.asciz "addq $%d, %%rsp // %d"
L_.str.134:
	.asciz "movq $0, %%rax"
L_.str.135:
	.asciz "movq %%rbp, %%rsp"
L_.str.136:
	.asciz "popq %%rbp"
L_.str.137:
	.asciz "ret\n"
L_.str.138:
	.asciz "//{ (%d)\n"
L_.str.139:
	.asciz "//}\n"
L_.str.140:
	.asciz "ret"
L_.str.141:
	.asciz "//if begin\n"
L_.str.142:
	.asciz "cmpq $0, %%rax"
L_.str.143:
	.asciz "je ELSE%d"
L_.str.144:
	.asciz "jmp END_IF%d"
L_.str.145:
	.asciz "ELSE%d:\n"
L_.str.146:
	.asciz "END_IF%d:\n"
L_.str.147:
	.asciz "WHILE%d:\n"
L_.str.148:
	.asciz "je WHILE_END%d"
L_.str.149:
	.asciz "jmp WHILE%d"
L_.str.150:
	.asciz "WHILE_END%d:\n"
L_.str.151:
	.asciz "//for init\n"
L_.str.152:
	.asciz "FOR%d:\n"
L_.str.153:
	.asciz "je FOR_END%d"
L_.str.154:
	.asciz "FOR_INC%d:\n"
L_.str.155:
	.asciz "jmp FOR%d"
L_.str.156:
	.asciz "FOR_END%d:\n"
L_.str.157:
	.asciz "movabsq $%lld, %%rax"
L_.str.158:
	.asciz "movq $%lld, %%rax"
L_.str.159:
	.asciz "leaq L_.str.%d(%%rip), %%rax"
L_.str.160:
	.asciz "movq _%s@GOTPCREL(%%rip), %%rax"
L_.str.161:
	.asciz "movq %%rbp, %%rax // %s"
L_.str.162:
	.asciz "subq $%d, %%rax"
L_.str.163:
	.asciz "leaq _%s(%%rip), %%rax"
L_.str.164:
	.asciz "movz%sq _%s(%%rip), %%rax // %s"
L_.str.165:
	.asciz "mov%s _%s(%%rip), %%%s // %s"
L_.str.166:
	.asciz "movs%sq _%s(%%rip), %%rax"
L_.str.167:
	.asciz "movq _%s(%%rip), %%rax"
L_.str.168:
	.asciz "movz%sq -%d(%%rbp), %%rax // %s"
L_.str.169:
	.asciz "mov%s -%d(%%rbp), %%%s // %s"
L_.str.170:
	.asciz "movs%sq -%d(%%rbp), %%rax // %s"
L_.str.171:
	.asciz "movq -%d(%%rbp), %%rax // %s"
L_.str.172:
	.asciz "//%.*s"
L_.str.173:
	.asciz "movq %%rax, %%r12"
L_.str.174:
	.asciz "cmpq %%r12, %%rax"
L_.str.175:
	.asciz "je ASSERT_OK%d"
L_.str.176:
	.asciz "movq $%d, %%rdi"
L_.str.177:
	.asciz "movq %%r12, %%rsi"
L_.str.178:
	.asciz "movq %%rax, %%rdx"
L_.str.179:
	.asciz "callq _error"
L_.str.180:
	.asciz "ASSERT_OK%d:\n"
L_.str.181:
	.asciz "//call %s\n"
L_.str.182:
	.asciz "xorq %%rax, %%rax"
L_.str.183:
	.asciz "callq _%s"
L_.str.184:
	.asciz "movq %%rbp, %%rax // &%s"
L_.str.185:
	.asciz "dereferencing a non-pointer lvalue"
L_.str.186:
	.asciz "movs%sq (%%rax), %%rax"
L_.str.187:
	.asciz "movq (%%rax), %%rax"
L_.str.188:
	.asciz "negating a pointer"
L_.str.189:
	.asciz "xorq %%r10, %%r10"
L_.str.190:
	.asciz "subq %%rax, %%r10"
L_.str.191:
	.asciz "movq %%r10, %%rax"
L_.str.192:
	.asciz "//cast to (%s)\n"
L_.str.193:
	.asciz "movs%sq %%%s, %%r10"
L_.str.194:
	.asciz "mov%s %%%s, %%%s"
L_.str.195:
	.asciz "movs%sq %%%s, %%rax"
L_.str.196:
	.asciz "movq $%d, %%rax"
L_.str.197:
	.asciz "j%se AND_OR%d"
L_.str.198:
	.asciz "n"
L_.str.199:
	.asciz "setne %%al"
L_.str.200:
	.asciz "movzbq %%al, %%rax"
L_.str.201:
	.asciz "AND_OR%d:\n"
L_.str.202:
	.asciz "movq %%rax, %%r10"
L_.str.203:
	.asciz "imulq $%d, %%r10"
L_.str.204:
	.asciz "imulq $%d, %%rax"
L_.str.205:
	.asciz "addq %%r10, %%rax"
L_.str.206:
	.asciz "subq %%r10, %%rax"
L_.str.207:
	.asciz "imulq %%r10, %%rax"
L_.str.208:
	.asciz "cqto"
L_.str.209:
	.asciz "idivq %%r10"
L_.str.210:
	.asciz "xorq %%rdx, %%rdx"
L_.str.211:
	.asciz "divq %%r10"
L_.str.212:
	.asciz "movq %%rdx, %%rax"
L_.str.213:
	.asciz "e"
L_.str.214:
	.asciz "ne"
L_.str.215:
	.asciz "g"
L_.str.216:
	.asciz "le"
L_.str.217:
	.asciz "ge"
L_.str.218:
	.asciz "cmpq %%r10, %%rax"
L_.str.219:
	.asciz "set%s %%al"
L_.str.220:
	.asciz "andb $1, %%al"
L_.str.221:
	.asciz "movq $%d, %%r10"
L_.str.222:
	.asciz "movq %%rax, %%rdi"
L_.str.223:
	.asciz "movq $%d, %%rdx"
L_.str.224:
	.asciz "callq _memcpy"
L_.str.225:
	.asciz "mov%s %%%s, (%%rax)"
L_.str.226:
	.asciz "array is constant"
L_.str.227:
	.asciz "mov%s %%%s, _%s(%%rip)"
L_.str.228:
	.asciz "movq %%rbp, %%rdi"
L_.str.229:
	.asciz "subq $%d, %%rdi"
L_.str.230:
	.asciz "movq %%rax, %%rsi"
L_.str.231:
	.asciz "mov%s %%%s, -%d(%%rbp) // %s = rax"
L_.str.232:
	.asciz "'continue' statement not in loop statement"
L_.str.233:
	.asciz "jmp FOR_INC%d"
L_.str.234:
	.asciz "'break' statement not in loop statement"
L_.str.235:
	.asciz "jmp FOR_END%d"
L_.str.236:
	.asciz "jmp WHILE_END%d"
L_.str.237:
	.asciz "xorb $-1, %%al"
L_.str.238:
	.asciz "je QUES%d"
L_.str.239:
	.asciz "jmp QUES_END%d"
L_.str.240:
	.asciz "QUES%d:\n"
L_.str.241:
	.asciz "QUES_END%d:\n"
L_.str.242:
	.asciz "\nfunction %s("
L_.str.243:
	.asciz ") -> %s  (%d)\n"
L_.str.244:
	.asciz "%*s{\n"
L_.str.245:
	.asciz "%*s"
L_.str.246:
	.asciz "%*s}\n"
L_.str.247:
	.asciz "%s "
L_.str.248:
	.asciz ";"
L_.str.249:
	.asciz "return "
L_.str.250:
	.asciz "%s ("
L_.str.251:
	.asciz "%*selse "
L_.str.252:
	.asciz "for ("
L_.str.253:
	.asciz " "
L_.str.254:
	.asciz " ;"
L_.str.255:
	.asciz "%lld"
L_.str.256:
	.asciz "\"%s\""
L_.str.257:
	.asciz "%s("
L_.str.258:
	.asciz ")"
L_.str.259:
	.asciz "%c("
L_.str.260:
	.asciz "((%s)"
L_.str.261:
	.asciz " %s "
L_.str.262:
	.asciz "continue ;"
L_.str.263:
	.asciz "break ;"
L_.str.264:
	.asciz "!("
L_.str.265:
	.asciz "(("
L_.str.266:
	.asciz ") ? ("
L_.str.267:
	.asciz ") : ("
L_.str.268:
	.asciz "r"
L_.str.269:
	.asciz "final.c"
L_.str.270:
	.asciz ".section	__DATA,__data"
L_.str.271:
	.asciz "error name: %s %c\n"
L_.str.272:
	.asciz "todo: evaluate constant expressions\n"
L_.str.273:
	.asciz ".comm _%s,%d,%d\n"
L_.str.274:
	.asciz ".globl _%s"
L_.str.275:
	.asciz ".p2align %d"
L_.str.276:
	.asciz ".%s %d\n"
L_.str.277:
	.asciz "L_.str.%d:\n"
L_.str.278:
	.asciz ".asciz \"%s\""
