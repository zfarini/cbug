//char* token_type_name(int type)
_token_type_name:
	pushq %rbp
	movq %rsp, %rbp
	subq $12, %rsp // 12
	movl %edi, -4(%rbp) //type
//{ (284)
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
//{ (292)
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
//{ (294)
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
//{ (302)
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
//{ (304)
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
//{ (309)
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

//struct Token* new_temp_token(int type)
_new_temp_token:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp // 16
	movl %edi, -4(%rbp) //type
//{ (318)
//cast to (struct Token*)
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
//{ (327)
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
//{ (342)
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
//{ (349)
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

//struct Token* tokenize(char* s)
_tokenize:
	pushq %rbp
	movq %rsp, %rbp
	subq $72, %rsp // 72
	movq %rdi, -8(%rbp) //s
//{ (356)
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
//{ (396)
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
//{ (400)
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
//{ (402)
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
//{ (413)
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
//{ (419)
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
//{ (425)
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
//{ (441)
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
//{ (446)
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
//{ (452)
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
//{ (456)
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
//{ (468)
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
//{ (484)
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
//{ (493)
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
//{ (495)
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
//{ (503)
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
//{ (505)
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
//{ (508)
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
//{ (515)
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
//{ (517)
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
//{ (522)
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
//{ (541)
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
//{ (546)
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
//{ (551)
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

//struct Scope* new_scope()
_new_scope:
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp // 8
//{ (562)
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
//{ (568)
//call new_scope
	subq $8, %rsp // 16
	xorq %rax, %rax
	callq _new_scope
	addq $8, %rsp // 8
	movq %rax, -8(%rbp) // scope = rax
	movq _curr_scope(%rip), %rax // curr_scope
	pushq %rax // 16
//cast to (struct Scope**)
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
//{ (575)
//cast to (struct Scope**)
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

//struct Type* new_type(int t)
_new_type:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp // 16
	movl %edi, -4(%rbp) //t
//{ (580)
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

//int types_are_equal(struct Type* t1, struct Type* t2)
_types_are_equal:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp // 16
	movq %rdi, -8(%rbp) //t1
	movq %rsi, -16(%rbp) //t2
//{ (597)
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
//cast to (struct Type**)
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
//cast to (struct Type**)
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
//cast to (struct Type**)
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
//cast to (struct Type**)
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

//struct Func* add_func(char* name, struct Type* ret_type)
_add_func:
	pushq %rbp
	movq %rsp, %rbp
	subq $24, %rsp // 24
	movq %rdi, -8(%rbp) //name
	movq %rsi, -16(%rbp) //ret_type
//{ (612)
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
//cast to (struct Type**)
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

//struct Func* find_func(char* name)
_find_func:
	pushq %rbp
	movq %rsp, %rbp
	subq $12, %rsp // 12
	movq %rdi, -8(%rbp) //name
//{ (620)
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
//{ (622)
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

//struct Var* find_var(char* name)
_find_var:
	pushq %rbp
	movq %rsp, %rbp
	subq $48, %rsp // 48
	movq %rdi, -8(%rbp) //name
//{ (630)
	movq _curr_scope(%rip), %rax // curr_scope
	movq %rax, -16(%rbp) // scope = rax
WHILE73:
	movq -16(%rbp), %rax // scope
	cmpq $0, %rax
	je WHILE_END73
//{ (633)
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
//{ (635)
//if begin
//call strcmp
//cast to (char**)
//cast to (char*)
//cast to (struct Var*[])
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
//cast to (struct Var*[])
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
//cast to (struct Scope**)
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
//cast to (struct Type**)
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
//cast to (struct Token**)
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

//struct Var* new_var(struct Type* type, char* name)
_new_var:
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp // 32
	movq %rdi, -8(%rbp) //type
	movq %rsi, -16(%rbp) //name
//{ (654)
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
//{ (656)
//if begin
//call strcmp
//cast to (char**)
//cast to (char*)
//cast to (struct Var*[])
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
//cast to (struct Token**)
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
//cast to (struct Type**)
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
//cast to (struct Var*[])
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
//{ (670)
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
//{ (672)
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
//cast to (struct Type**)
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
//cast to (struct Type**)
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
//{ (685)
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

//int is_typename(struct Token* tok)
_is_typename:
	pushq %rbp
	movq %rsp, %rbp
	subq $12, %rsp // 12
	movq %rdi, -8(%rbp) //tok
//{ (692)
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
//{ (705)
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
//{ (707)
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

//struct Type* find_binary_op_type(struct Type* t1, struct Type* t2)
_find_binary_op_type:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp // 16
	movq %rdi, -8(%rbp) //t1
	movq %rsi, -16(%rbp) //t2
//{ (716)
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
//cast to (struct Type**)
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
//cast to (struct Type**)
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
//{ (726)
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

//char* get_type_str(struct Type* type)
_get_type_str:
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp // 8
	movq %rdi, -8(%rbp) //type
//{ (737)
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // type
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
	movq $7, %rax
	movq %rax, %r10
	popq %rax // 8
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE98
//{ (739)
//call strjoin
	leaq L_.str.41(%rip), %rax
	pushq %rax // 16
//cast to (char**)
//cast to (char*)
	movq -8(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 24
	movq $40, %rax
	movq %rax, %r10
	popq %rax // 16
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 24
	popq %rsi // 16
	popq %rdi // 8
	subq $8, %rsp // 16
	xorq %rax, %rax
	callq _strjoin
	addq $8, %rsp // 8
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
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 8
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE99
//{ (743)
//call strjoin
//call get_type_str
//cast to (struct Type**)
//cast to (char*)
	movq -8(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 16
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 8
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 16
	popq %rdi // 8
	subq $8, %rsp // 16
	xorq %rax, %rax
	callq _get_type_str
	addq $8, %rsp // 8
	pushq %rax // 16
	leaq L_.str.42(%rip), %rax
	pushq %rax // 24
	popq %rsi // 16
	popq %rdi // 8
	subq $8, %rsp // 16
	xorq %rax, %rax
	callq _strjoin
	addq $8, %rsp // 8
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
	movq $3, %rax
	movq %rax, %r10
	popq %rax // 8
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE100
//{ (747)
//call strjoin
//call get_type_str
//cast to (struct Type**)
//cast to (char*)
	movq -8(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 16
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 8
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 16
	popq %rdi // 8
	subq $8, %rsp // 16
	xorq %rax, %rax
	callq _get_type_str
	addq $8, %rsp // 8
	pushq %rax // 16
	leaq L_.str.43(%rip), %rax
	pushq %rax // 24
	popq %rsi // 16
	popq %rdi // 8
	subq $8, %rsp // 16
	xorq %rax, %rax
	callq _strjoin
	addq $8, %rsp // 8
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
	movq $2, %rax
	movq %rax, %r10
	popq %rax // 8
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
	movq $5, %rax
	movq %rax, %r10
	popq %rax // 8
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
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 8
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
	movq $4, %rax
	movq %rax, %r10
	popq %rax // 8
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
	movq $6, %rax
	movq %rax, %r10
	popq %rax // 8
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
	movq $9, %rax
	movq %rax, %r10
	popq %rax // 8
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE106
	leaq L_.str.44(%rip), %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF106
ELSE106:
END_IF106:
//}
	addq $8, %rsp // 0
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

//void implicit_cast(struct Node** node, struct Type* type)
_implicit_cast:
	pushq %rbp
	movq %rsp, %rbp
	subq $24, %rsp // 24
	movq %rdi, -8(%rbp) //node
	movq %rsi, -16(%rbp) //type
//{ (762)
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
//cast to (struct Type**)
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
//cast to (struct Node**)
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
//cast to (struct Type**)
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

//struct Type* find_common_type(struct Type* t1, struct Type* t2)
_find_common_type:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp // 16
	movq %rdi, -8(%rbp) //t1
	movq %rsi, -16(%rbp) //t2
//{ (773)
//if begin
//cast to (struct Type**)
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
//cast to (struct Type**)
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

//struct Type* add_type(struct Node* node)
_add_type:
	pushq %rbp
	movq %rsp, %rbp
	subq $64, %rsp // 64
	movq %rdi, -8(%rbp) //node
//{ (788)
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
//cast to (struct Type**)
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
//cast to (struct Type**)
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
//{ (796)
//if begin
//cast to (long*)
//cast to (char*)
//cast to (struct Token**)
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
//cast to (struct Token**)
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
//{ (803)
//call add_type
//cast to (struct Node**)
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
//call printf
	leaq L_.str.45(%rip), %rax
	pushq %rax // 72
//call get_type_str
	movq -16(%rbp), %rax // t
	pushq %rax // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _get_type_str
	addq $8, %rsp // 72
	pushq %rax // 80
	popq %rsi // 72
	popq %rdi // 64
	subq $0, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $0, %rsp // 64
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
//{ (808)
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Token**)
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
//cast to (struct Token**)
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
//{ (810)
//call add_type
//cast to (struct Node**)
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
//cast to (struct Token**)
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
//call token_type_name
//cast to (int*)
//cast to (char*)
//cast to (struct Token**)
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
//cast to (struct Token**)
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
//{ (816)
//call add_type
//cast to (struct Node**)
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
//{ (824)
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
//cast to (struct Type**)
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
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Var**)
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
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Func**)
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
//call add_type
//cast to (struct Node**)
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
//cast to (struct Type**)
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
//cast to (struct Type**)
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
//cast to (struct Token**)
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
//{ (840)
//call add_type
//cast to (struct Node**)
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
//cast to (struct Type**)
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
//cast to (struct Token**)
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
	jmp END_IF132
ELSE132:
END_IF132:
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
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
//cast to (struct Token**)
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
	popq %rsi // 72
	popq %rdi // 64
	subq $0, %rsp // 64
	xorq %rax, %rax
	callq _error_token
	addq $0, %rsp // 64
	jmp END_IF133
ELSE133:
END_IF133:
//cast to (struct Type**)
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
//{ (849)
//call add_type
//cast to (struct Node**)
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
//cast to (struct Token**)
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
	leaq L_.str.50(%rip), %rax
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
//{ (856)
//cast to (struct Type**)
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
//cast to (struct Node**)
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
//{ (861)
//cast to (int*)
//cast to (char*)
//cast to (struct Token**)
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
//cast to (struct Node**)
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
//cast to (struct Node**)
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
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Node**)
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
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Node**)
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
//cast to (struct Type**)
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
//cast to (struct Type**)
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
//{ (872)
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
//cast to (struct Type**)
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
//cast to (struct Type**)
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
//cast to (struct Type**)
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
//cast to (struct Type**)
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
//cast to (struct Type**)
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
//cast to (struct Token**)
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
	leaq L_.str.51(%rip), %rax
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
//cast to (struct Type**)
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
//cast to (struct Type**)
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
//cast to (struct Type**)
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
//cast to (struct Type**)
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
//{ (885)
//call find_common_type
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Node**)
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
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Node**)
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
//cast to (struct Node**)
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
//cast to (struct Node**)
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
//cast to (struct Token**)
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
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Node**)
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
//{ (896)
//call add_type
//cast to (struct Node**)
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
//cast to (struct Node**)
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
//cast to (struct Node**)
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
//{ (903)
//call add_type
//cast to (struct Node**)
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
//cast to (struct Node**)
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
//cast to (struct Node**)
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
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Node**)
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
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Node**)
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
//cast to (struct Node**)
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
//cast to (struct Node**)
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
//cast to (struct Type**)
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
//cast to (struct Node**)
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

//struct Node* parse(char* s)
_parse:
	pushq %rbp
	movq %rsp, %rbp
	subq $128, %rsp // 128
	movq %rdi, -8(%rbp) //s
//{ (920)
//call add_func
	leaq L_.str.52(%rip), %rax
	pushq %rax // 136
	movq _type_void(%rip), %rax // type_void
	pushq %rax // 144
	popq %rsi // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _add_func
	addq $0, %rsp // 128
//call tokenize
	movq -8(%rbp), %rax // s
	pushq %rax // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _tokenize
	addq $0, %rsp // 128
	movq $0, %rax
	movl %eax, _ct(%rip)
//call new_node
	movq $1, %rax
	pushq %rax // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _new_node
	addq $0, %rsp // 128
	movq %rax, -16(%rbp) // prog = rax
//call new_scope
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _new_scope
	addq $0, %rsp // 128
	movq %rax, _curr_scope(%rip)
//cast to (struct Scope*)
	movq $0, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 136
//cast to (struct Scope**)
//cast to (char*)
	movq _curr_scope(%rip), %rax // curr_scope
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
	movq -16(%rbp), %rax // prog
	movq %rax, -24(%rbp) // curr = rax
WHILE162:
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
	cmpq $0, %rax
	je WHILE_END162
//{ (931)
	movslq _ct(%rip), %rax
	movl %eax, -28(%rbp) // save = rax
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
	movq $289, %rax
	movq %rax, %r10
	popq %rax // 128
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE163
//{ (935)
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
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE164
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
	jmp END_IF164
ELSE164:
END_IF164:
//call skip
	movq $123, %rax
	pushq %rax // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 128
	movq $0, %rax
	movl %eax, -32(%rbp) // val = rax
WHILE165:
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
	je WHILE_END165
//{ (944)
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
	movq _enums@GOTPCREL(%rip), %rax
	pushq %rax // 144
	movslq _enum_count(%rip), %rax
	movq %rax, %r10
	popq %rax // 136
	imulq $16, %r10
	addq %r10, %rax
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
//call skip
	movq $257, %rax
	pushq %rax // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _skip
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
	movq $61, %rax
	movq %rax, %r10
	popq %rax // 128
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE166
//{ (948)
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
	movq $256, %rax
	movq %rax, %r10
	popq %rax // 128
	cmpq %r10, %rax
	setne %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE167
//call skip
	movq $256, %rax
	pushq %rax // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 128
	jmp END_IF167
ELSE167:
END_IF167:
//cast to (int)
//cast to (long*)
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
	movl %eax, -32(%rbp) // val = rax
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
	jmp END_IF166
ELSE166:
END_IF166:
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
	je ELSE168
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
	jmp END_IF168
ELSE168:
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
	je ELSE169
//call skip
	movq $125, %rax
	pushq %rax // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 128
	jmp END_IF169
ELSE169:
END_IF169:
END_IF168:
	movslq -32(%rbp), %rax // val
	pushq %rax // 136
//cast to (int*)
//cast to (char*)
	movq _enums@GOTPCREL(%rip), %rax
	pushq %rax // 144
	movslq _enum_count(%rip), %rax
	movq %rax, %r10
	popq %rax // 136
	imulq $16, %r10
	addq %r10, %rax
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
	movl %r10d, (%rax)
	movslq _enum_count(%rip), %rax
	pushq %rax // 136
	movslq _enum_count(%rip), %rax
	pushq %rax // 144
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 136
	addq %r10, %rax
	movl %eax, _enum_count(%rip)
	popq %rax // 128
	movslq -32(%rbp), %rax // val
	pushq %rax // 136
	movslq -32(%rbp), %rax // val
	pushq %rax // 144
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 136
	addq %r10, %rax
	movl %eax, -32(%rbp) // val = rax
	popq %rax // 128
//}
	jmp WHILE165
WHILE_END165:
//call skip
	movq $125, %rax
	pushq %rax // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 128
//call skip
	movq $59, %rax
	pushq %rax // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 128
//}
	jmp END_IF163
ELSE163:
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
	movq $286, %rax
	movq %rax, %r10
	popq %rax // 128
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE170
//{ (967)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 136
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 128
	imulq $40, %r10
	addq %r10, %rax
	movq %rax, -40(%rbp) // st_token = rax
//call new_type
	movq $7, %rax
	pushq %rax // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _new_type
	addq $0, %rsp // 128
	movq %rax, -48(%rbp) // type = rax
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
	movq -48(%rbp), %rax // type
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
//call skip
	movq $257, %rax
	pushq %rax // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 128
//call skip
	movq $123, %rax
	pushq %rax // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 128
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
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR172
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
	setne %al
	movzbq %al, %rax
AND_OR172:
	cmpq $0, %rax
	je WHILE_END171
//{ (980)
//call decl
	movq $1, %rax
	pushq %rax // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _decl
	addq $0, %rsp // 128
	movq %rax, -72(%rbp) // node = rax
//cast to (struct Node**)
//cast to (char*)
	movq -72(%rbp), %rax // node
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
	movq %rax, -72(%rbp) // node = rax
WHILE173:
	movq -72(%rbp), %rax // node
	cmpq $0, %rax
	je WHILE_END173
//{ (984)
//cast to (char**)
//cast to (char*)
//cast to (struct Var**)
//cast to (char*)
	movq -72(%rbp), %rax // node
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
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 128
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 136
//cast to (char*[])
//cast to (char*)
	movq -48(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 144
	movq $848, %rax
	movq %rax, %r10
	popq %rax // 136
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 144
	movslq -52(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 136
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 128
	movq %r10, (%rax)
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Var**)
//cast to (char*)
	movq -72(%rbp), %rax // node
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
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 128
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 136
//cast to (struct Type*[])
//cast to (char*)
	movq -48(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 144
	movq $48, %rax
	movq %rax, %r10
	popq %rax // 136
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 144
	movslq -52(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 136
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 128
	movq %r10, (%rax)
//call align
	movslq -56(%rbp), %rax // size
	pushq %rax // 136
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Var**)
//cast to (char*)
	movq -72(%rbp), %rax // node
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
	movq (%rax), %rax
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
	movq (%rax), %rax
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
	movslq (%rax), %rax
	pushq %rax // 144
	popq %rsi // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _align
	addq $0, %rsp // 128
	movl %eax, -56(%rbp) // size = rax
	movslq -56(%rbp), %rax // size
	pushq %rax // 136
//cast to (int[])
//cast to (char*)
	movq -48(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 144
	movq $1648, %rax
	movq %rax, %r10
	popq %rax // 136
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 144
	movslq -52(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 136
	imulq $4, %r10
	addq %r10, %rax
	popq %r10 // 128
	movl %r10d, (%rax)
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Var**)
//cast to (char*)
	movq -72(%rbp), %rax // node
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
	movq $0, %rax
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
	movslq -60(%rbp), %rax // max
	movq %rax, %r10
	popq %rax // 128
	cmpq %r10, %rax
	setg %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE174
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Var**)
//cast to (char*)
	movq -72(%rbp), %rax // node
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
	movq $0, %rax
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
	movl %eax, -60(%rbp) // max = rax
	jmp END_IF174
ELSE174:
END_IF174:
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Var**)
//cast to (char*)
	movq -72(%rbp), %rax // node
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
	movq $0, %rax
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
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE175
	movslq -56(%rbp), %rax // size
	pushq %rax // 136
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Var**)
//cast to (char*)
	movq -72(%rbp), %rax // node
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
	movq (%rax), %rax
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
	movq (%rax), %rax
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
	movslq (%rax), %rax
	pushq %rax // 144
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Var**)
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
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 144
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	movq %rax, %r10
	popq %rax // 136
	imulq %r10, %rax
	movq %rax, %r10
	popq %rax // 128
	addq %r10, %rax
	movl %eax, -56(%rbp) // size = rax
	jmp END_IF175
ELSE175:
	movslq -56(%rbp), %rax // size
	pushq %rax // 136
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Var**)
//cast to (char*)
	movq -72(%rbp), %rax // node
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
	movq (%rax), %rax
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
	movq (%rax), %rax
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
	movslq (%rax), %rax
	movq %rax, %r10
	popq %rax // 128
	addq %r10, %rax
	movl %eax, -56(%rbp) // size = rax
END_IF175:
	movslq -52(%rbp), %rax // i
	pushq %rax // 136
	movslq -52(%rbp), %rax // i
	pushq %rax // 144
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 136
	addq %r10, %rax
	movl %eax, -52(%rbp) // i = rax
	popq %rax // 128
//cast to (struct Node**)
//cast to (char*)
	movq -72(%rbp), %rax // node
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
	movq %rax, -72(%rbp) // node = rax
//}
	jmp WHILE173
WHILE_END173:
//call skip
	movq $59, %rax
	pushq %rax // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 128
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
	pushq %rax // 136
	leaq L_.str.53(%rip), %rax
	pushq %rax // 144
	popq %rsi // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _error_token
	addq $0, %rsp // 128
	jmp END_IF176
ELSE176:
END_IF176:
//call align
	movslq -56(%rbp), %rax // size
	pushq %rax // 136
	movslq -60(%rbp), %rax // max
	pushq %rax // 144
	popq %rsi // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _align
	addq $0, %rsp // 128
	pushq %rax // 136
//cast to (int*)
//cast to (char*)
	movq -48(%rbp), %rax // type
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
	movslq -52(%rbp), %rax // i
	pushq %rax // 136
//cast to (int*)
//cast to (char*)
	movq -48(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 144
	movq $2048, %rax
	movq %rax, %r10
	popq %rax // 136
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 128
	movl %r10d, (%rax)
	movq -48(%rbp), %rax // type
	pushq %rax // 136
	movq _types_declared@GOTPCREL(%rip), %rax
	pushq %rax // 144
	movslq _types_declared_count(%rip), %rax
	pushq %rax // 152
	movslq _types_declared_count(%rip), %rax
	pushq %rax // 160
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 152
	addq %r10, %rax
	movl %eax, _types_declared_count(%rip)
	popq %rax // 144
	movq %rax, %r10
	popq %rax // 136
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 128
	movq %r10, (%rax)
//for init
	movq $0, %rax
	movl %eax, -76(%rbp) // j = rax
FOR177:
	movslq -76(%rbp), %rax // j
	pushq %rax // 136
	movslq _types_declared_count(%rip), %rax
	movq %rax, %r10
	popq %rax // 128
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je FOR_END177
//{ (1010)
	movq _types_declared@GOTPCREL(%rip), %rax
	pushq %rax // 136
	movslq -76(%rbp), %rax // j
	movq %rax, %r10
	popq %rax // 128
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	movq %rax, -88(%rbp) // t = rax
//for init
	movq $0, %rax
	movl %eax, -92(%rbp) // k = rax
FOR178:
	movslq -92(%rbp), %rax // k
	pushq %rax // 136
//cast to (int*)
//cast to (char*)
	movq -88(%rbp), %rax // t
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 144
	movq $2048, %rax
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
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je FOR_END178
//{ (1013)
//cast to (struct Type*[])
//cast to (char*)
	movq -88(%rbp), %rax // t
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 136
	movq $48, %rax
	movq %rax, %r10
	popq %rax // 128
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 136
	movslq -92(%rbp), %rax // k
	movq %rax, %r10
	popq %rax // 128
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	movq %rax, -104(%rbp) // cur = rax
WHILE179:
//cast to (struct Type**)
//cast to (char*)
	movq -104(%rbp), %rax // cur
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
	je WHILE_END179
//{ (1016)
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
//cast to (char*)
	movq -104(%rbp), %rax // cur
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
	movq $0, %rax
	je AND_OR181
//call strcmp
//cast to (char**)
//cast to (char*)
//cast to (struct Token**)
//cast to (char*)
//cast to (struct Type**)
//cast to (char*)
	movq -104(%rbp), %rax // cur
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
	movq $16, %rax
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
	movq -48(%rbp), %rax // type
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
	movq (%rax), %rax
	pushq %rax // 144
	popq %rsi // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _strcmp
	addq $0, %rsp // 128
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
//{ (1019)
	movq -48(%rbp), %rax // type
	pushq %rax // 136
//cast to (struct Type**)
//cast to (char*)
	movq -104(%rbp), %rax // cur
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
	jmp WHILE_END179
//}
	jmp END_IF180
ELSE180:
END_IF180:
//cast to (struct Type**)
//cast to (char*)
	movq -104(%rbp), %rax // cur
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
	movq %rax, -104(%rbp) // cur = rax
//}
	jmp WHILE179
WHILE_END179:
//}
FOR_INC178:
	movslq -92(%rbp), %rax // k
	pushq %rax // 136
	movslq -92(%rbp), %rax // k
	pushq %rax // 144
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 136
	addq %r10, %rax
	movl %eax, -92(%rbp) // k = rax
	popq %rax // 128
	jmp FOR178
FOR_END178:
//}
FOR_INC177:
	movslq -76(%rbp), %rax // j
	pushq %rax // 136
	movslq -76(%rbp), %rax // j
	pushq %rax // 144
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 136
	addq %r10, %rax
	movl %eax, -76(%rbp) // j = rax
	popq %rax // 128
	jmp FOR177
FOR_END177:
//call skip
	movq $125, %rax
	pushq %rax // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 128
//call skip
	movq $59, %rax
	pushq %rax // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 128
//call printf
	leaq L_.str.54(%rip), %rax
	pushq %rax // 136
//cast to (char**)
//cast to (char*)
	movq -48(%rbp), %rax // type
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
	movq (%rax), %rax
	pushq %rax // 144
	popq %rsi // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _printf
	addq $0, %rsp // 128
	jmp WHILE162
//}
	jmp END_IF170
ELSE170:
//{ (1034)
//if begin
//call is_typename
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 136
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 128
	imulq $40, %r10
	addq %r10, %rax
	pushq %rax // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _is_typename
	addq $0, %rsp // 128
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE182
//call error_token
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 136
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 128
	imulq $40, %r10
	addq %r10, %rax
	pushq %rax // 136
	leaq L_.str.55(%rip), %rax
	pushq %rax // 144
	popq %rsi // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _error_token
	addq $0, %rsp // 128
	jmp END_IF182
ELSE182:
END_IF182:
//call parse_type
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _parse_type
	addq $0, %rsp // 128
//call skip
	movq $257, %rax
	pushq %rax // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 128
	movq $0, %rax
	movl %eax, -108(%rbp) // globl = rax
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
	movq $40, %rax
	movq %rax, %r10
	popq %rax // 128
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
//{ (1044)
//call decl
	movq $0, %rax
	pushq %rax // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _decl
	addq $0, %rsp // 128
	pushq %rax // 136
//cast to (struct Node**)
//cast to (char*)
	movq -24(%rbp), %rax // curr
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
//call skip
	movq $59, %rax
	pushq %rax // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 128
//}
	jmp END_IF184
ELSE184:
//call function
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _function
	addq $0, %rsp // 128
	pushq %rax // 136
//cast to (struct Node**)
//cast to (char*)
	movq -24(%rbp), %rax // curr
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
END_IF184:
//if begin
//cast to (struct Node**)
//cast to (char*)
	movq -24(%rbp), %rax // curr
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 136
	movq $40, %rax
	movq %rax, %r10
	popq %rax // 128
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	cmpq $0, %rax
	je ELSE185
//cast to (struct Node**)
//cast to (char*)
	movq -24(%rbp), %rax // curr
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 136
	movq $40, %rax
	movq %rax, %r10
	popq %rax // 128
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
	pushq %rax // 136
	movslq _types_declared_count(%rip), %rax
	movq %rax, %r10
	popq %rax // 128
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je FOR_END186
//{ (1055)
	movq _types_declared@GOTPCREL(%rip), %rax
	pushq %rax // 136
	movslq -112(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 128
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	movq %rax, -120(%rbp) // t = rax
//for init
	movq $0, %rax
	movl %eax, -124(%rbp) // j = rax
FOR187:
	movslq -124(%rbp), %rax // j
	pushq %rax // 136
//cast to (int*)
//cast to (char*)
	movq -120(%rbp), %rax // t
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 144
	movq $2048, %rax
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
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je FOR_END187
//{ (1058)
//if begin
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Type*[])
//cast to (char*)
	movq -120(%rbp), %rax // t
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 136
	movq $48, %rax
	movq %rax, %r10
	popq %rax // 128
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 136
	movslq -124(%rbp), %rax // j
	movq %rax, %r10
	popq %rax // 128
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
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
	movq $0, %rax
	je AND_OR189
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Type*[])
//cast to (char*)
	movq -120(%rbp), %rax // t
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 136
	movq $48, %rax
	movq %rax, %r10
	popq %rax // 128
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 136
	movslq -124(%rbp), %rax // j
	movq %rax, %r10
	popq %rax // 128
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
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
AND_OR189:
	cmpq $0, %rax
	je ELSE188
//call error_token
//cast to (struct Token**)
//cast to (char*)
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Type*[])
//cast to (char*)
	movq -120(%rbp), %rax // t
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 136
	movq $48, %rax
	movq %rax, %r10
	popq %rax // 128
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 136
	movslq -124(%rbp), %rax // j
	movq %rax, %r10
	popq %rax // 128
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
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
	leaq L_.str.56(%rip), %rax
	pushq %rax // 144
	popq %rsi // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _error_token
	addq $0, %rsp // 128
	jmp END_IF188
ELSE188:
END_IF188:
//}
FOR_INC187:
	movslq -124(%rbp), %rax // j
	pushq %rax // 136
	movslq -124(%rbp), %rax // j
	pushq %rax // 144
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 136
	addq %r10, %rax
	movl %eax, -124(%rbp) // j = rax
	popq %rax // 128
	jmp FOR187
FOR_END187:
//call printf
	leaq L_.str.57(%rip), %rax
	pushq %rax // 136
//cast to (char**)
//cast to (char*)
	movq -120(%rbp), %rax // t
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
	movq (%rax), %rax
	pushq %rax // 144
//cast to (int*)
//cast to (char*)
	movq -120(%rbp), %rax // t
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
	popq %rdx // 144
	popq %rsi // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _printf
	addq $0, %rsp // 128
//for init
	movq $0, %rax
	movl %eax, -128(%rbp) // j = rax
FOR190:
	movslq -128(%rbp), %rax // j
	pushq %rax // 136
//cast to (int*)
//cast to (char*)
	movq -120(%rbp), %rax // t
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 144
	movq $2048, %rax
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
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je FOR_END190
//call printf
	leaq L_.str.58(%rip), %rax
	pushq %rax // 136
//call get_type_str
//cast to (struct Type*[])
//cast to (char*)
	movq -120(%rbp), %rax // t
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 144
	movq $48, %rax
	movq %rax, %r10
	popq %rax // 136
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 144
	movslq -128(%rbp), %rax // j
	movq %rax, %r10
	popq %rax // 136
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 144
	popq %rdi // 136
	subq $8, %rsp // 144
	xorq %rax, %rax
	callq _get_type_str
	addq $8, %rsp // 136
	pushq %rax // 144
//cast to (char*[])
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
	movslq -128(%rbp), %rax // j
	movq %rax, %r10
	popq %rax // 144
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 152
	popq %rdx // 144
	popq %rsi // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _printf
	addq $0, %rsp // 128
FOR_INC190:
	movslq -128(%rbp), %rax // j
	pushq %rax // 136
	movslq -128(%rbp), %rax // j
	pushq %rax // 144
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 136
	addq %r10, %rax
	movl %eax, -128(%rbp) // j = rax
	popq %rax // 128
	jmp FOR190
FOR_END190:
//}
FOR_INC186:
	movslq -112(%rbp), %rax // i
	pushq %rax // 136
	movslq -112(%rbp), %rax // i
	pushq %rax // 144
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 136
	addq %r10, %rax
	movl %eax, -112(%rbp) // i = rax
	popq %rax // 128
	jmp FOR186
FOR_END186:
	movq -16(%rbp), %rax // prog
	movq %rbp, %rsp
	popq %rbp
	ret
//}
	addq $128, %rsp // 0
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

//struct Type* find_type(char* name)
_find_type:
	pushq %rbp
	movq %rsp, %rbp
	subq $12, %rsp // 12
	movq %rdi, -8(%rbp) //name
//{ (1071)
//for init
	movq $0, %rax
	movl %eax, -12(%rbp) // i = rax
FOR191:
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
	je FOR_END191
//{ (1073)
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
	je ELSE192
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
	jmp END_IF192
ELSE192:
END_IF192:
//}
FOR_INC191:
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
	jmp FOR191
FOR_END191:
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

//struct Type* parse_base_type()
_parse_base_type:
	pushq %rbp
	movq %rsp, %rbp
	subq $52, %rsp // 52
//{ (1081)
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
//cast to (struct Type*)
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
	je ELSE193
//{ (1086)
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
	je ELSE194
//{ (1089)
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
	jmp END_IF194
ELSE194:
END_IF194:
//}
	jmp END_IF193
ELSE193:
END_IF193:
WHILE195:
	movq $1, %rax
	cmpq $0, %rax
	je WHILE_END195
//{ (1095)
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
	je ELSE196
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
	jmp END_IF196
ELSE196:
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
	je ELSE197
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
	jmp END_IF197
ELSE197:
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
	je ELSE198
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
	jmp END_IF198
ELSE198:
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
	je ELSE199
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
	jmp END_IF199
ELSE199:
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
	je ELSE200
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
	jmp END_IF200
ELSE200:
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
	je ELSE201
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
	movq $280, %rax
	movq %rax, %r10
	popq %rax // 52
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE202
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
	jmp END_IF202
ELSE202:
	jmp WHILE_END195
END_IF202:
END_IF201:
END_IF200:
END_IF199:
END_IF198:
END_IF197:
END_IF196:
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
	jmp WHILE195
WHILE_END195:
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
	jne AND_OR204
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
AND_OR204:
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR205
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
AND_OR205:
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR206
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
AND_OR206:
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR207
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
AND_OR207:
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR208
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
AND_OR208:
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR209
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
AND_OR209:
	cmpq $0, %rax
	je ELSE203
	movq $1, %rax
	movl %eax, -52(%rbp) // err = rax
	jmp END_IF203
ELSE203:
END_IF203:
//if begin
	movslq -28(%rbp), %rax // si
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR211
	movslq -24(%rbp), %rax // u
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR211:
	cmpq $0, %rax
	je ELSE210
	movq $1, %rax
	movl %eax, -52(%rbp) // err = rax
	jmp END_IF210
ELSE210:
END_IF210:
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
	je ELSE212
	movq $1, %rax
	movl %eax, -52(%rbp) // err = rax
	jmp END_IF212
ELSE212:
END_IF212:
//if begin
	movslq -16(%rbp), %rax // l
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR214
	movslq -20(%rbp), %rax // v
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR215
	movslq -12(%rbp), %rax // c
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR215:
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR216
	movslq -8(%rbp), %rax // s
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR216:
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR214:
	cmpq $0, %rax
	je ELSE213
	movq $1, %rax
	movl %eax, -52(%rbp) // err = rax
	jmp END_IF213
ELSE213:
END_IF213:
//if begin
	movslq -16(%rbp), %rax // l
	cmpq $0, %rax
	je ELSE217
//call new_type
	movq $6, %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _new_type
	addq $12, %rsp // 52
	movq %rax, -40(%rbp) // type = rax
	jmp END_IF217
ELSE217:
//if begin
	movslq -4(%rbp), %rax // i
	cmpq $0, %rax
	je ELSE218
//call new_type
	movq $0, %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _new_type
	addq $12, %rsp // 52
	movq %rax, -40(%rbp) // type = rax
	jmp END_IF218
ELSE218:
//if begin
	movslq -20(%rbp), %rax // v
	cmpq $0, %rax
	je ELSE219
//call new_type
	movq $2, %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _new_type
	addq $12, %rsp // 52
	movq %rax, -40(%rbp) // type = rax
	jmp END_IF219
ELSE219:
//if begin
	movslq -12(%rbp), %rax // c
	cmpq $0, %rax
	je ELSE220
//call new_type
	movq $5, %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _new_type
	addq $12, %rsp // 52
	movq %rax, -40(%rbp) // type = rax
	jmp END_IF220
ELSE220:
//if begin
	movslq -8(%rbp), %rax // s
	cmpq $0, %rax
	je ELSE221
//call new_type
	movq $4, %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _new_type
	addq $12, %rsp // 52
	movq %rax, -40(%rbp) // type = rax
	jmp END_IF221
ELSE221:
//if begin
	movslq -28(%rbp), %rax // si
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR223
	movslq -24(%rbp), %rax // u
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR223:
	cmpq $0, %rax
	je ELSE222
//call new_type
	movq $0, %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _new_type
	addq $12, %rsp // 52
	movq %rax, -40(%rbp) // type = rax
	jmp END_IF222
ELSE222:
//{ (1136)
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
//cast to (struct Token**)
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
END_IF222:
END_IF221:
END_IF220:
END_IF219:
END_IF218:
END_IF217:
//if begin
	movq -40(%rbp), %rax // type
	cmpq $0, %rax
	je ELSE224
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
	jmp END_IF224
ELSE224:
END_IF224:
//if begin
	movslq -52(%rbp), %rax // err
	cmpq $0, %rax
	je ELSE225
//call error_token
	movq -48(%rbp), %rax // start
	pushq %rax // 60
	leaq L_.str.59(%rip), %rax
	pushq %rax // 68
	popq %rsi // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _error_token
	addq $12, %rsp // 52
	jmp END_IF225
ELSE225:
END_IF225:
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

//struct Type* parse_type()
_parse_type:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp // 16
//{ (1149)
//call parse_base_type
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _parse_base_type
	addq $0, %rsp // 16
	movq %rax, -8(%rbp) // type = rax
WHILE226:
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
	je WHILE_END226
//{ (1152)
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
//cast to (struct Type**)
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
	jmp WHILE226
WHILE_END226:
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

//struct Node* function()
_function:
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp // 32
//{ (1163)
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
WHILE227:
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
	je WHILE_END227
//{ (1175)
//call new_node
	movq $18, %rax
	pushq %rax // 40
	popq %rdi // 32
	subq $0, %rsp // 32
	xorq %rax, %rax
	callq _new_node
	addq $0, %rsp // 32
	pushq %rax // 40
//cast to (struct Node*[])
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
//cast to (struct Var**)
//cast to (char*)
//cast to (struct Node*[])
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
	je ELSE228
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
	jmp END_IF228
ELSE228:
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
	je ELSE229
	jmp WHILE_END227
	jmp END_IF229
ELSE229:
END_IF229:
END_IF228:
//}
	jmp WHILE227
WHILE_END227:
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
//cast to (struct Token**)
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
//cast to (struct Func**)
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
	je ELSE230
//{ (1191)
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
	je ELSE231
//call skip
	movq $123, %rax
	pushq %rax // 40
	popq %rdi // 32
	subq $0, %rsp // 32
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 32
	jmp END_IF231
ELSE231:
END_IF231:
//call statement
	subq $0, %rsp // 32
	xorq %rax, %rax
	callq _statement
	addq $0, %rsp // 32
	pushq %rax // 40
//cast to (struct Node**)
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
	jmp END_IF230
ELSE230:
//call skip
	movq $59, %rax
	pushq %rax // 40
	popq %rdi // 32
	subq $0, %rsp // 32
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 32
END_IF230:
//call printf
	leaq L_.str.60(%rip), %rax
	pushq %rax // 40
//cast to (char**)
//cast to (char*)
//cast to (struct Token**)
//cast to (char*)
	movq -16(%rbp), %rax // node
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
	callq _printf
	addq $0, %rsp // 32
//call leave_scope
	subq $0, %rsp // 32
	xorq %rax, %rax
	callq _leave_scope
	addq $0, %rsp // 32
//cast to (struct Node*)
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

//struct Node* statement_or_decl()
_statement_or_decl:
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp // 8
//{ (1206)
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
	je ELSE232
//{ (1208)
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
	jmp END_IF232
ELSE232:
END_IF232:
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

//struct Node* decl(int is_struct)
_decl:
	pushq %rbp
	movq %rsp, %rbp
	subq $128, %rsp // 128
	movl %edi, -4(%rbp) //is_struct
//{ (1217)
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
//cast to (struct Type**)
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
WHILE233:
	movq $1, %rax
	cmpq $0, %rax
	je WHILE_END233
//{ (1224)
//call new_node
	movq $18, %rax
	pushq %rax // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _new_node
	addq $0, %rsp // 128
	pushq %rax // 136
//cast to (struct Node**)
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
WHILE234:
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
	je WHILE_END234
//{ (1228)
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
//cast to (struct Type**)
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
	jmp WHILE234
WHILE_END234:
//if begin
//cast to (struct Type**)
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
	je AND_OR236
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
AND_OR236:
	cmpq $0, %rax
	je ELSE235
//call error_token
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 136
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 128
	imulq $40, %r10
	addq %r10, %rax
	pushq %rax // 136
	leaq L_.str.56(%rip), %rax
	pushq %rax // 144
	popq %rsi // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _error_token
	addq $0, %rsp // 128
	jmp END_IF235
ELSE235:
END_IF235:
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
	je AND_OR238
//cast to (struct Type**)
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
AND_OR238:
	cmpq $0, %rax
	je ELSE237
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
	jmp END_IF237
ELSE237:
END_IF237:
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
	je ELSE239
//call skip
	movq $257, %rax
	pushq %rax // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 128
	jmp END_IF239
ELSE239:
END_IF239:
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
	je ELSE240
//{ (1242)
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
//cast to (struct Type**)
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
//cast to (struct Type**)
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
	je ELSE241
//{ (1249)
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
//cast to (struct Type**)
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
	jmp END_IF241
ELSE241:
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
END_IF241:
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
	jmp END_IF240
ELSE240:
//{ (1261)
//if begin
	movslq -4(%rbp), %rax // is_struct
	cmpq $0, %rax
	je ELSE242
//{ (1263)
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
//cast to (struct Type**)
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
	jmp END_IF242
ELSE242:
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
END_IF242:
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
END_IF240:
//cast to (struct Node**)
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
//cast to (struct Node**)
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
//cast to (struct Scope**)
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
	je ELSE243
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
	jmp END_IF243
ELSE243:
END_IF243:
	movq -56(%rbp), %rax // var
	pushq %rax // 136
//cast to (struct Var**)
//cast to (char*)
//cast to (struct Node**)
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
	je ELSE244
//{ (1277)
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
	je ELSE245
//{ (1279)
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
	je ELSE246
//call error_token
//cast to (struct Token**)
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
	leaq L_.str.62(%rip), %rax
	pushq %rax // 144
	popq %rsi // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _error_token
	addq $0, %rsp // 128
	jmp END_IF246
ELSE246:
END_IF246:
	movslq _ct(%rip), %rax
	pushq %rax // 136
	movq $2, %rax
	movq %rax, %r10
	popq %rax // 128
	addq %r10, %rax
	movl %eax, _ct(%rip)
	movq $0, %rax
	movl %eax, -68(%rbp) // end = rax
//cast to (struct Node*)
	movq $0, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq %rax, -80(%rbp) // init = rax
//cast to (struct Node*)
	movq $0, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq %rax, -88(%rbp) // c = rax
//for init
	movq $0, %rax
	movl %eax, -92(%rbp) // i = rax
FOR247:
//{ (1291)
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
	je ELSE248
	movq $1, %rax
	movl %eax, -68(%rbp) // end = rax
	jmp END_IF248
ELSE248:
END_IF248:
//if begin
	movslq -68(%rbp), %rax // end
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR250
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
AND_OR250:
	cmpq $0, %rax
	je ELSE249
	jmp FOR_END247
	jmp END_IF249
ELSE249:
END_IF249:
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
	je ELSE251
//{ (1297)
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
	je ELSE252
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
	jmp END_IF252
ELSE252:
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
	je ELSE253
//call skip
	movq $125, %rax
	pushq %rax // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 128
	jmp END_IF253
ELSE253:
END_IF253:
END_IF252:
	jmp FOR_INC247
//}
	jmp END_IF251
ELSE251:
END_IF251:
//if begin
	movslq -68(%rbp), %rax // end
	cmpq $0, %rax
	je ELSE254
//{ (1307)
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
//cast to (struct Token**)
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
//cast to (struct Token**)
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
	jmp END_IF254
ELSE254:
//{ (1313)
//call assign
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _assign
	addq $0, %rsp // 128
	movq %rax, -104(%rbp) // value = rax
//}
END_IF254:
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
//cast to (struct Token**)
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
//cast to (struct Node**)
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
//cast to (struct Var**)
//cast to (char*)
//cast to (struct Node**)
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
//cast to (struct Node**)
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
//cast to (struct Token**)
//cast to (char*)
//cast to (struct Node**)
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
//cast to (struct Token**)
//cast to (char*)
//cast to (struct Node**)
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
//cast to (struct Token**)
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
//cast to (struct Node**)
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
//cast to (struct Token**)
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
//cast to (struct Node**)
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
//cast to (struct Node**)
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
	je ELSE255
//{ (1336)
	movq -128(%rbp), %rax // a
	movq %rax, -88(%rbp) // c = rax
	movq -128(%rbp), %rax // a
	movq %rax, -80(%rbp) // init = rax
//}
	jmp END_IF255
ELSE255:
//{ (1341)
	movq -128(%rbp), %rax // a
	pushq %rax // 136
//cast to (struct Node**)
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
//cast to (struct Node**)
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
END_IF255:
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
	je ELSE256
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
	jmp END_IF256
ELSE256:
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
	je ELSE257
//call skip
	movq $125, %rax
	pushq %rax // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 128
	jmp END_IF257
ELSE257:
END_IF257:
END_IF256:
//}
FOR_INC247:
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
	jmp FOR247
FOR_END247:
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
//cast to (struct Node**)
//cast to (char*)
//cast to (struct Node**)
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
	jmp END_IF245
ELSE245:
//{ (1355)
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
//cast to (struct Node**)
//cast to (char*)
//cast to (struct Node**)
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
END_IF245:
//call add_type
//cast to (struct Node**)
//cast to (char*)
//cast to (struct Node**)
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
	jmp END_IF244
ELSE244:
END_IF244:
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
	je ELSE258
	jmp WHILE_END233
	jmp END_IF258
ELSE258:
END_IF258:
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
//cast to (struct Node**)
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
	jmp WHILE233
WHILE_END233:
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

//struct Node* statement()
_statement:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp // 16
//{ (1370)
//cast to (struct Node*)
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
	je ELSE259
//{ (1374)
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
	je ELSE260
//call expr
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _expr
	addq $0, %rsp // 16
	pushq %rax // 24
//cast to (struct Node**)
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
	jmp END_IF260
ELSE260:
//call new_node
	movq $0, %rax
	pushq %rax // 24
	popq %rdi // 16
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _new_node
	addq $0, %rsp // 16
	pushq %rax // 24
//cast to (struct Node**)
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
END_IF260:
//call skip
	movq $59, %rax
	pushq %rax // 24
	popq %rdi // 16
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 16
//}
	jmp END_IF259
ELSE259:
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
	je ELSE261
//{ (1384)
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
	jmp END_IF261
ELSE261:
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
	je ELSE262
//{ (1390)
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
	jmp END_IF262
ELSE262:
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
	je ELSE263
//{ (1396)
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
//cast to (struct Node**)
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
//cast to (struct Node**)
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
	je ELSE264
//{ (1404)
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
//cast to (struct Node**)
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
	jmp END_IF264
ELSE264:
END_IF264:
//}
	jmp END_IF263
ELSE263:
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
	je ELSE265
//{ (1410)
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
//cast to (struct Node**)
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
//cast to (struct Node**)
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
	jmp END_IF265
ELSE265:
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
	je ELSE266
//{ (1419)
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
	je ELSE267
//{ (1425)
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
	je ELSE268
//call decl
	movq $0, %rax
	pushq %rax // 24
	popq %rdi // 16
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _decl
	addq $0, %rsp // 16
	pushq %rax // 24
//cast to (struct Node**)
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
	jmp END_IF268
ELSE268:
//call expr
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _expr
	addq $0, %rsp // 16
	pushq %rax // 24
//cast to (struct Node**)
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
END_IF268:
//}
	jmp END_IF267
ELSE267:
END_IF267:
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
	je ELSE269
//call expr
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _expr
	addq $0, %rsp // 16
	pushq %rax // 24
//cast to (struct Node**)
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
	jmp END_IF269
ELSE269:
END_IF269:
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
	je ELSE270
//call expr
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _expr
	addq $0, %rsp // 16
	pushq %rax // 24
//cast to (struct Node**)
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
	jmp END_IF270
ELSE270:
END_IF270:
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
//cast to (struct Node**)
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
	movq $123, %rax
	movq %rax, %r10
	popq %rax // 16
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE271
//{ (1442)
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
WHILE272:
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
	je AND_OR273
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
AND_OR273:
	cmpq $0, %rax
	je WHILE_END272
//{ (1449)
//call statement_or_decl
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _statement_or_decl
	addq $0, %rsp // 16
	pushq %rax // 24
//cast to (struct Node**)
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
//cast to (struct Node**)
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
	jmp WHILE272
WHILE_END272:
//cast to (struct Node**)
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
//cast to (struct Node**)
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
//cast to (struct Node*)
	movq $0, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 24
//cast to (struct Node**)
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
//cast to (struct Node*)
	movq $0, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 24
//cast to (struct Node**)
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
	jmp END_IF271
ELSE271:
//{ (1462)
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
	movq %rax, -8(%rbp) // node = rax
	jmp END_IF274
ELSE274:
//call new_node
	movq $0, %rax
	pushq %rax // 24
	popq %rdi // 16
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _new_node
	addq $0, %rsp // 16
	movq %rax, -8(%rbp) // node = rax
END_IF274:
//call skip
	movq $59, %rax
	pushq %rax // 24
	popq %rdi // 16
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 16
//}
END_IF271:
END_IF266:
END_IF265:
END_IF263:
END_IF262:
END_IF261:
END_IF259:
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

//struct Node* expr()
_expr:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp // 16
//{ (1473)
//call assign
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _assign
	addq $0, %rsp // 16
	movq %rax, -8(%rbp) // node = rax
	movq -8(%rbp), %rax // node
	movq %rax, -16(%rbp) // curr = rax
WHILE275:
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
	je WHILE_END275
//{ (1477)
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
//cast to (struct Node**)
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
//cast to (struct Node**)
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
	jmp WHILE275
WHILE_END275:
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

//struct Node* assign()
_assign:
	pushq %rbp
	movq %rsp, %rbp
	subq $24, %rsp // 24
//{ (1486)
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
	je ELSE276
//{ (1491)
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
	je AND_OR278
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
AND_OR278:
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR279
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
AND_OR279:
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR280
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
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
AND_OR280:
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR281
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
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
AND_OR281:
	cmpq $0, %rax
	je ELSE277
//call error_token
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 32
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 24
	imulq $40, %r10
	addq %r10, %rax
	pushq %rax // 32
	leaq L_.str.63(%rip), %rax
	pushq %rax // 40
	popq %rsi // 32
	popq %rdi // 24
	subq $8, %rsp // 32
	xorq %rax, %rax
	callq _error_token
	addq $8, %rsp // 24
	jmp END_IF277
ELSE277:
END_IF277:
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
//cast to (struct Node**)
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
//cast to (struct Node**)
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
//cast to (struct Token**)
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
	je ELSE282
//{ (1502)
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
//cast to (struct Token**)
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
//cast to (struct Token**)
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
//cast to (struct Node**)
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
//cast to (struct Node**)
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
//cast to (struct Node**)
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
//cast to (struct Node**)
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
	jmp END_IF282
ELSE282:
END_IF282:
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
	jmp END_IF276
ELSE276:
END_IF276:
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

//struct Node* conditional()
_conditional:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp // 16
//{ (1517)
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
	je ELSE283
//{ (1520)
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
//cast to (struct Node**)
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
//cast to (struct Node**)
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
//cast to (struct Node**)
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
	jmp END_IF283
ELSE283:
END_IF283:
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

//struct Node* logical_or()
_logical_or:
	pushq %rbp
	movq %rsp, %rbp
	subq $0, %rsp // 0
//{ (1533)
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

//struct Node* logical_and()
_logical_and:
	pushq %rbp
	movq %rsp, %rbp
	subq $0, %rsp // 0
//{ (1538)
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

//struct Node* equality()
_equality:
	pushq %rbp
	movq %rsp, %rbp
	subq $0, %rsp // 0
//{ (1543)
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

//struct Node* relational()
_relational:
	pushq %rbp
	movq %rsp, %rbp
	subq $0, %rsp // 0
//{ (1548)
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

//struct Node* add()
_add:
	pushq %rbp
	movq %rsp, %rbp
	subq $0, %rsp // 0
//{ (1553)
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

//struct Node* mul()
_mul:
	pushq %rbp
	movq %rsp, %rbp
	subq $0, %rsp // 0
//{ (1558)
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

//struct Node* cast()
_cast:
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp // 8
//{ (1563)
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
	je AND_OR285
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
AND_OR285:
	cmpq $0, %rax
	je ELSE284
//{ (1565)
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
//cast to (struct Type**)
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
//cast to (struct Node**)
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
	jmp END_IF284
ELSE284:
END_IF284:
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

//struct Node* unary()
_unary:
	pushq %rbp
	movq %rsp, %rbp
	subq $72, %rsp // 72
//{ (1577)
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
	je ELSE286
//{ (1579)
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
	jmp END_IF286
ELSE286:
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
	je ELSE287
//{ (1584)
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
//cast to (struct Node**)
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
	jmp END_IF287
ELSE287:
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
	je ELSE288
//{ (1591)
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
//cast to (struct Node**)
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
	jmp END_IF288
ELSE288:
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
	je ELSE289
//{ (1598)
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
//cast to (struct Node**)
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
	jmp END_IF289
ELSE289:
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
	je ELSE290
//{ (1605)
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
//cast to (struct Node**)
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
	jmp END_IF290
ELSE290:
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
	je ELSE291
//{ (1612)
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
//cast to (struct Token**)
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
//cast to (struct Type*)
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
	je AND_OR293
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
AND_OR293:
	cmpq $0, %rax
	je ELSE292
//{ (1618)
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
	jmp END_IF292
ELSE292:
//{ (1624)
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
END_IF292:
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
	je ELSE294
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
//cast to (struct Token**)
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
	jmp END_IF294
ELSE294:
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
//cast to (struct Token**)
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
END_IF294:
	movq -40(%rbp), %rax // node
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
	movq $275, %rax
	movq %rax, %r10
	popq %rax // 72
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR296
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
AND_OR296:
	cmpq $0, %rax
	je ELSE295
//{ (1636)
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
	je QUES297
	movq $43, %rax
	jmp QUES_END297
QUES297:
	movq $45, %rax
QUES_END297:
	pushq %rax // 80
//cast to (int*)
//cast to (char*)
//cast to (struct Token**)
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
//cast to (struct Node**)
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
//cast to (struct Node**)
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
//cast to (struct Token**)
//cast to (char*)
//cast to (struct Node**)
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
//cast to (struct Token**)
//cast to (char*)
//cast to (struct Node**)
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
//cast to (struct Token**)
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
//cast to (struct Node**)
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
//cast to (struct Node**)
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
//cast to (struct Node**)
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
	jmp END_IF295
ELSE295:
END_IF295:
END_IF291:
END_IF290:
END_IF289:
END_IF288:
END_IF287:
END_IF286:
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

//struct Node* postfix()
_postfix:
	pushq %rbp
	movq %rsp, %rbp
	subq $104, %rsp // 104
//{ (1655)
//call primary
	subq $8, %rsp // 112
	xorq %rax, %rax
	callq _primary
	addq $8, %rsp // 104
	movq %rax, -8(%rbp) // left = rax
WHILE298:
	movq $1, %rax
	cmpq $0, %rax
	je WHILE_END298
//{ (1659)
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
	je ELSE299
//{ (1661)
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
//cast to (struct Token**)
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
//cast to (struct Node**)
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
//cast to (struct Node**)
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
//cast to (struct Token**)
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
//cast to (struct Node**)
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
	jmp END_IF299
ELSE299:
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
	jne AND_OR301
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
AND_OR301:
	cmpq $0, %rax
	je ELSE300
//{ (1675)
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
//cast to (struct Node**)
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
	jmp END_IF300
ELSE300:
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
	jne AND_OR303
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
AND_OR303:
	cmpq $0, %rax
	je ELSE302
//{ (1682)
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
//cast to (struct Node**)
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
	je AND_OR305
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
	je AND_OR306
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
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
AND_OR306:
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR305:
	cmpq $0, %rax
	je ELSE304
//{ (1687)
//call error_token
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 112
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 104
	imulq $40, %r10
	addq %r10, %rax
	pushq %rax // 112
	leaq L_.str.64(%rip), %rax
	pushq %rax // 120
	popq %rsi // 112
	popq %rdi // 104
	subq $8, %rsp // 112
	xorq %rax, %rax
	callq _error_token
	addq $8, %rsp // 104
//}
	jmp END_IF304
ELSE304:
END_IF304:
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
	je ELSE307
//cast to (struct Type**)
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
	jmp END_IF307
ELSE307:
END_IF307:
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
	je ELSE308
//call error_token
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 112
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 104
	imulq $40, %r10
	addq %r10, %rax
	pushq %rax // 112
	leaq L_.str.65(%rip), %rax
	pushq %rax // 120
	popq %rsi // 112
	popq %rdi // 104
	subq $8, %rsp // 112
	xorq %rax, %rax
	callq _error_token
	addq $8, %rsp // 104
	jmp END_IF308
ELSE308:
END_IF308:
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
FOR309:
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
	je FOR_END309
//{ (1699)
//if begin
//call strcmp
//cast to (char*[])
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
	je ELSE310
	jmp FOR_END309
	jmp END_IF310
ELSE310:
END_IF310:
//}
FOR_INC309:
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
	jmp FOR309
FOR_END309:
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
	je ELSE311
//call error_token
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 112
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 104
	imulq $40, %r10
	addq %r10, %rax
	pushq %rax // 112
	leaq L_.str.66(%rip), %rax
	pushq %rax // 120
	popq %rsi // 112
	popq %rdi // 104
	subq $8, %rsp // 112
	xorq %rax, %rax
	callq _error_token
	addq $8, %rsp // 104
	jmp END_IF311
ELSE311:
END_IF311:
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
//cast to (struct Type**)
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
	je ELSE312
//{ (1714)
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
//cast to (struct Node**)
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
	jmp END_IF312
ELSE312:
END_IF312:
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
//cast to (struct Token**)
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
//cast to (struct Node**)
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
//cast to (struct Node**)
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
//cast to (struct Token**)
//cast to (char*)
//cast to (struct Node**)
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
//cast to (int[])
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
//cast to (struct Token**)
//cast to (char*)
//cast to (struct Node**)
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
//cast to (struct Type*[])
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
	je ELSE313
//{ (1728)
//cast to (struct Type*[])
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
	jmp END_IF313
ELSE313:
//{ (1735)
//cast to (struct Type*[])
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
//cast to (struct Type**)
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
//cast to (struct Node**)
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
END_IF313:
	movq -104(%rbp), %rax // node
	pushq %rax // 112
//cast to (struct Node**)
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
	jmp END_IF302
ELSE302:
	jmp WHILE_END298
END_IF302:
END_IF300:
END_IF299:
//}
	jmp WHILE298
WHILE_END298:
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

//struct Node* primary()
_primary:
	pushq %rbp
	movq %rsp, %rbp
	subq $28, %rsp // 28
//{ (1752)
//cast to (struct Node*)
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
	je ELSE314
//{ (1755)
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
	jmp END_IF314
ELSE314:
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
	je ELSE315
//{ (1760)
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
	jmp END_IF315
ELSE315:
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
	je ELSE316
//{ (1765)
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
	jmp END_IF316
ELSE316:
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
	je AND_OR318
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
AND_OR318:
	cmpq $0, %rax
	je ELSE317
//{ (1771)
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
//cast to (struct Func**)
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
//cast to (struct Func**)
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
	je ELSE319
//call error_token
//cast to (struct Token**)
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
	leaq L_.str.67(%rip), %rax
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
	jmp END_IF319
ELSE319:
END_IF319:
	movslq _ct(%rip), %rax
	pushq %rax // 36
	movq $2, %rax
	movq %rax, %r10
	popq %rax // 28
	addq %r10, %rax
	movl %eax, _ct(%rip)
	movq $0, %rax
	movl %eax, -12(%rbp) // count = rax
WHILE320:
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
	je WHILE_END320
//{ (1779)
//if begin
//call strcmp
//cast to (char**)
//cast to (char*)
//cast to (struct Token**)
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
	leaq L_.str.52(%rip), %rax
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
	je AND_OR322
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
AND_OR322:
	cmpq $0, %rax
	je ELSE321
//call statement
	subq $4, %rsp // 32
	xorq %rax, %rax
	callq _statement
	addq $4, %rsp // 28
	pushq %rax // 36
//cast to (struct Node*[])
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
	jmp END_IF321
ELSE321:
//call assign
	subq $4, %rsp // 32
	xorq %rax, %rax
	callq _assign
	addq $4, %rsp // 28
	pushq %rax // 36
//cast to (struct Node*[])
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
END_IF321:
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
	je ELSE323
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
	jmp END_IF323
ELSE323:
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
	je ELSE324
//call skip
	movq $41, %rax
	pushq %rax // 36
	popq %rdi // 28
	subq $4, %rsp // 32
	xorq %rax, %rax
	callq _skip
	addq $4, %rsp // 28
	jmp END_IF324
ELSE324:
END_IF324:
END_IF323:
//}
	jmp WHILE320
WHILE_END320:
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
	jmp END_IF317
ELSE317:
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
	je ELSE325
//{ (1794)
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
	je ELSE326
//{ (1797)
//for init
	movq $0, %rax
	movl %eax, -28(%rbp) // i = rax
FOR327:
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
	je FOR_END327
//{ (1799)
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
	je ELSE328
//{ (1801)
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
//cast to (struct Token**)
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
//cast to (struct Token**)
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
	jmp END_IF328
ELSE328:
END_IF328:
//}
FOR_INC327:
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
	jmp FOR327
FOR_END327:
//call error_token
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 36
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 28
	imulq $40, %r10
	addq %r10, %rax
	pushq %rax // 36
	leaq L_.str.68(%rip), %rax
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
	jmp END_IF326
ELSE326:
END_IF326:
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
//cast to (struct Var**)
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
	jmp END_IF325
ELSE325:
//call error_token
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 36
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 28
	imulq $40, %r10
	addq %r10, %rax
	pushq %rax // 36
	leaq L_.str.69(%rip), %rax
	pushq %rax // 44
	popq %rsi // 36
	popq %rdi // 28
	subq $4, %rsp // 32
	xorq %rax, %rax
	callq _error_token
	addq $4, %rsp // 28
END_IF325:
END_IF317:
END_IF316:
END_IF315:
END_IF314:
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
//{ (1823)
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
	je ELSE329
	leaq L_.str.70(%rip), %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF329
ELSE329:
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
	je ELSE330
	leaq L_.str.71(%rip), %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF330
ELSE330:
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
	je ELSE331
	leaq L_.str.72(%rip), %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF331
ELSE331:
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
	je ELSE332
	leaq L_.str.73(%rip), %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF332
ELSE332:
END_IF332:
END_IF331:
END_IF330:
END_IF329:
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
//{ (1836)
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
	je ELSE333
	leaq L_.str.74(%rip), %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF333
ELSE333:
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
	je ELSE334
	leaq L_.str.23(%rip), %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF334
ELSE334:
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
	je ELSE335
	leaq L_.str.24(%rip), %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF335
ELSE335:
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
	je ELSE336
	leaq L_.str.75(%rip), %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF336
ELSE336:
END_IF336:
END_IF335:
END_IF334:
END_IF333:
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
//{ (1849)
	movq $0, %rax
	movl %eax, -8(%rbp) // y = rax
WHILE337:
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
	je WHILE_END337
//{ (1852)
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
	jmp WHILE337
WHILE_END337:
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
//{ (1860)
	leaq L_.str.76(%rip), %rax
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
	leaq L_.str.77(%rip), %rax
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
	leaq L_.str.78(%rip), %rax
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
	leaq L_.str.79(%rip), %rax
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
	leaq L_.str.80(%rip), %rax
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
	leaq L_.str.81(%rip), %rax
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
	leaq L_.str.82(%rip), %rax
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
	leaq L_.str.83(%rip), %rax
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
	leaq L_.str.84(%rip), %rax
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
	leaq L_.str.85(%rip), %rax
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
	leaq L_.str.86(%rip), %rax
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
	leaq L_.str.87(%rip), %rax
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
	leaq L_.str.88(%rip), %rax
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
	leaq L_.str.89(%rip), %rax
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
	leaq L_.str.90(%rip), %rax
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
	leaq L_.str.91(%rip), %rax
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
	leaq L_.str.92(%rip), %rax
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
	leaq L_.str.93(%rip), %rax
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
	leaq L_.str.94(%rip), %rax
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
	leaq L_.str.95(%rip), %rax
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
	leaq L_.str.96(%rip), %rax
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
	leaq L_.str.97(%rip), %rax
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
	leaq L_.str.98(%rip), %rax
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
	leaq L_.str.99(%rip), %rax
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
	leaq L_.str.100(%rip), %rax
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
	leaq L_.str.101(%rip), %rax
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
	leaq L_.str.102(%rip), %rax
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
	leaq L_.str.103(%rip), %rax
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
	leaq L_.str.104(%rip), %rax
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
	leaq L_.str.105(%rip), %rax
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
	leaq L_.str.106(%rip), %rax
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
	leaq L_.str.107(%rip), %rax
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
	leaq L_.str.108(%rip), %rax
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
	leaq L_.str.109(%rip), %rax
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
	leaq L_.str.110(%rip), %rax
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
	leaq L_.str.111(%rip), %rax
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
	leaq L_.str.79(%rip), %rax
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
	je ELSE338
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
	jmp END_IF338
ELSE338:
END_IF338:
//if begin
//call strcmp
	movq -8(%rbp), %rax // reg
	pushq %rax // 312
	leaq L_.str.83(%rip), %rax
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
	je ELSE339
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
	jmp END_IF339
ELSE339:
END_IF339:
//if begin
//call strcmp
	movq -8(%rbp), %rax // reg
	pushq %rax // 312
	leaq L_.str.87(%rip), %rax
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
	je ELSE340
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
	jmp END_IF340
ELSE340:
END_IF340:
//if begin
//call strcmp
	movq -8(%rbp), %rax // reg
	pushq %rax // 312
	leaq L_.str.91(%rip), %rax
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
	je ELSE341
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
	jmp END_IF341
ELSE341:
END_IF341:
//if begin
//call strcmp
	movq -8(%rbp), %rax // reg
	pushq %rax // 312
	leaq L_.str.95(%rip), %rax
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
	je ELSE342
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
	jmp END_IF342
ELSE342:
END_IF342:
//if begin
//call strcmp
	movq -8(%rbp), %rax // reg
	pushq %rax // 312
	leaq L_.str.99(%rip), %rax
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
	jmp END_IF343
ELSE343:
END_IF343:
//if begin
//call strcmp
	movq -8(%rbp), %rax // reg
	pushq %rax // 312
	leaq L_.str.103(%rip), %rax
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
	jmp END_IF344
ELSE344:
END_IF344:
//if begin
//call strcmp
	movq -8(%rbp), %rax // reg
	pushq %rax // 312
	leaq L_.str.107(%rip), %rax
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
	jmp END_IF345
ELSE345:
END_IF345:
//if begin
//call strcmp
	movq -8(%rbp), %rax // reg
	pushq %rax // 312
	leaq L_.str.111(%rip), %rax
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
	jmp END_IF346
ELSE346:
END_IF346:
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
//{ (1895)
//for init
	movq $0, %rax
	movl %eax, -12(%rbp) // i = rax
FOR347:
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
	je FOR_END347
//{ (1897)
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
	je ELSE348
	movslq -12(%rbp), %rax // i
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF348
ELSE348:
END_IF348:
//}
FOR_INC347:
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
	jmp FOR347
FOR_END347:
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
//{ (1915)
	movslq _stack_size(%rip), %rax
	pushq %rax // 16
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 8
	addq %r10, %rax
	movl %eax, _stack_size(%rip)
//call out
	leaq L_.str.112(%rip), %rax
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
//{ (1921)
	movslq _stack_size(%rip), %rax
	pushq %rax // 16
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 8
	subq %r10, %rax
	movl %eax, _stack_size(%rip)
//call out
	leaq L_.str.113(%rip), %rax
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

//void gen(struct Node* node)
_gen:
	pushq %rbp
	movq %rsp, %rbp
	subq $300, %rsp // 300
	movq %rdi, -8(%rbp) //node
//{ (1928)
//if begin
	movq -8(%rbp), %rax // node
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR350
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
AND_OR350:
	cmpq $0, %rax
	je ELSE349
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF349
ELSE349:
END_IF349:
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
	je ELSE351
//{ (1932)
//cast to (struct Node**)
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
WHILE352:
	movq -16(%rbp), %rax // curr
	cmpq $0, %rax
	je WHILE_END352
//{ (1935)
//call gen
	movq -16(%rbp), %rax // curr
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $4, %rsp // 300
//cast to (struct Node**)
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
	jmp WHILE352
WHILE_END352:
//}
	jmp END_IF351
ELSE351:
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
	je ELSE353
//{ (1941)
//if begin
//cast to (struct Node**)
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
	je ELSE354
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF354
ELSE354:
END_IF354:
//if begin
//call strcmp
//cast to (char**)
//cast to (char*)
//cast to (struct Token**)
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
	leaq L_.str.114(%rip), %rax
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
	je ELSE355
//call fprintf
	movq _f(%rip), %rax // f
	pushq %rax // 308
	leaq L_.str.115(%rip), %rax
	pushq %rax // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _fprintf
	addq $4, %rsp // 300
	jmp END_IF355
ELSE355:
END_IF355:
	movq $0, %rax
	movl %eax, _stack_size(%rip)
//call dbg
	leaq L_.str.116(%rip), %rax
	pushq %rax // 308
//call get_type_str
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Func**)
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
//cast to (struct Token**)
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
FOR356:
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
	je FOR_END356
//{ (1949)
//call dbg
	leaq L_.str.117(%rip), %rax
	pushq %rax // 308
//call get_type_str
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Var**)
//cast to (char*)
//cast to (struct Node*[])
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
//cast to (struct Var**)
//cast to (char*)
//cast to (struct Node*[])
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
	je ELSE357
//call dbg
	leaq L_.str.118(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _dbg
	addq $4, %rsp // 300
	jmp END_IF357
ELSE357:
END_IF357:
//}
FOR_INC356:
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
	jmp FOR356
FOR_END356:
//call dbg
	leaq L_.str.119(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _dbg
	addq $4, %rsp // 300
//call fprintf
	movq _f(%rip), %rax // f
	pushq %rax // 308
	leaq L_.str.120(%rip), %rax
	pushq %rax // 316
//cast to (char**)
//cast to (char*)
//cast to (struct Token**)
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
	leaq L_.str.121(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.122(%rip), %rax
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
	leaq L_.str.123(%rip), %rax
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
	leaq L_.str.91(%rip), %rax
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
	leaq L_.str.95(%rip), %rax
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
	leaq L_.str.83(%rip), %rax
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
	leaq L_.str.87(%rip), %rax
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
	leaq L_.str.99(%rip), %rax
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
	leaq L_.str.103(%rip), %rax
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
FOR358:
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
	je AND_OR359
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
AND_OR359:
	cmpq $0, %rax
	je FOR_END358
//{ (1967)
//cast to (struct Var**)
//cast to (char*)
//cast to (struct Node*[])
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
	leaq L_.str.124(%rip), %rax
	pushq %rax // 308
//call get_inst_suffix
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
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
//cast to (struct Type**)
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
FOR_INC358:
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
	jmp FOR358
FOR_END358:
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
	je ELSE360
//{ (1976)
//cast to (int*)
//cast to (char*)
//cast to (struct Var**)
//cast to (char*)
//cast to (struct Node*[])
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
FOR361:
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
	je FOR_END361
//{ (1981)
//call out
	leaq L_.str.125(%rip), %rax
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
	leaq L_.str.126(%rip), %rax
	pushq %rax // 308
//call get_inst_suffix
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Var**)
//cast to (char*)
//cast to (struct Node*[])
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
	leaq L_.str.79(%rip), %rax
	pushq %rax // 324
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Var**)
//cast to (char*)
//cast to (struct Node*[])
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
//cast to (struct Var**)
//cast to (char*)
//cast to (struct Node*[])
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
//cast to (struct Var**)
//cast to (char*)
//cast to (struct Node*[])
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
FOR_INC361:
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
	jmp FOR361
FOR_END361:
//}
	jmp END_IF360
ELSE360:
END_IF360:
//call gen
//cast to (struct Node**)
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
	leaq L_.str.127(%rip), %rax
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
	leaq L_.str.128(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.129(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.130(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.131(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//}
	jmp END_IF353
ELSE353:
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
	je ELSE362
//{ (2008)
//cast to (struct Node**)
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
	leaq L_.str.132(%rip), %rax
	pushq %rax // 308
//cast to (int*)
//cast to (char*)
//cast to (struct Token**)
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
WHILE363:
	movq -112(%rbp), %rax // curr
	cmpq $0, %rax
	je WHILE_END363
//{ (2012)
//call gen
	movq -112(%rbp), %rax // curr
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $4, %rsp // 300
//cast to (struct Node**)
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
	jmp WHILE363
WHILE_END363:
//call dbg
	leaq L_.str.133(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _dbg
	addq $4, %rsp // 300
//}
	jmp END_IF362
ELSE362:
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
	je ELSE364
//{ (2019)
//call gen
//cast to (struct Node**)
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
	jmp END_IF364
ELSE364:
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
	je ELSE365
//{ (2023)
//cast to (struct Node**)
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
WHILE366:
	movq -120(%rbp), %rax // curr
	cmpq $0, %rax
	je WHILE_END366
//{ (2026)
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Var**)
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
	je ELSE367
//{ (2028)
//}
	jmp END_IF367
ELSE367:
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Var**)
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
	je AND_OR369
//cast to (struct Node**)
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
AND_OR369:
	cmpq $0, %rax
	je ELSE368
//call gen
//cast to (struct Node**)
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
	jmp END_IF368
ELSE368:
END_IF368:
END_IF367:
//cast to (struct Node**)
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
	jmp WHILE366
WHILE_END366:
//}
	jmp END_IF365
ELSE365:
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
	je ELSE370
//{ (2037)
//call gen
//cast to (struct Node**)
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
	leaq L_.str.129(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.130(%rip), %rax
	pushq %rax // 308
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
	movq $9, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE371
//{ (2044)
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
	leaq L_.str.135(%rip), %rax
	pushq %rax // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _fprintf
	addq $4, %rsp // 300
//call gen
//cast to (struct Node**)
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
	movslq -124(%rbp), %rax // label
	pushq %rax // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call gen
//cast to (struct Node**)
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
	leaq L_.str.138(%rip), %rax
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
	leaq L_.str.139(%rip), %rax
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
//cast to (struct Node**)
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
	je ELSE372
//call gen
//cast to (struct Node**)
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
	jmp END_IF372
ELSE372:
END_IF372:
//call fprintf
	movq _f(%rip), %rax // f
	pushq %rax // 308
	leaq L_.str.140(%rip), %rax
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
	jmp END_IF371
ELSE371:
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
	je ELSE373
//{ (2058)
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
	leaq L_.str.141(%rip), %rax
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
//cast to (struct Node**)
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
	leaq L_.str.136(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.142(%rip), %rax
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
//cast to (struct Node**)
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
	leaq L_.str.143(%rip), %rax
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
	leaq L_.str.144(%rip), %rax
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
	jmp END_IF373
ELSE373:
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
	je ELSE374
//{ (2077)
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
	leaq L_.str.145(%rip), %rax
	pushq %rax // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _fprintf
	addq $4, %rsp // 300
//call gen
//cast to (struct Node**)
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
	leaq L_.str.146(%rip), %rax
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
//cast to (struct Node**)
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
	je ELSE375
//{ (2083)
//call gen
//cast to (struct Node**)
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
	leaq L_.str.136(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.147(%rip), %rax
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
	jmp END_IF375
ELSE375:
END_IF375:
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
//cast to (struct Node**)
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
	leaq L_.str.148(%rip), %rax
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
//cast to (struct Node**)
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
	leaq L_.str.149(%rip), %rax
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
	leaq L_.str.150(%rip), %rax
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
	jmp END_IF374
ELSE374:
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
	je ELSE376
//{ (2103)
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
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
	je ELSE377
//call out
	leaq L_.str.151(%rip), %rax
	pushq %rax // 308
//cast to (long*)
//cast to (char*)
//cast to (struct Token**)
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
	jmp END_IF377
ELSE377:
//call out
	leaq L_.str.152(%rip), %rax
	pushq %rax // 308
//cast to (long*)
//cast to (char*)
//cast to (struct Token**)
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
END_IF377:
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
	movq $19, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE378
//{ (2110)
//call add_string_lit
//cast to (char**)
//cast to (char*)
//cast to (struct Token**)
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
	leaq L_.str.153(%rip), %rax
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
	movq $2, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE379
//{ (2115)
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
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
	jne AND_OR381
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
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
AND_OR381:
	cmpq $0, %rax
	je ELSE380
//{ (2117)
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Var**)
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
	je ELSE382
//{ (2119)
//call out
	leaq L_.str.154(%rip), %rax
	pushq %rax // 308
//cast to (char**)
//cast to (char*)
//cast to (struct Var**)
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
	jmp END_IF382
ELSE382:
//{ (2123)
//call out
	leaq L_.str.155(%rip), %rax
	pushq %rax // 308
//cast to (char**)
//cast to (char*)
//cast to (struct Var**)
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
	leaq L_.str.156(%rip), %rax
	pushq %rax // 308
//cast to (int*)
//cast to (char*)
//cast to (struct Var**)
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
END_IF382:
//}
	jmp END_IF380
ELSE380:
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
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
	je ELSE383
//{ (2129)
//call out
	leaq L_.str.157(%rip), %rax
	pushq %rax // 308
//cast to (char**)
//cast to (char*)
//cast to (struct Token**)
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
	jmp END_IF383
ELSE383:
//{ (2133)
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Var**)
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
	je ELSE384
//{ (2135)
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
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
	je ELSE385
//{ (2137)
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
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
	je ELSE386
//call out
	leaq L_.str.158(%rip), %rax
	pushq %rax // 308
//call get_inst_suffix
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
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
//cast to (struct Var**)
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
//cast to (struct Var**)
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
	jmp END_IF386
ELSE386:
//call out
	leaq L_.str.159(%rip), %rax
	pushq %rax // 308
//call get_inst_suffix
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
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
//cast to (struct Var**)
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
	leaq L_.str.79(%rip), %rax
	pushq %rax // 332
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
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
//cast to (struct Var**)
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
END_IF386:
//}
	jmp END_IF385
ELSE385:
//{ (2151)
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
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
	je ELSE387
//{ (2153)
//call out
	leaq L_.str.160(%rip), %rax
	pushq %rax // 308
//call get_inst_suffix
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
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
//cast to (struct Var**)
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
	jmp END_IF387
ELSE387:
//call out
	leaq L_.str.161(%rip), %rax
	pushq %rax // 308
//cast to (char**)
//cast to (char*)
//cast to (struct Var**)
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
END_IF387:
//}
END_IF385:
//}
	jmp END_IF384
ELSE384:
//{ (2168)
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
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
	je ELSE388
//{ (2170)
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
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
	je ELSE389
//call out
	leaq L_.str.162(%rip), %rax
	pushq %rax // 308
//call get_inst_suffix
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
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
//cast to (struct Var**)
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
//cast to (struct Var**)
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
	jmp END_IF389
ELSE389:
//call out
	leaq L_.str.163(%rip), %rax
	pushq %rax // 308
//call get_inst_suffix
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
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
//cast to (struct Var**)
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
	leaq L_.str.79(%rip), %rax
	pushq %rax // 332
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
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
//cast to (struct Var**)
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
END_IF389:
//}
	jmp END_IF388
ELSE388:
//{ (2184)
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
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
	je ELSE390
//{ (2186)
//call out
	leaq L_.str.164(%rip), %rax
	pushq %rax // 308
//call get_inst_suffix
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
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
//cast to (struct Var**)
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
//cast to (struct Var**)
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
	jmp END_IF390
ELSE390:
//call out
	leaq L_.str.165(%rip), %rax
	pushq %rax // 308
//cast to (int*)
//cast to (char*)
//cast to (struct Var**)
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
//cast to (struct Var**)
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
END_IF390:
//}
END_IF388:
//}
END_IF384:
//}
END_IF383:
END_IF380:
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
	movq $13, %rax
	movq %rax, %r10
	popq %rax // 300
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE391
//{ (2198)
//if begin
//call strcmp
//cast to (char**)
//cast to (char*)
//cast to (struct Token**)
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
	leaq L_.str.52(%rip), %rax
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
	je ELSE392
//{ (2200)
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
//cast to (struct Token**)
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
WHILE393:
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
	je WHILE_END393
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
	jmp WHILE393
WHILE_END393:
//call fprintf
	movq _f(%rip), %rax // f
	pushq %rax // 308
	leaq L_.str.166(%rip), %rax
	pushq %rax // 316
//cast to (int)
	movq -168(%rbp), %rax // s2
	pushq %rax // 324
//cast to (char**)
//cast to (char*)
//cast to (struct Token**)
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
//cast to (struct Token**)
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
//cast to (struct Node*[])
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
	leaq L_.str.167(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call gen
//cast to (struct Node*[])
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
	leaq L_.str.168(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.169(%rip), %rax
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
	leaq L_.str.170(%rip), %rax
	pushq %rax // 308
//cast to (int*)
//cast to (char*)
//cast to (struct Token**)
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
	leaq L_.str.171(%rip), %rax
	pushq %rax // 308
//cast to (int*)
//cast to (char*)
//cast to (struct Token**)
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
	leaq L_.str.172(%rip), %rax
	pushq %rax // 308
//cast to (int*)
//cast to (char*)
//cast to (struct Token**)
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
	leaq L_.str.173(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call fprintf
	movq _f(%rip), %rax // f
	pushq %rax // 308
	leaq L_.str.174(%rip), %rax
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
	jmp END_IF392
ELSE392:
//{ (2218)
	leaq L_.str.91(%rip), %rax
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
	leaq L_.str.95(%rip), %rax
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
	leaq L_.str.83(%rip), %rax
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
	leaq L_.str.87(%rip), %rax
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
	leaq L_.str.99(%rip), %rax
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
	leaq L_.str.103(%rip), %rax
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
	leaq L_.str.175(%rip), %rax
	pushq %rax // 308
//cast to (char**)
//cast to (char*)
//cast to (struct Token**)
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
FOR394:
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
	je AND_OR395
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
AND_OR395:
	cmpq $0, %rax
	je FOR_END394
//{ (2222)
//call gen
//cast to (struct Node*[])
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
	leaq L_.str.79(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _push
	addq $4, %rsp // 300
//}
FOR_INC394:
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
	jmp FOR394
FOR_END394:
//for init
	movq $0, %rax
	movl %eax, -224(%rbp) // i = rax
FOR396:
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
	je AND_OR397
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
AND_OR397:
	cmpq $0, %rax
	je FOR_END396
//{ (2228)
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
	je ELSE398
	movq $6, %rax
	movl %eax, -228(%rbp) // last = rax
	jmp END_IF398
ELSE398:
END_IF398:
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
FOR_INC396:
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
	jmp FOR396
FOR_END396:
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
	je ELSE399
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
	jmp END_IF399
ELSE399:
END_IF399:
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
	leaq L_.str.123(%rip), %rax
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
FOR400:
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
	je FOR_END400
//{ (2244)
//call gen
//cast to (struct Node*[])
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
	leaq L_.str.79(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _push
	addq $4, %rsp // 300
//}
FOR_INC400:
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
	jmp FOR400
FOR_END400:
//call out
	leaq L_.str.176(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.177(%rip), %rax
	pushq %rax // 308
//cast to (char**)
//cast to (char*)
//cast to (struct Token**)
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
	je ELSE401
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
	jmp END_IF401
ELSE401:
END_IF401:
	movslq _stack_size(%rip), %rax
	pushq %rax // 308
	movslq -244(%rbp), %rax // add
	movq %rax, %r10
	popq %rax // 300
	subq %r10, %rax
	movl %eax, _stack_size(%rip)
//call out
	leaq L_.str.127(%rip), %rax
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
END_IF392:
//}
	jmp END_IF391
ELSE391:
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
	je ELSE402
//{ (2261)
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Node**)
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
	je ELSE403
//cast to (struct Node**)
//cast to (char*)
//cast to (struct Node**)
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
//cast to (struct Node**)
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
	jmp END_IF403
ELSE403:
END_IF403:
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Node**)
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
	je ELSE404
//{ (2265)
//call gen
//cast to (struct Node**)
//cast to (char*)
//cast to (struct Node**)
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
	jmp END_IF404
ELSE404:
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Node**)
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
	je ELSE405
//{ (2269)
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Var**)
//cast to (char*)
//cast to (struct Node**)
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
	je ELSE406
//{ (2272)
//call out
	leaq L_.str.154(%rip), %rax
	pushq %rax // 308
//cast to (char**)
//cast to (char*)
//cast to (struct Var**)
//cast to (char*)
//cast to (struct Node**)
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
	jmp END_IF406
ELSE406:
//{ (2276)
//call out
	leaq L_.str.178(%rip), %rax
	pushq %rax // 308
//cast to (char**)
//cast to (char*)
//cast to (struct Var**)
//cast to (char*)
//cast to (struct Node**)
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
	leaq L_.str.156(%rip), %rax
	pushq %rax // 308
//cast to (int*)
//cast to (char*)
//cast to (struct Var**)
//cast to (char*)
//cast to (struct Node**)
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
END_IF406:
//}
	jmp END_IF405
ELSE405:
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Node**)
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
	je ELSE407
//{ (2282)
//cast to (struct Node**)
//cast to (char*)
//cast to (struct Node**)
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
//cast to (struct Node**)
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
	jmp END_IF407
ELSE407:
END_IF407:
END_IF405:
END_IF404:
//}
	jmp END_IF402
ELSE402:
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
	je ELSE408
//{ (2290)
//call gen
//cast to (struct Node**)
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
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Node**)
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
	je ELSE409
//call error_token
//cast to (struct Token**)
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
	leaq L_.str.179(%rip), %rax
	pushq %rax // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _error_token
	addq $4, %rsp // 300
	jmp END_IF409
ELSE409:
END_IF409:
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
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
	je ELSE410
	jmp END_IF410
ELSE410:
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
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
	je ELSE411
//call out
	leaq L_.str.180(%rip), %rax
	pushq %rax // 308
//call get_inst_suffix
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
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
	jmp END_IF411
ELSE411:
//call out
	leaq L_.str.181(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
END_IF411:
END_IF410:
//}
	jmp END_IF408
ELSE408:
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
	je ELSE412
//{ (2308)
//call gen
//cast to (struct Node**)
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
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Node**)
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
	je ELSE413
//call error_token
//cast to (struct Token**)
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
	leaq L_.str.182(%rip), %rax
	pushq %rax // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _error_token
	addq $4, %rsp // 300
	jmp END_IF413
ELSE413:
END_IF413:
//call out
	leaq L_.str.183(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.184(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.185(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//}
	jmp END_IF412
ELSE412:
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
	je ELSE414
//{ (2317)
//call dbg
	leaq L_.str.186(%rip), %rax
	pushq %rax // 308
//call get_type_str
//cast to (struct Type**)
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
//cast to (struct Node**)
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
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Node**)
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
//cast to (struct Type**)
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
//cast to (struct Type**)
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
	je ELSE415
//{ (2323)
//call new_type
	movq $1, %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _new_type
	addq $4, %rsp // 300
	movq %rax, -264(%rbp) // t2 = rax
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Type**)
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
//cast to (struct Type**)
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
	jmp END_IF415
ELSE415:
END_IF415:
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
	je AND_OR417
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
AND_OR417:
	cmpq $0, %rax
	je ELSE416
//{ (2330)
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
	je ELSE418
//{ (2332)
//call out
	leaq L_.str.187(%rip), %rax
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
	leaq L_.str.79(%rip), %rax
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
	leaq L_.str.185(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//}
	jmp END_IF418
ELSE418:
END_IF418:
//}
	jmp END_IF416
ELSE416:
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
	je ELSE419
//{ (2342)
//call out
	leaq L_.str.183(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.188(%rip), %rax
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
	leaq L_.str.79(%rip), %rax
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
	leaq L_.str.107(%rip), %rax
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
	leaq L_.str.185(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//}
	jmp END_IF419
ELSE419:
//{ (2351)
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
	je ELSE420
//{ (2353)
//call out
	leaq L_.str.183(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.188(%rip), %rax
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
	leaq L_.str.79(%rip), %rax
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
	leaq L_.str.107(%rip), %rax
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
	leaq L_.str.189(%rip), %rax
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
	leaq L_.str.107(%rip), %rax
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
	jmp END_IF420
ELSE420:
END_IF420:
//}
END_IF419:
END_IF416:
//}
	jmp END_IF414
ELSE414:
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
	je ELSE421
//{ (2369)
//call gen
//cast to (struct Node**)
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
//cast to (struct Token**)
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
	je ELSE422
//{ (2372)
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
//cast to (struct Token**)
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
	leaq L_.str.136(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.190(%rip), %rax
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
	leaq L_.str.191(%rip), %rax
	pushq %rax // 308
	movslq -272(%rbp), %rax // is_and
	cmpq $0, %rax
	je QUES423
	leaq L_.str.192(%rip), %rax
	jmp QUES_END423
QUES423:
	leaq L_.str.193(%rip), %rax
QUES_END423:
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
//cast to (struct Node**)
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
	leaq L_.str.136(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.194(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.195(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call fprintf
	movq _f(%rip), %rax // f
	pushq %rax // 308
	leaq L_.str.196(%rip), %rax
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
	jmp END_IF422
ELSE422:
//{ (2385)
//call push
	leaq L_.str.79(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _push
	addq $4, %rsp // 300
//call gen
//cast to (struct Node**)
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
	leaq L_.str.197(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call pop
	leaq L_.str.79(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _pop
	addq $4, %rsp // 300
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Token**)
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
	jne AND_OR425
//cast to (int*)
//cast to (char*)
//cast to (struct Token**)
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
AND_OR425:
	cmpq $0, %rax
	je ELSE424
//{ (2398)
//if begin
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Node**)
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
	je AND_OR427
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Node**)
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
AND_OR427:
	cmpq $0, %rax
	je ELSE426
//call out
	leaq L_.str.198(%rip), %rax
	pushq %rax // 308
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Node**)
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
	jmp END_IF426
ELSE426:
//if begin
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Node**)
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
	je AND_OR429
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Node**)
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
AND_OR429:
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR430
//cast to (int*)
//cast to (char*)
//cast to (struct Token**)
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
AND_OR430:
	cmpq $0, %rax
	je ELSE428
//call out
	leaq L_.str.199(%rip), %rax
	pushq %rax // 308
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Node**)
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
	jmp END_IF428
ELSE428:
END_IF428:
END_IF426:
//}
	jmp END_IF424
ELSE424:
END_IF424:
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Token**)
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
	je ELSE431
//call out
	leaq L_.str.200(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
	jmp END_IF431
ELSE431:
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Token**)
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
	je ELSE432
//call out
	leaq L_.str.201(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
	jmp END_IF432
ELSE432:
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Token**)
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
	je ELSE433
//call out
	leaq L_.str.202(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
	jmp END_IF433
ELSE433:
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Token**)
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
	jne AND_OR435
//cast to (int*)
//cast to (char*)
//cast to (struct Token**)
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
AND_OR435:
	cmpq $0, %rax
	je ELSE434
//{ (2412)
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
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
	je ELSE436
//{ (2416)
//call out
	leaq L_.str.203(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.204(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//}
	jmp END_IF436
ELSE436:
//{ (2421)
//call out
	leaq L_.str.205(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.206(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//}
END_IF436:
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Token**)
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
	je ELSE437
//call out
	leaq L_.str.207(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
	jmp END_IF437
ELSE437:
END_IF437:
//}
	jmp END_IF434
ELSE434:
//if begin
//call type_match
//cast to (int*)
//cast to (char*)
//cast to (struct Token**)
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
	je ELSE438
//{ (2430)
	leaq L_.str.192(%rip), %rax
	movq %rax, -280(%rbp) // s = rax
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Token**)
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
	je ELSE439
	leaq L_.str.208(%rip), %rax
	movq %rax, -280(%rbp) // s = rax
	jmp END_IF439
ELSE439:
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Token**)
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
	je ELSE440
	leaq L_.str.209(%rip), %rax
	movq %rax, -280(%rbp) // s = rax
	jmp END_IF440
ELSE440:
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Token**)
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
	je ELSE441
	leaq L_.str.72(%rip), %rax
	movq %rax, -280(%rbp) // s = rax
	jmp END_IF441
ELSE441:
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Token**)
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
	je ELSE442
	leaq L_.str.210(%rip), %rax
	movq %rax, -280(%rbp) // s = rax
	jmp END_IF442
ELSE442:
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Token**)
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
	je ELSE443
	leaq L_.str.211(%rip), %rax
	movq %rax, -280(%rbp) // s = rax
	jmp END_IF443
ELSE443:
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Token**)
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
	je ELSE444
	leaq L_.str.212(%rip), %rax
	movq %rax, -280(%rbp) // s = rax
	jmp END_IF444
ELSE444:
END_IF444:
END_IF443:
END_IF442:
END_IF441:
END_IF440:
END_IF439:
//call out
	leaq L_.str.213(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.214(%rip), %rax
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
	leaq L_.str.215(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.195(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//}
	jmp END_IF438
ELSE438:
END_IF438:
END_IF434:
END_IF433:
END_IF432:
END_IF431:
//if begin
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Node**)
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
	je AND_OR446
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Node**)
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
AND_OR446:
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR447
//cast to (int*)
//cast to (char*)
//cast to (struct Token**)
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
AND_OR447:
	cmpq $0, %rax
	je ELSE445
//{ (2452)
//call out
	leaq L_.str.216(%rip), %rax
	pushq %rax // 308
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Node**)
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
	leaq L_.str.205(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.206(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//}
	jmp END_IF445
ELSE445:
END_IF445:
//}
END_IF422:
//}
	jmp END_IF421
ELSE421:
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
	je ELSE448
//{ (2460)
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Node**)
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
	je ELSE449
//cast to (struct Node**)
//cast to (char*)
//cast to (struct Node**)
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
//cast to (struct Node**)
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
	jmp END_IF449
ELSE449:
END_IF449:
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Node**)
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
	je ELSE450
//{ (2464)
//call gen
//cast to (struct Node**)
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
//cast to (struct Type**)
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
	je ELSE451
//{ (2467)
//call push
	leaq L_.str.79(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _push
	addq $4, %rsp // 300
//call gen
//cast to (struct Node**)
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
	leaq L_.str.95(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _pop
	addq $4, %rsp // 300
//call out
	leaq L_.str.217(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.218(%rip), %rax
	pushq %rax // 308
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
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
	leaq L_.str.219(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//}
	jmp END_IF451
ELSE451:
//{ (2477)
//call push
	leaq L_.str.79(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _push
	addq $4, %rsp // 300
//call gen
//cast to (struct Node**)
//cast to (char*)
//cast to (struct Node**)
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
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Node**)
//cast to (char*)
//cast to (struct Node**)
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
	je ELSE452
//call error_token
//cast to (struct Token**)
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
	leaq L_.str.179(%rip), %rax
	pushq %rax // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _error_token
	addq $4, %rsp // 300
	jmp END_IF452
ELSE452:
END_IF452:
//call pop
	leaq L_.str.107(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _pop
	addq $4, %rsp // 300
//call out
	leaq L_.str.220(%rip), %rax
	pushq %rax // 308
//call get_inst_suffix
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
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
	leaq L_.str.107(%rip), %rax
	pushq %rax // 324
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
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
END_IF451:
//}
	jmp END_IF450
ELSE450:
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Node**)
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
	je ELSE453
//{ (2491)
//call gen
//cast to (struct Node**)
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
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Var**)
//cast to (char*)
//cast to (struct Node**)
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
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Node**)
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
//cast to (struct Type**)
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
	je ELSE454
//call error_token
//cast to (struct Token**)
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
	leaq L_.str.221(%rip), %rax
	pushq %rax // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _error_token
	addq $4, %rsp // 300
	jmp END_IF454
ELSE454:
END_IF454:
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Var**)
//cast to (char*)
//cast to (struct Node**)
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
	je ELSE455
//{ (2500)
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
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
	jmp END_IF456
ELSE456:
END_IF456:
//call out
	leaq L_.str.222(%rip), %rax
	pushq %rax // 308
//call get_inst_suffix
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
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
	leaq L_.str.79(%rip), %rax
	pushq %rax // 324
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
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
//cast to (struct Var**)
//cast to (char*)
//cast to (struct Node**)
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
	jmp END_IF455
ELSE455:
//{ (2508)
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
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
	je ELSE457
//{ (2510)
//call out
	leaq L_.str.223(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.224(%rip), %rax
	pushq %rax // 308
//cast to (int*)
//cast to (char*)
//cast to (struct Var**)
//cast to (char*)
//cast to (struct Node**)
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
	leaq L_.str.225(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.218(%rip), %rax
	pushq %rax // 308
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Var**)
//cast to (char*)
//cast to (struct Node**)
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
	leaq L_.str.219(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//}
	jmp END_IF457
ELSE457:
//{ (2519)
//call out
	leaq L_.str.226(%rip), %rax
	pushq %rax // 308
//call get_inst_suffix
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
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
	leaq L_.str.79(%rip), %rax
	pushq %rax // 324
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
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
//cast to (struct Var**)
//cast to (char*)
//cast to (struct Node**)
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
//cast to (struct Var**)
//cast to (char*)
//cast to (struct Node**)
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
END_IF457:
//}
END_IF455:
//}
	jmp END_IF453
ELSE453:
END_IF453:
END_IF450:
//}
	jmp END_IF448
ELSE448:
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
	je ELSE458
//{ (2530)
//if begin
	movslq _loop_counter(%rip), %rax
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE459
//call error_token
//cast to (struct Token**)
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
	leaq L_.str.227(%rip), %rax
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
	movslq _curr_loop_is_for(%rip), %rax
	cmpq $0, %rax
	je ELSE460
//call out
	leaq L_.str.228(%rip), %rax
	pushq %rax // 308
	movslq _curr_loop_label(%rip), %rax
	pushq %rax // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
	jmp END_IF460
ELSE460:
//call out
	leaq L_.str.143(%rip), %rax
	pushq %rax // 308
	movslq _curr_loop_label(%rip), %rax
	pushq %rax // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
END_IF460:
//}
	jmp END_IF458
ELSE458:
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
	je ELSE461
//{ (2539)
//if begin
	movslq _loop_counter(%rip), %rax
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE462
//call error_token
//cast to (struct Token**)
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
	leaq L_.str.229(%rip), %rax
	pushq %rax // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _error_token
	addq $4, %rsp // 300
	jmp END_IF462
ELSE462:
END_IF462:
//if begin
	movslq _curr_loop_is_for(%rip), %rax
	cmpq $0, %rax
	je ELSE463
//call out
	leaq L_.str.230(%rip), %rax
	pushq %rax // 308
	movslq _curr_loop_label(%rip), %rax
	pushq %rax // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
	jmp END_IF463
ELSE463:
//call out
	leaq L_.str.231(%rip), %rax
	pushq %rax // 308
	movslq _curr_loop_label(%rip), %rax
	pushq %rax // 316
	popq %rsi // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
END_IF463:
//}
	jmp END_IF461
ELSE461:
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
	je ELSE464
//{ (2548)
//call gen
//cast to (struct Node**)
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
//cast to (struct Token**)
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
	je ELSE465
//{ (2551)
//call out
	leaq L_.str.136(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.194(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.232(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.215(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.195(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//}
	jmp END_IF465
ELSE465:
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Token**)
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
	jne AND_OR467
//cast to (int*)
//cast to (char*)
//cast to (struct Token**)
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
AND_OR467:
	cmpq $0, %rax
	je ELSE466
//{ (2559)
//call push
	leaq L_.str.79(%rip), %rax
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
//cast to (struct Token**)
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
//cast to (struct Token**)
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
	je QUES468
	movq $1, %rax
	jmp QUES_END468
QUES468:
	movq $1, %rax
	xorq %r10, %r10
	subq %rax, %r10
	movq %r10, %rax
QUES_END468:
	pushq %rax // 308
//cast to (long*)
//cast to (char*)
//cast to (struct Token**)
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
//cast to (struct Token**)
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
//cast to (struct Node**)
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
//cast to (struct Node**)
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
//cast to (struct Node**)
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
//cast to (struct Token**)
//cast to (char*)
//cast to (struct Node**)
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
//cast to (struct Node**)
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
//cast to (struct Node**)
//cast to (char*)
//cast to (struct Node**)
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
//cast to (struct Node**)
//cast to (char*)
//cast to (struct Node**)
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
	leaq L_.str.79(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _pop
	addq $4, %rsp // 300
//}
	jmp END_IF466
ELSE466:
END_IF466:
END_IF465:
//}
	jmp END_IF464
ELSE464:
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
	je ELSE469
//{ (2579)
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
//cast to (struct Node**)
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
	leaq L_.str.136(%rip), %rax
	pushq %rax // 308
	popq %rdi // 300
	subq $4, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $4, %rsp // 300
//call out
	leaq L_.str.233(%rip), %rax
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
//cast to (struct Node**)
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
	leaq L_.str.234(%rip), %rax
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
	leaq L_.str.235(%rip), %rax
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
//cast to (struct Node**)
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
	leaq L_.str.236(%rip), %rax
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
	jmp END_IF469
ELSE469:
END_IF469:
END_IF464:
END_IF461:
END_IF458:
END_IF448:
END_IF421:
END_IF414:
END_IF412:
END_IF408:
END_IF402:
END_IF391:
END_IF379:
END_IF378:
END_IF376:
END_IF374:
END_IF373:
END_IF371:
END_IF370:
END_IF365:
END_IF364:
END_IF362:
END_IF353:
END_IF351:
//if begin
//cast to (struct Node**)
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
	je ELSE470
//call gen
//cast to (struct Node**)
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
	jmp END_IF470
ELSE470:
END_IF470:
//}
	addq $300, %rsp // 0
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

//void print(struct Node* node)
_print:
	pushq %rbp
	movq %rsp, %rbp
	subq $52, %rsp // 52
	movq %rdi, -8(%rbp) //node
//{ (2603)
//if begin
	movq -8(%rbp), %rax // node
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE471
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF471
ELSE471:
END_IF471:
//if begin
	movq -8(%rbp), %rax // node
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR473
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
AND_OR473:
	cmpq $0, %rax
	je ELSE472
//call printf
	leaq L_.str.237(%rip), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
	jmp END_IF472
ELSE472:
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
	je ELSE474
//{ (2609)
//cast to (struct Node**)
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
WHILE475:
	movq -16(%rbp), %rax // curr
	cmpq $0, %rax
	je WHILE_END475
//{ (2612)
//call print
	movq -16(%rbp), %rax // curr
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _print
	addq $12, %rsp // 52
//cast to (struct Node**)
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
	jmp WHILE475
WHILE_END475:
//}
	jmp END_IF474
ELSE474:
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
	je ELSE476
//{ (2618)
//call printf
	leaq L_.str.238(%rip), %rax
	pushq %rax // 60
//cast to (char**)
//cast to (char*)
//cast to (struct Token**)
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
FOR477:
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
	je FOR_END477
//{ (2621)
//call printf
	leaq L_.str.117(%rip), %rax
	pushq %rax // 60
//call get_type_str
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Var**)
//cast to (char*)
//cast to (struct Node*[])
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
//cast to (struct Var**)
//cast to (char*)
//cast to (struct Node*[])
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
	je ELSE478
//call printf
	leaq L_.str.118(%rip), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
	jmp END_IF478
ELSE478:
END_IF478:
//}
FOR_INC477:
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
	jmp FOR477
FOR_END477:
//call printf
	leaq L_.str.239(%rip), %rax
	pushq %rax // 60
//call get_type_str
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Func**)
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
//cast to (struct Token**)
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
//cast to (struct Node**)
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
	leaq L_.str.240(%rip), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
//}
	jmp END_IF476
ELSE476:
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
	je ELSE479
//{ (2631)
//call printf
	leaq L_.str.241(%rip), %rax
	pushq %rax // 60
	movslq _tab(%rip), %rax
	pushq %rax // 68
	leaq L_.str.192(%rip), %rax
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
//cast to (struct Node**)
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
WHILE480:
	movq -32(%rbp), %rax // curr
	cmpq $0, %rax
	je WHILE_END480
//{ (2636)
//call printf
	leaq L_.str.242(%rip), %rax
	pushq %rax // 60
	movslq _tab(%rip), %rax
	pushq %rax // 68
	leaq L_.str.192(%rip), %rax
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
	leaq L_.str.240(%rip), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
//cast to (struct Node**)
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
	jmp WHILE480
WHILE_END480:
	movslq _tab(%rip), %rax
	pushq %rax // 60
	movq $4, %rax
	movq %rax, %r10
	popq %rax // 52
	subq %r10, %rax
	movl %eax, _tab(%rip)
//call printf
	leaq L_.str.243(%rip), %rax
	pushq %rax // 60
	movslq _tab(%rip), %rax
	pushq %rax // 68
	leaq L_.str.192(%rip), %rax
	pushq %rax // 76
	popq %rdx // 68
	popq %rsi // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
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
	movq $18, %rax
	movq %rax, %r10
	popq %rax // 52
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE481
//{ (2646)
//cast to (struct Node**)
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
//call printf
	leaq L_.str.244(%rip), %rax
	pushq %rax // 60
//call get_type_str
//cast to (struct Type**)
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
WHILE482:
	movq -40(%rbp), %rax // curr
	cmpq $0, %rax
	je WHILE_END482
//{ (2651)
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Var**)
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
WHILE483:
	movq -48(%rbp), %rax // t
	pushq %rax // 60
//cast to (struct Type**)
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
	je WHILE_END483
//{ (2654)
//cast to (struct Type**)
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
	leaq L_.str.42(%rip), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
//}
	jmp WHILE483
WHILE_END483:
//if begin
//cast to (struct Node**)
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
	je ELSE484
//call printf
	leaq L_.str.245(%rip), %rax
	pushq %rax // 60
//cast to (char**)
//cast to (char*)
//cast to (struct Var**)
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
	jmp END_IF484
ELSE484:
//call print
//cast to (struct Node**)
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
END_IF484:
//if begin
//cast to (struct Node**)
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
	je ELSE485
//call printf
	leaq L_.str.118(%rip), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
	jmp END_IF485
ELSE485:
//call printf
	leaq L_.str.246(%rip), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
END_IF485:
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Var**)
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
	je ELSE486
//call printf
	leaq L_.str.240(%rip), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
	jmp END_IF486
ELSE486:
END_IF486:
//cast to (struct Node**)
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
	jmp WHILE482
WHILE_END482:
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
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 52
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE487
//{ (2673)
//call printf
	leaq L_.str.247(%rip), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
//if begin
//cast to (struct Node**)
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
	je ELSE488
//call print
//cast to (struct Node**)
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
	jmp END_IF488
ELSE488:
END_IF488:
//call printf
	leaq L_.str.246(%rip), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
//}
	jmp END_IF487
ELSE487:
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
	jne AND_OR490
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
AND_OR490:
	cmpq $0, %rax
	je ELSE489
//{ (2680)
//call printf
	leaq L_.str.248(%rip), %rax
	pushq %rax // 60
//call token_type_name
//cast to (int*)
//cast to (char*)
//cast to (struct Token**)
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
//cast to (struct Node**)
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
	leaq L_.str.119(%rip), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Node**)
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
	je ELSE491
//call printf
	leaq L_.str.242(%rip), %rax
	pushq %rax // 60
	movslq _tab(%rip), %rax
	pushq %rax // 68
	movq $4, %rax
	movq %rax, %r10
	popq %rax // 60
	addq %r10, %rax
	pushq %rax // 68
	leaq L_.str.192(%rip), %rax
	pushq %rax // 76
	popq %rdx // 68
	popq %rsi // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
	jmp END_IF491
ELSE491:
END_IF491:
//call print
//cast to (struct Node**)
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
//cast to (struct Node**)
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
	je ELSE492
//call printf
	leaq L_.str.240(%rip), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
	jmp END_IF492
ELSE492:
END_IF492:
//if begin
//cast to (struct Node**)
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
	je ELSE493
//{ (2690)
//call printf
	leaq L_.str.249(%rip), %rax
	pushq %rax // 60
	movslq _tab(%rip), %rax
	pushq %rax // 68
	leaq L_.str.192(%rip), %rax
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
//cast to (struct Node**)
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
	je ELSE494
//{ (2693)
//call printf
	leaq L_.str.240(%rip), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Node**)
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
	je ELSE495
//call printf
	leaq L_.str.242(%rip), %rax
	pushq %rax // 60
	movslq _tab(%rip), %rax
	pushq %rax // 68
	movq $4, %rax
	movq %rax, %r10
	popq %rax // 60
	addq %r10, %rax
	pushq %rax // 68
	leaq L_.str.192(%rip), %rax
	pushq %rax // 76
	popq %rdx // 68
	popq %rsi // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
	jmp END_IF495
ELSE495:
END_IF495:
//}
	jmp END_IF494
ELSE494:
END_IF494:
//call print
//cast to (struct Node**)
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
	jmp END_IF493
ELSE493:
END_IF493:
//}
	jmp END_IF489
ELSE489:
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
	je ELSE496
//{ (2702)
//call printf
	leaq L_.str.250(%rip), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
//call print
//cast to (struct Node**)
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
//cast to (struct Node**)
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
	jne AND_OR498
//cast to (int*)
//cast to (char*)
//cast to (struct Node**)
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
AND_OR498:
	cmpq $0, %rax
	je ELSE497
//call printf
	leaq L_.str.246(%rip), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
	jmp END_IF497
ELSE497:
END_IF497:
//call printf
	leaq L_.str.251(%rip), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
//call print
//cast to (struct Node**)
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
	leaq L_.str.252(%rip), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
//call print
//cast to (struct Node**)
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
	leaq L_.str.119(%rip), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Node**)
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
	je ELSE499
//call printf
	leaq L_.str.242(%rip), %rax
	pushq %rax // 60
	movslq _tab(%rip), %rax
	pushq %rax // 68
	movq $4, %rax
	movq %rax, %r10
	popq %rax // 60
	addq %r10, %rax
	pushq %rax // 68
	leaq L_.str.192(%rip), %rax
	pushq %rax // 76
	popq %rdx // 68
	popq %rsi // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
	jmp END_IF499
ELSE499:
END_IF499:
//call print
//cast to (struct Node**)
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
	jmp END_IF496
ELSE496:
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
	je ELSE500
//{ (2717)
//call print
//cast to (struct Node**)
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
	leaq L_.str.245(%rip), %rax
	pushq %rax // 60
//call token_type_name
//cast to (int*)
//cast to (char*)
//cast to (struct Token**)
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
	leaq L_.str.245(%rip), %rax
	pushq %rax // 60
//cast to (char**)
//cast to (char*)
//cast to (struct Token**)
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
	jmp END_IF500
ELSE500:
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
	je ELSE501
//call printf
	leaq L_.str.253(%rip), %rax
	pushq %rax // 60
//cast to (long*)
//cast to (char*)
//cast to (struct Token**)
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
	jmp END_IF501
ELSE501:
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
	je ELSE502
//call printf
	leaq L_.str.245(%rip), %rax
	pushq %rax // 60
//cast to (char**)
//cast to (char*)
//cast to (struct Var**)
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
	movq $19, %rax
	movq %rax, %r10
	popq %rax // 52
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE503
//call printf
	leaq L_.str.254(%rip), %rax
	pushq %rax // 60
//cast to (char**)
//cast to (char*)
//cast to (struct Token**)
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
	jmp END_IF503
ELSE503:
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
	je ELSE504
//{ (2729)
//call printf
	leaq L_.str.255(%rip), %rax
	pushq %rax // 60
//cast to (char**)
//cast to (char*)
//cast to (struct Token**)
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
FOR505:
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
	je FOR_END505
//{ (2732)
//call print
//cast to (struct Node*[])
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
	je ELSE506
//call printf
	leaq L_.str.118(%rip), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
	jmp END_IF506
ELSE506:
END_IF506:
//}
FOR_INC505:
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
	jmp FOR505
FOR_END505:
//call printf
	leaq L_.str.256(%rip), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
//}
	jmp END_IF504
ELSE504:
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
	jne AND_OR508
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
AND_OR508:
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR509
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
AND_OR509:
	cmpq $0, %rax
	je ELSE507
//{ (2740)
//call printf
	leaq L_.str.257(%rip), %rax
	pushq %rax // 60
//cast to (int*)
//cast to (char*)
//cast to (struct Token**)
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
//cast to (struct Node**)
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
	leaq L_.str.256(%rip), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
//}
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
	movq $22, %rax
	movq %rax, %r10
	popq %rax // 52
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE510
//{ (2746)
//call printf
	leaq L_.str.258(%rip), %rax
	pushq %rax // 60
//call get_type_str
//cast to (struct Type**)
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
//cast to (struct Node**)
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
	leaq L_.str.256(%rip), %rax
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
	movq $5, %rax
	movq %rax, %r10
	popq %rax // 52
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE511
//{ (2752)
//call print
//cast to (struct Node**)
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
	leaq L_.str.259(%rip), %rax
	pushq %rax // 60
//call token_type_name
//cast to (int*)
//cast to (char*)
//cast to (struct Token**)
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
//cast to (struct Node**)
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
	jmp END_IF511
ELSE511:
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
	je ELSE512
//{ (2758)
//call print
//cast to (struct Node**)
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
	leaq L_.str.259(%rip), %rax
	pushq %rax // 60
//call token_type_name
//cast to (int*)
//cast to (char*)
//cast to (struct Token**)
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
//cast to (struct Node**)
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
	jmp END_IF512
ELSE512:
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
	je ELSE513
//call printf
	leaq L_.str.260(%rip), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
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
	movq $21, %rax
	movq %rax, %r10
	popq %rax // 52
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE514
//call printf
	leaq L_.str.261(%rip), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
	jmp END_IF514
ELSE514:
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
	je ELSE515
//{ (2768)
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Token**)
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
	je ELSE516
//{ (2770)
//call printf
	leaq L_.str.262(%rip), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
//call print
//cast to (struct Node**)
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
	leaq L_.str.256(%rip), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
//}
	jmp END_IF516
ELSE516:
//{ (2776)
//call print
//cast to (struct Node**)
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
END_IF516:
//}
	jmp END_IF515
ELSE515:
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
	je ELSE517
//{ (2782)
//call printf
	leaq L_.str.263(%rip), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
//call print
//cast to (struct Node**)
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
	leaq L_.str.264(%rip), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
//call print
//cast to (struct Node**)
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
	leaq L_.str.265(%rip), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
//call print
//cast to (struct Node**)
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
	leaq L_.str.256(%rip), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
//}
	jmp END_IF517
ELSE517:
END_IF517:
END_IF515:
END_IF514:
END_IF513:
END_IF512:
END_IF511:
END_IF510:
END_IF507:
END_IF504:
END_IF503:
END_IF502:
END_IF501:
END_IF500:
END_IF496:
END_IF489:
END_IF487:
END_IF481:
END_IF479:
END_IF476:
END_IF474:
END_IF472:
//if begin
//cast to (struct Node**)
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
	je ELSE518
//{ (2792)
//call printf
	leaq L_.str.118(%rip), %rax
	pushq %rax // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 52
//call print
//cast to (struct Node**)
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
	jmp END_IF518
ELSE518:
END_IF518:
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
//{ (2800)
//cast to (char*)
	movq $0, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq %rax, -16(%rbp) // buffer = rax
//call fopen
	movq -8(%rbp), %rax // name
	pushq %rax // 40
	leaq L_.str.266(%rip), %rax
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
	je ELSE519
//{ (2805)
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
	je ELSE520
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
	jmp END_IF520
ELSE520:
END_IF520:
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
	jmp END_IF519
ELSE519:
END_IF519:
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
//{ (2819)
	leaq L_.str.267(%rip), %rax
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
	leaq L_.str.71(%rip), %rax
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
	leaq L_.str.268(%rip), %rax
	pushq %rax // 48
	popq %rdi // 40
	subq $8, %rsp // 48
	xorq %rax, %rax
	callq _out
	addq $8, %rsp // 40
//for init
	movq $0, %rax
	movl %eax, -20(%rbp) // i = rax
FOR521:
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
	je FOR_END521
//{ (2850)
//cast to (struct Node**)
//cast to (char*)
//cast to (struct Var*[])
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
//cast to (struct Node**)
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
	je AND_OR523
//cast to (int*)
//cast to (char*)
//cast to (struct Node**)
//cast to (char*)
//cast to (struct Node**)
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
AND_OR523:
	cmpq $0, %rax
	je ELSE522
//{ (2854)
//call printf
	leaq L_.str.269(%rip), %rax
	pushq %rax // 48
//cast to (char**)
//cast to (char*)
//cast to (struct Var**)
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
//cast to (struct Token**)
//cast to (char*)
//cast to (struct Node**)
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
//cast to (struct Token**)
//cast to (char*)
//cast to (struct Node**)
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
	leaq L_.str.270(%rip), %rax
	pushq %rax // 56
	popq %rsi // 48
	popq %rdi // 40
	subq $8, %rsp // 48
	xorq %rax, %rax
	callq _error_token
	addq $8, %rsp // 40
//}
	jmp END_IF522
ELSE522:
END_IF522:
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Var**)
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
	je ELSE524
//{ (2859)
//call out
	leaq L_.str.271(%rip), %rax
	pushq %rax // 48
//cast to (char**)
//cast to (char*)
//cast to (struct Var**)
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
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Var**)
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
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Var**)
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
	jmp END_IF524
ELSE524:
//{ (2864)
//call out
	leaq L_.str.272(%rip), %rax
	pushq %rax // 48
//cast to (char**)
//cast to (char*)
//cast to (struct Var**)
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
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Var**)
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
	je ELSE525
//call out
	leaq L_.str.273(%rip), %rax
	pushq %rax // 48
	movslq -36(%rbp), %rax // align
	pushq %rax // 56
	popq %rsi // 48
	popq %rdi // 40
	subq $8, %rsp // 48
	xorq %rax, %rax
	callq _out
	addq $8, %rsp // 40
	jmp END_IF525
ELSE525:
END_IF525:
//call fprintf
	movq _f(%rip), %rax // f
	pushq %rax // 48
	leaq L_.str.120(%rip), %rax
	pushq %rax // 56
//cast to (char**)
//cast to (char*)
//cast to (struct Var*[])
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
	leaq L_.str.274(%rip), %rax
	pushq %rax // 48
//call get_size_name
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Var*[])
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
//cast to (struct Node**)
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
	je QUES526
//cast to (long)
	movq $0, %rax
	jmp QUES_END526
QUES526:
//cast to (long*)
//cast to (char*)
//cast to (struct Token**)
//cast to (char*)
//cast to (struct Node**)
//cast to (char*)
//cast to (struct Node**)
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
QUES_END526:
	pushq %rax // 64
	popq %rdx // 56
	popq %rsi // 48
	popq %rdi // 40
	subq $8, %rsp // 48
	xorq %rax, %rax
	callq _out
	addq $8, %rsp // 40
//}
END_IF524:
//}
FOR_INC521:
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
	jmp FOR521
FOR_END521:
//for init
	movq $0, %rax
	movl %eax, -40(%rbp) // i = rax
FOR527:
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
	je FOR_END527
//{ (2876)
//call fprintf
	movq _f(%rip), %rax // f
	pushq %rax // 48
	leaq L_.str.275(%rip), %rax
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
	leaq L_.str.276(%rip), %rax
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
FOR_INC527:
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
	jmp FOR527
FOR_END527:
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
	.asciz "struct "
L_.str.42:
	.asciz "*"
L_.str.43:
	.asciz "[]"
L_.str.44:
	.asciz "unknown"
L_.str.45:
	.asciz "%s\n"
L_.str.46:
	.asciz "invalid operand for '%s' operator"
L_.str.47:
	.asciz "invalid operand for '&'"
L_.str.48:
	.asciz "derefrencing a non-pointer"
L_.str.49:
	.asciz "derefrencing a void pointer"
L_.str.50:
	.asciz "invalid operand for '-'"
L_.str.51:
	.asciz "invalid operands to binary expression ('%s' and '%s')"
L_.str.52:
	.asciz "ASSERT"
L_.str.53:
	.asciz "empty structs are not handled yet"
L_.str.54:
	.asciz "declared struct %s\n"
L_.str.55:
	.asciz "expected a function or variable declaration"
L_.str.56:
	.asciz "unknown type"
L_.str.57:
	.asciz "declared struct '%s': (size=%d)\n"
L_.str.58:
	.asciz "\t%s %s\n"
L_.str.59:
	.asciz "invalid type"
L_.str.60:
	.asciz "parse function %s\n"
L_.str.61:
	.asciz "variable type can't be void"
L_.str.62:
	.asciz "invalid initiliazer"
L_.str.63:
	.asciz "expression is not assignable"
L_.str.64:
	.asciz "expected struct pointer"
L_.str.65:
	.asciz "expected struct type"
L_.str.66:
	.asciz "undeclared struct member"
L_.str.67:
	.asciz "undeclared function \"%s\""
L_.str.68:
	.asciz "undeclared variable `%s`\n"
L_.str.69:
	.asciz "expected an expression"
L_.str.70:
	.asciz "b"
L_.str.71:
	.asciz "w"
L_.str.72:
	.asciz "l"
L_.str.73:
	.asciz "q"
L_.str.74:
	.asciz "byte"
L_.str.75:
	.asciz "quad"
L_.str.76:
	.asciz "al"
L_.str.77:
	.asciz "ax"
L_.str.78:
	.asciz "eax"
L_.str.79:
	.asciz "rax"
L_.str.80:
	.asciz "dh"
L_.str.81:
	.asciz "dx"
L_.str.82:
	.asciz "edx"
L_.str.83:
	.asciz "rdx"
L_.str.84:
	.asciz "ch"
L_.str.85:
	.asciz "cx"
L_.str.86:
	.asciz "ecx"
L_.str.87:
	.asciz "rcx"
L_.str.88:
	.asciz "dil"
L_.str.89:
	.asciz "di"
L_.str.90:
	.asciz "edi"
L_.str.91:
	.asciz "rdi"
L_.str.92:
	.asciz "sil"
L_.str.93:
	.asciz "si"
L_.str.94:
	.asciz "esi"
L_.str.95:
	.asciz "rsi"
L_.str.96:
	.asciz "r8b"
L_.str.97:
	.asciz "r8w"
L_.str.98:
	.asciz "r8d"
L_.str.99:
	.asciz "r8"
L_.str.100:
	.asciz "r9b"
L_.str.101:
	.asciz "r9w"
L_.str.102:
	.asciz "r9d"
L_.str.103:
	.asciz "r9"
L_.str.104:
	.asciz "r10b"
L_.str.105:
	.asciz "r10w"
L_.str.106:
	.asciz "r10d"
L_.str.107:
	.asciz "r10"
L_.str.108:
	.asciz "r11b"
L_.str.109:
	.asciz "r11w"
L_.str.110:
	.asciz "r11d"
L_.str.111:
	.asciz "r11"
L_.str.112:
	.asciz "pushq %%%s // %d"
L_.str.113:
	.asciz "popq %%%s // %d"
L_.str.114:
	.asciz "main"
L_.str.115:
	.asciz ".globl\t_main\n"
L_.str.116:
	.asciz "//%s %s("
L_.str.117:
	.asciz "%s %s"
L_.str.118:
	.asciz ", "
L_.str.119:
	.asciz ")\n"
L_.str.120:
	.asciz "_%s:\n"
L_.str.121:
	.asciz "pushq %%rbp"
L_.str.122:
	.asciz "movq %%rsp, %%rbp"
L_.str.123:
	.asciz "subq $%d, %%rsp // %d"
L_.str.124:
	.asciz "mov%s %%%s, -%d(%%rbp) //%s"
L_.str.125:
	.asciz "movq %d(%%rbp), %%rax"
L_.str.126:
	.asciz "mov%s %%%s, -%d(%%rbp) // %s"
L_.str.127:
	.asciz "addq $%d, %%rsp // %d"
L_.str.128:
	.asciz "movq $0, %%rax"
L_.str.129:
	.asciz "movq %%rbp, %%rsp"
L_.str.130:
	.asciz "popq %%rbp"
L_.str.131:
	.asciz "ret\n"
L_.str.132:
	.asciz "//{ (%d)\n"
L_.str.133:
	.asciz "//}\n"
L_.str.134:
	.asciz "ret"
L_.str.135:
	.asciz "//if begin\n"
L_.str.136:
	.asciz "cmpq $0, %%rax"
L_.str.137:
	.asciz "je ELSE%d"
L_.str.138:
	.asciz "jmp END_IF%d"
L_.str.139:
	.asciz "ELSE%d:\n"
L_.str.140:
	.asciz "END_IF%d:\n"
L_.str.141:
	.asciz "WHILE%d:\n"
L_.str.142:
	.asciz "je WHILE_END%d"
L_.str.143:
	.asciz "jmp WHILE%d"
L_.str.144:
	.asciz "WHILE_END%d:\n"
L_.str.145:
	.asciz "//for init\n"
L_.str.146:
	.asciz "FOR%d:\n"
L_.str.147:
	.asciz "je FOR_END%d"
L_.str.148:
	.asciz "FOR_INC%d:\n"
L_.str.149:
	.asciz "jmp FOR%d"
L_.str.150:
	.asciz "FOR_END%d:\n"
L_.str.151:
	.asciz "movabsq $%lld, %%rax"
L_.str.152:
	.asciz "movq $%lld, %%rax"
L_.str.153:
	.asciz "leaq L_.str.%d(%%rip), %%rax"
L_.str.154:
	.asciz "movq _%s@GOTPCREL(%%rip), %%rax"
L_.str.155:
	.asciz "movq %%rbp, %%rax // %s"
L_.str.156:
	.asciz "subq $%d, %%rax"
L_.str.157:
	.asciz "leaq _%s(%%rip), %%rax"
L_.str.158:
	.asciz "movz%sq _%s(%%rip), %%rax // %s"
L_.str.159:
	.asciz "mov%s _%s(%%rip), %%%s // %s"
L_.str.160:
	.asciz "movs%sq _%s(%%rip), %%rax"
L_.str.161:
	.asciz "movq _%s(%%rip), %%rax"
L_.str.162:
	.asciz "movz%sq -%d(%%rbp), %%rax // %s"
L_.str.163:
	.asciz "mov%s -%d(%%rbp), %%%s // %s"
L_.str.164:
	.asciz "movs%sq -%d(%%rbp), %%rax // %s"
L_.str.165:
	.asciz "movq -%d(%%rbp), %%rax // %s"
L_.str.166:
	.asciz "//%.*s"
L_.str.167:
	.asciz "movq %%rax, %%r12"
L_.str.168:
	.asciz "cmpq %%r12, %%rax"
L_.str.169:
	.asciz "je ASSERT_OK%d"
L_.str.170:
	.asciz "movq $%d, %%rdi"
L_.str.171:
	.asciz "movq %%r12, %%rsi"
L_.str.172:
	.asciz "movq %%rax, %%rdx"
L_.str.173:
	.asciz "callq _error"
L_.str.174:
	.asciz "ASSERT_OK%d:\n"
L_.str.175:
	.asciz "//call %s\n"
L_.str.176:
	.asciz "xorq %%rax, %%rax"
L_.str.177:
	.asciz "callq _%s"
L_.str.178:
	.asciz "movq %%rbp, %%rax // &%s"
L_.str.179:
	.asciz "dereferencing a non-pointer lvalue"
L_.str.180:
	.asciz "movs%sq (%%rax), %%rax"
L_.str.181:
	.asciz "movq (%%rax), %%rax"
L_.str.182:
	.asciz "negating a pointer"
L_.str.183:
	.asciz "xorq %%r10, %%r10"
L_.str.184:
	.asciz "subq %%rax, %%r10"
L_.str.185:
	.asciz "movq %%r10, %%rax"
L_.str.186:
	.asciz "//cast to (%s)\n"
L_.str.187:
	.asciz "movs%sq %%%s, %%r10"
L_.str.188:
	.asciz "mov%s %%%s, %%%s"
L_.str.189:
	.asciz "movs%sq %%%s, %%rax"
L_.str.190:
	.asciz "movq $%d, %%rax"
L_.str.191:
	.asciz "j%se AND_OR%d"
L_.str.192:
	.asciz ""
L_.str.193:
	.asciz "n"
L_.str.194:
	.asciz "setne %%al"
L_.str.195:
	.asciz "movzbq %%al, %%rax"
L_.str.196:
	.asciz "AND_OR%d:\n"
L_.str.197:
	.asciz "movq %%rax, %%r10"
L_.str.198:
	.asciz "imulq $%d, %%r10"
L_.str.199:
	.asciz "imulq $%d, %%rax"
L_.str.200:
	.asciz "addq %%r10, %%rax"
L_.str.201:
	.asciz "subq %%r10, %%rax"
L_.str.202:
	.asciz "imulq %%r10, %%rax"
L_.str.203:
	.asciz "cqto"
L_.str.204:
	.asciz "idivq %%r10"
L_.str.205:
	.asciz "xorq %%rdx, %%rdx"
L_.str.206:
	.asciz "divq %%r10"
L_.str.207:
	.asciz "movq %%rdx, %%rax"
L_.str.208:
	.asciz "e"
L_.str.209:
	.asciz "ne"
L_.str.210:
	.asciz "g"
L_.str.211:
	.asciz "le"
L_.str.212:
	.asciz "ge"
L_.str.213:
	.asciz "cmpq %%r10, %%rax"
L_.str.214:
	.asciz "set%s %%al"
L_.str.215:
	.asciz "andb $1, %%al"
L_.str.216:
	.asciz "movq $%d, %%r10"
L_.str.217:
	.asciz "movq %%rax, %%rdi"
L_.str.218:
	.asciz "movq $%d, %%rdx"
L_.str.219:
	.asciz "callq _memcpy"
L_.str.220:
	.asciz "mov%s %%%s, (%%rax)"
L_.str.221:
	.asciz "array is constant"
L_.str.222:
	.asciz "mov%s %%%s, _%s(%%rip)"
L_.str.223:
	.asciz "movq %%rbp, %%rdi"
L_.str.224:
	.asciz "subq $%d, %%rdi"
L_.str.225:
	.asciz "movq %%rax, %%rsi"
L_.str.226:
	.asciz "mov%s %%%s, -%d(%%rbp) // %s = rax"
L_.str.227:
	.asciz "'continue' statement not in loop statement"
L_.str.228:
	.asciz "jmp FOR_INC%d"
L_.str.229:
	.asciz "'break' statement not in loop statement"
L_.str.230:
	.asciz "jmp FOR_END%d"
L_.str.231:
	.asciz "jmp WHILE_END%d"
L_.str.232:
	.asciz "xorb $-1, %%al"
L_.str.233:
	.asciz "je QUES%d"
L_.str.234:
	.asciz "jmp QUES_END%d"
L_.str.235:
	.asciz "QUES%d:\n"
L_.str.236:
	.asciz "QUES_END%d:\n"
L_.str.237:
	.asciz "(NULL)"
L_.str.238:
	.asciz "\nfunction %s("
L_.str.239:
	.asciz ") -> %s  (%d)\n"
L_.str.240:
	.asciz "\n"
L_.str.241:
	.asciz "%*s{\n"
L_.str.242:
	.asciz "%*s"
L_.str.243:
	.asciz "%*s}\n"
L_.str.244:
	.asciz "%s "
L_.str.245:
	.asciz "%s"
L_.str.246:
	.asciz ";"
L_.str.247:
	.asciz "return "
L_.str.248:
	.asciz "%s ("
L_.str.249:
	.asciz "%*selse "
L_.str.250:
	.asciz "for ("
L_.str.251:
	.asciz " "
L_.str.252:
	.asciz " ;"
L_.str.253:
	.asciz "%lld"
L_.str.254:
	.asciz "\"%s\""
L_.str.255:
	.asciz "%s("
L_.str.256:
	.asciz ")"
L_.str.257:
	.asciz "%c("
L_.str.258:
	.asciz "((%s)"
L_.str.259:
	.asciz " %s "
L_.str.260:
	.asciz "continue ;"
L_.str.261:
	.asciz "break ;"
L_.str.262:
	.asciz "!("
L_.str.263:
	.asciz "(("
L_.str.264:
	.asciz ") ? ("
L_.str.265:
	.asciz ") : ("
L_.str.266:
	.asciz "r"
L_.str.267:
	.asciz "final.c"
L_.str.268:
	.asciz ".section	__DATA,__data"
L_.str.269:
	.asciz "error name: %s %c\n"
L_.str.270:
	.asciz "todo: evaluate constant expressions\n"
L_.str.271:
	.asciz ".comm _%s,%d,%d\n"
L_.str.272:
	.asciz ".globl _%s"
L_.str.273:
	.asciz ".p2align %d"
L_.str.274:
	.asciz ".%s %d\n"
L_.str.275:
	.asciz "L_.str.%d:\n"
L_.str.276:
	.asciz ".asciz \"%s\""
