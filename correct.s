//void assert(int x)
_assert:
	pushq %rbp
	movq %rsp, %rbp
	subq $287054888, %rsp // 287054888
	movl %edi, -4(%rbp) //x
//{ (233)
//if begin
	movslq -4(%rbp), %rax // x
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE0
//call printf
	leaq L_.str.0(%rip), %rax
	pushq %rax // 287054896
	popq %rdi // 287054888
	subq $8, %rsp // 287054896
	xorq %rax, %rax
	callq _printf
	addq $8, %rsp // 287054888
	jmp END_IF0
ELSE0:
END_IF0:
//}
	addq $287054888, %rsp // 0
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

//char* token_type_name(int type)
_token_type_name:
	pushq %rbp
	movq %rsp, %rbp
	subq $12, %rsp // 12
	movl %edi, -4(%rbp) //type
//{ (285)
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
	movq $257, %rax
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
	movq $274, %rax
	movq %rax, %r10
	popq %rax // 12
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE3
	leaq L_.str.3(%rip), %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF3
ELSE3:
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
	je ELSE4
//{ (293)
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
	je ELSE5
//{ (295)
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
	jmp END_IF5
ELSE5:
END_IF5:
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
	jmp END_IF4
ELSE4:
//{ (303)
//for init
	movq $0, %rax
	movl %eax, -8(%rbp) // i = rax
FOR6:
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
	je FOR_END6
//{ (305)
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
	je ELSE7
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
	jmp END_IF7
ELSE7:
END_IF7:
//}
FOR_INC6:
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
	jmp FOR6
FOR_END6:
//for init
	movq $0, %rax
	movl %eax, -12(%rbp) // i = rax
FOR8:
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
	je FOR_END8
//{ (310)
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
	je ELSE9
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
	jmp END_IF9
ELSE9:
END_IF9:
//}
FOR_INC8:
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
	jmp FOR8
FOR_END8:
//}
END_IF4:
END_IF3:
END_IF2:
END_IF1:
//call assert
	movq $0, %rax
	pushq %rax // 20
	popq %rdi // 12
	subq $4, %rsp // 16
	xorq %rax, %rax
	callq _assert
	addq $4, %rsp // 12
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
//{ (319)
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
	subq $12, %rsp // 12
	movb %dil, -1(%rbp) //c
//{ (328)
//if begin
//cast to (int)
	movsbq -1(%rbp), %rax // c
	pushq %rax // 20
	movq $110, %rax
	movq %rax, %r10
	popq %rax // 12
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE10
	movq $10, %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF10
ELSE10:
END_IF10:
//if begin
//cast to (int)
	movsbq -1(%rbp), %rax // c
	pushq %rax // 20
	movq $116, %rax
	movq %rax, %r10
	popq %rax // 12
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE11
	movq $9, %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF11
ELSE11:
END_IF11:
//if begin
//cast to (int)
	movsbq -1(%rbp), %rax // c
	pushq %rax // 20
	movq $114, %rax
	movq %rax, %r10
	popq %rax // 12
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE12
	movq $13, %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF12
ELSE12:
END_IF12:
//if begin
//cast to (int)
	movsbq -1(%rbp), %rax // c
	pushq %rax // 20
	movq $118, %rax
	movq %rax, %r10
	popq %rax // 12
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE13
	movq $11, %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF13
ELSE13:
END_IF13:
//if begin
//cast to (int)
	movsbq -1(%rbp), %rax // c
	pushq %rax // 20
	movq $102, %rax
	movq %rax, %r10
	popq %rax // 12
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE14
	movq $12, %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF14
ELSE14:
END_IF14:
//if begin
//cast to (int)
	movsbq -1(%rbp), %rax // c
	pushq %rax // 20
	movq $97, %rax
	movq %rax, %r10
	popq %rax // 12
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE15
	movq $7, %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF15
ELSE15:
END_IF15:
//if begin
//cast to (int)
	movsbq -1(%rbp), %rax // c
	pushq %rax // 20
	movq $98, %rax
	movq %rax, %r10
	popq %rax // 12
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE16
	movq $8, %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF16
ELSE16:
END_IF16:
	movsbq -1(%rbp), %rax // c
	movq %rbp, %rsp
	popq %rbp
	ret
//}
	addq $12, %rsp // 0
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
//{ (343)
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
//{ (350)
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
//{ (357)
//call add_multi_char_token
	leaq L_.str.4(%rip), %rax
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
	leaq L_.str.5(%rip), %rax
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
	leaq L_.str.6(%rip), %rax
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
	leaq L_.str.7(%rip), %rax
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
	leaq L_.str.8(%rip), %rax
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
	leaq L_.str.9(%rip), %rax
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
	leaq L_.str.10(%rip), %rax
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
	leaq L_.str.11(%rip), %rax
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
	leaq L_.str.12(%rip), %rax
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
	leaq L_.str.13(%rip), %rax
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
	leaq L_.str.14(%rip), %rax
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
	leaq L_.str.15(%rip), %rax
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
	leaq L_.str.16(%rip), %rax
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
	leaq L_.str.17(%rip), %rax
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
	leaq L_.str.18(%rip), %rax
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
	leaq L_.str.19(%rip), %rax
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
	leaq L_.str.20(%rip), %rax
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
	leaq L_.str.21(%rip), %rax
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
	leaq L_.str.1(%rip), %rax
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
	leaq L_.str.22(%rip), %rax
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
	leaq L_.str.23(%rip), %rax
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
	leaq L_.str.24(%rip), %rax
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
	leaq L_.str.25(%rip), %rax
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
	leaq L_.str.26(%rip), %rax
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
	leaq L_.str.27(%rip), %rax
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
	leaq L_.str.28(%rip), %rax
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
	leaq L_.str.29(%rip), %rax
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
	leaq L_.str.30(%rip), %rax
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
	leaq L_.str.25(%rip), %rax
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
	leaq L_.str.31(%rip), %rax
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
	leaq L_.str.32(%rip), %rax
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
	leaq L_.str.33(%rip), %rax
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
//call assert
	movq -8(%rbp), %rax // s
	pushq %rax // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _assert
	addq $8, %rsp // 72
WHILE17:
	movq -8(%rbp), %rax // s
	pushq %rax // 80
	movslq -12(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 72
	imulq $1, %r10
	addq %r10, %rax
	movsbq (%rax), %rax
	cmpq $0, %rax
	je WHILE_END17
//{ (397)
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
WHILE18:
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
	je WHILE_END18
//{ (401)
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
	je ELSE19
//{ (403)
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
	jmp END_IF19
ELSE19:
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
END_IF19:
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
	jmp WHILE18
WHILE_END18:
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
	je ELSE20
	jmp WHILE_END17
	jmp END_IF20
ELSE20:
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
	movq $35, %rax
	movq %rax, %r10
	popq %rax // 72
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE21
//{ (414)
WHILE22:
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
	je WHILE_END22
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
	jmp WHILE22
WHILE_END22:
	jmp WHILE17
//}
	jmp END_IF21
ELSE21:
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
	je AND_OR24
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
AND_OR24:
	cmpq $0, %rax
	je ELSE23
//{ (420)
WHILE25:
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
	je AND_OR26
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
AND_OR26:
	cmpq $0, %rax
	je WHILE_END25
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
	jmp WHILE25
WHILE_END25:
	jmp WHILE17
//}
	jmp END_IF23
ELSE23:
END_IF23:
END_IF21:
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
	je AND_OR28
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
AND_OR28:
	cmpq $0, %rax
	je ELSE27
//{ (426)
	movslq -12(%rbp), %rax // i
	pushq %rax // 80
	movq $2, %rax
	movq %rax, %r10
	popq %rax // 72
	addq %r10, %rax
	movl %eax, -12(%rbp) // i = rax
WHILE29:
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
	je AND_OR30
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
	jne AND_OR31
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
AND_OR31:
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR30:
	cmpq $0, %rax
	je WHILE_END29
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
	jmp WHILE29
WHILE_END29:
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
	je ELSE32
	movslq -12(%rbp), %rax // i
	pushq %rax // 80
	movq $2, %rax
	movq %rax, %r10
	popq %rax // 72
	addq %r10, %rax
	movl %eax, -12(%rbp) // i = rax
	jmp END_IF32
ELSE32:
//call error
	leaq L_.str.34(%rip), %rax
	pushq %rax // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _error
	addq $8, %rsp // 72
END_IF32:
	jmp WHILE17
//}
	jmp END_IF27
ELSE27:
END_IF27:
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
	je ELSE33
//{ (442)
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
WHILE34:
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
	je WHILE_END34
//{ (447)
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
	jmp WHILE34
WHILE_END34:
//}
	jmp END_IF33
ELSE33:
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
	je ELSE35
//{ (453)
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
	je ELSE36
//{ (457)
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
	jmp END_IF36
ELSE36:
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
	je ELSE37
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
	jmp END_IF37
ELSE37:
END_IF37:
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
	jmp END_IF35
ELSE35:
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
	je ELSE38
//{ (469)
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
WHILE39:
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
	je AND_OR40
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
	jne AND_OR41
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
AND_OR41:
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR40:
	cmpq $0, %rax
	je WHILE_END39
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
	jmp WHILE39
WHILE_END39:
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
	je ELSE42
//call error_token
	movq -32(%rbp), %rax // token
	pushq %rax // 80
	leaq L_.str.36(%rip), %rax
	pushq %rax // 88
	popq %rsi // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _error_token
	addq $8, %rsp // 72
	jmp END_IF42
ELSE42:
END_IF42:
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
	jmp END_IF38
ELSE38:
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
	jne AND_OR44
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
AND_OR44:
	cmpq $0, %rax
	je ELSE43
//{ (485)
	movslq -12(%rbp), %rax // i
	movl %eax, -52(%rbp) // k = rax
WHILE45:
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
	jne AND_OR46
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
AND_OR46:
	cmpq $0, %rax
	je WHILE_END45
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
	jmp WHILE45
WHILE_END45:
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
FOR47:
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
	je FOR_END47
//{ (494)
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
	je ELSE48
//{ (496)
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
	jmp FOR_END47
//}
	jmp END_IF48
ELSE48:
END_IF48:
//}
FOR_INC47:
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
	jmp FOR47
FOR_END47:
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
	jmp END_IF43
ELSE43:
//{ (504)
//for init
	movq $0, %rax
	movl %eax, -72(%rbp) // k = rax
FOR49:
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
	je FOR_END49
//{ (506)
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
	je ELSE50
//{ (509)
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
	jmp FOR_END49
//}
	jmp END_IF50
ELSE50:
END_IF50:
//}
FOR_INC49:
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
	jmp FOR49
FOR_END49:
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
	je ELSE51
//{ (516)
//if begin
//call strchr
	leaq L_.str.37(%rip), %rax
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
	je ELSE52
//{ (518)
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
	jmp END_IF52
ELSE52:
//{ (523)
//call error_token
	movq -32(%rbp), %rax // token
	pushq %rax // 80
	leaq L_.str.38(%rip), %rax
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
END_IF52:
//}
	jmp END_IF51
ELSE51:
END_IF51:
//}
END_IF43:
END_IF38:
END_IF35:
END_IF33:
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
	jmp WHILE17
WHILE_END17:
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
	je ELSE53
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
	jmp END_IF53
ELSE53:
END_IF53:
//call printf
	leaq L_.str.39(%rip), %rax
	pushq %rax // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _printf
	addq $8, %rsp // 72
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
//{ (543)
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
//{ (548)
	movq $0, %rax
	movl %eax, -16(%rbp) // i = rax
WHILE54:
	movq -8(%rbp), %rax // s
	pushq %rax // 24
	movslq -16(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 16
	imulq $1, %r10
	addq %r10, %rax
	movsbq (%rax), %rax
	cmpq $0, %rax
	je WHILE_END54
//{ (553)
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
	je ELSE55
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
	jmp END_IF55
ELSE55:
END_IF55:
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
	jmp WHILE54
WHILE_END54:
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
//{ (564)
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
//{ (570)
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
//{ (577)
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
//{ (582)
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
	jne AND_OR57
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
AND_OR57:
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR58
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
AND_OR58:
	cmpq $0, %rax
	je ELSE56
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
	jmp END_IF56
ELSE56:
END_IF56:
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
	jne AND_OR60
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
AND_OR60:
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR61
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
AND_OR61:
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR62
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
AND_OR62:
	cmpq $0, %rax
	je ELSE59
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
	jmp END_IF59
ELSE59:
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
	je ELSE63
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
	movq $4, %rax
	movq %rax, %r10
	popq %rax // 16
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE64
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
	jmp END_IF64
ELSE64:
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
	je ELSE65
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
	jmp END_IF65
ELSE65:
END_IF65:
END_IF64:
END_IF63:
END_IF59:
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
//{ (599)
//if begin
	movq -8(%rbp), %rax // t1
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR67
	movq -16(%rbp), %rax // t2
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR67:
	cmpq $0, %rax
	je ELSE66
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF66
ELSE66:
END_IF66:
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
	je ELSE68
	movq $1, %rax
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
	je ELSE69
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF69
ELSE69:
END_IF69:
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
	je ELSE70
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF70
ELSE70:
END_IF70:
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
	je ELSE71
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
	jmp END_IF71
ELSE71:
END_IF71:
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
//{ (614)
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
//{ (622)
//for init
	movq $0, %rax
	movl %eax, -12(%rbp) // i = rax
FOR72:
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
	je FOR_END72
//{ (624)
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
	je ELSE73
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
	jmp END_IF73
ELSE73:
END_IF73:
//}
FOR_INC72:
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
	jmp FOR72
FOR_END72:
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
//{ (632)
	movq _curr_scope(%rip), %rax // curr_scope
	movq %rax, -16(%rbp) // scope = rax
WHILE74:
	movq -16(%rbp), %rax // scope
	cmpq $0, %rax
	je WHILE_END74
//{ (635)
//for init
	movq $0, %rax
	movl %eax, -20(%rbp) // i = rax
FOR75:
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
	je FOR_END75
//{ (637)
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
	je ELSE76
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
	jmp END_IF76
ELSE76:
END_IF76:
//}
FOR_INC75:
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
	jmp FOR75
FOR_END75:
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
	jmp WHILE74
WHILE_END74:
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
	je ELSE77
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF77
ELSE77:
END_IF77:
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
//{ (656)
//for init
	movq $0, %rax
	movl %eax, -20(%rbp) // i = rax
FOR78:
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
	je FOR_END78
//{ (658)
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
	leaq L_.str.40(%rip), %rax
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
	jmp END_IF79
ELSE79:
END_IF79:
//}
FOR_INC78:
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
	jmp FOR78
FOR_END78:
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
//call assert
//cast to (int*)
//cast to (char*)
//cast to (struct Token**)
//cast to (char*)
	movq -32(%rbp), %rax // v
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
	movq (%rax), %rax
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
	movq $257, %rax
	movq %rax, %r10
	popq %rax // 32
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR80
//cast to (char**)
//cast to (char*)
//cast to (struct Token**)
//cast to (char*)
	movq -32(%rbp), %rax // v
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
	movq (%rax), %rax
	movq %rax, %r10
	popq %rax // 32
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR80:
	pushq %rax // 40
	popq %rdi // 32
	subq $0, %rsp // 32
	xorq %rax, %rax
	callq _assert
	addq $0, %rsp // 32
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
	je ELSE81
//call error_token
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 40
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 32
	imulq $40, %r10
	addq %r10, %rax
	pushq %rax // 40
	leaq L_.str.41(%rip), %rax
	pushq %rax // 48
	popq %rsi // 40
	popq %rdi // 32
	subq $0, %rsp // 32
	xorq %rax, %rax
	callq _error_token
	addq $0, %rsp // 32
	jmp END_IF81
ELSE81:
END_IF81:
//if begin
	movq _curr_func(%rip), %rax // curr_func
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR83
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
AND_OR83:
	cmpq $0, %rax
	je ELSE82
//{ (672)
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
	je ELSE84
//{ (674)
//cast to (int*)
//cast to (char*)
	movq _curr_func(%rip), %rax // curr_func
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 40
	movq $1768, %rax
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
	movq $1768, %rax
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
	jmp END_IF84
ELSE84:
//cast to (int*)
//cast to (char*)
	movq _curr_func(%rip), %rax // curr_func
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 40
	movq $1768, %rax
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
	movq $1768, %rax
	movq %rax, %r10
	popq %rax // 40
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 32
	movl %r10d, (%rax)
END_IF84:
//call align
//cast to (int*)
//cast to (char*)
	movq _curr_func(%rip), %rax // curr_func
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 40
	movq $1768, %rax
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
	movq $1768, %rax
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
	movq $1768, %rax
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
//call assert
//cast to (int*)
//cast to (char*)
	movq -32(%rbp), %rax // v
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
	movq %rax, %r10
	popq %rax // 32
	cqto
	idivq %r10
	movq %rdx, %rax
	pushq %rax // 40
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 32
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	pushq %rax // 40
	popq %rdi // 32
	subq $0, %rsp // 32
	xorq %rax, %rax
	callq _assert
	addq $0, %rsp // 32
//}
	jmp END_IF82
ELSE82:
END_IF82:
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
//{ (687)
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
	je ELSE85
//call error_token
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 12
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 4
	imulq $40, %r10
	addq %r10, %rax
	pushq %rax // 12
	leaq L_.str.42(%rip), %rax
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
	jmp END_IF85
ELSE85:
END_IF85:
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
//{ (694)
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
AND_OR91:
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR92
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
AND_OR92:
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR93
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
AND_OR93:
	cmpq $0, %rax
	je ELSE86
	movq $1, %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF86
ELSE86:
END_IF86:
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
	je ELSE94
//{ (707)
//for init
	movq $0, %rax
	movl %eax, -12(%rbp) // i = rax
FOR95:
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
	je FOR_END95
//{ (709)
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
	je ELSE96
	movq $1, %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF96
ELSE96:
END_IF96:
//}
FOR_INC95:
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
	jmp FOR95
FOR_END95:
//}
	jmp END_IF94
ELSE94:
END_IF94:
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
//{ (718)
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
	je ELSE97
	movq -8(%rbp), %rax // t1
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF97
ELSE97:
END_IF97:
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
	je AND_OR99
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
AND_OR99:
	cmpq $0, %rax
	je ELSE98
	jmp END_IF98
ELSE98:
END_IF98:
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
//{ (728)
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
//{ (739)
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
	je ELSE100
//{ (741)
//call strjoin
	leaq L_.str.43(%rip), %rax
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
	jmp END_IF100
ELSE100:
END_IF100:
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
	je ELSE101
//{ (745)
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
	leaq L_.str.44(%rip), %rax
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
	jmp END_IF101
ELSE101:
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
	je ELSE102
//{ (749)
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
	leaq L_.str.45(%rip), %rax
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
	jmp END_IF102
ELSE102:
END_IF102:
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
	movq $2, %rax
	movq %rax, %r10
	popq %rax // 8
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE103
	leaq L_.str.22(%rip), %rax
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
	movq $5, %rax
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
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 8
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE105
	leaq L_.str.1(%rip), %rax
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
	movq $4, %rax
	movq %rax, %r10
	popq %rax // 8
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE106
	leaq L_.str.24(%rip), %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF106
ELSE106:
END_IF106:
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
	je ELSE107
	leaq L_.str.25(%rip), %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF107
ELSE107:
END_IF107:
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
	je ELSE108
	leaq L_.str.46(%rip), %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF108
ELSE108:
END_IF108:
//call assert
	movq $0, %rax
	pushq %rax // 16
	popq %rdi // 8
	subq $8, %rsp // 16
	xorq %rax, %rax
	callq _assert
	addq $8, %rsp // 8
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
//{ (764)
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
	movq $136, %rax
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
	je ELSE109
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF109
ELSE109:
END_IF109:
//call new_node
	movq $21, %rax
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
	movq $136, %rax
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
//{ (775)
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
	je ELSE110
	movq -8(%rbp), %rax // t1
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF110
ELSE110:
END_IF110:
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
	je ELSE111
	movq -16(%rbp), %rax // t2
	movq %rbp, %rsp
	popq %rbp
	ret
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
	movq $4, %rax
	movq %rax, %r10
	popq %rax // 16
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE112
	movq _type_int(%rip), %rax // type_int
	movq %rax, -8(%rbp) // t1 = rax
	jmp END_IF112
ELSE112:
END_IF112:
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
	je ELSE113
	movq _type_int(%rip), %rax // type_int
	movq %rax, -16(%rbp) // t2 = rax
	jmp END_IF113
ELSE113:
END_IF113:
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
	je ELSE114
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
	je QUES115
	movq -16(%rbp), %rax // t2
	jmp QUES_END115
QUES115:
	movq -8(%rbp), %rax // t1
QUES_END115:
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF114
ELSE114:
END_IF114:
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
	je QUES116
	movq -16(%rbp), %rax // t2
	jmp QUES_END116
QUES116:
	movq -8(%rbp), %rax // t1
QUES_END116:
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
//{ (790)
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
	je ELSE117
	movq -16(%rbp), %rax // t
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF117
ELSE117:
END_IF117:
//if begin
//cast to (struct Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $136, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	cmpq $0, %rax
	je ELSE118
//cast to (struct Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 72
	movq $136, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	movq %rax, -16(%rbp) // t = rax
	jmp END_IF118
ELSE118:
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
	movq $3, %rax
	movq %rax, %r10
	popq %rax // 64
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE119
//{ (798)
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
	jne AND_OR121
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
AND_OR121:
	cmpq $0, %rax
	je ELSE120
	movq _type_long(%rip), %rax // type_long
	movq %rax, -16(%rbp) // t = rax
	jmp END_IF120
ELSE120:
	movq _type_int(%rip), %rax // type_int
	movq %rax, -16(%rbp) // t = rax
END_IF120:
//}
	jmp END_IF119
ELSE119:
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
	je ELSE122
//{ (805)
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
	jne AND_OR124
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
AND_OR124:
	cmpq $0, %rax
	je ELSE123
//{ (807)
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
	je ELSE125
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
	jmp END_IF125
ELSE125:
END_IF125:
//}
	jmp END_IF123
ELSE123:
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
	je ELSE126
//{ (813)
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
	jmp END_IF126
ELSE126:
//call assert
	movq $0, %rax
	pushq %rax // 72
	popq %rdi // 64
	subq $0, %rsp // 64
	xorq %rax, %rax
	callq _assert
	addq $0, %rsp // 64
END_IF126:
END_IF123:
//}
	jmp END_IF122
ELSE122:
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
	movq $18, %rax
	movq %rax, %r10
	popq %rax // 64
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE127
//{ (821)
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
	movq $2, %rax
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
	movq $12, %rax
	movq %rax, %r10
	popq %rax // 64
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE129
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Func**)
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
	je ELSE130
//{ (830)
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
	je ELSE131
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
	jmp END_IF131
ELSE131:
END_IF131:
//}
	jmp END_IF130
ELSE130:
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
	movq $15, %rax
	movq %rax, %r10
	popq %rax // 64
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE132
//{ (837)
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
	je ELSE134
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
	jmp END_IF134
ELSE134:
END_IF134:
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
	jmp END_IF132
ELSE132:
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
	je ELSE135
//{ (846)
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
	je ELSE136
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
	popq %rsi // 72
	popq %rdi // 64
	subq $0, %rsp // 64
	xorq %rax, %rax
	callq _error_token
	addq $0, %rsp // 64
	jmp END_IF136
ELSE136:
END_IF136:
//}
	jmp END_IF135
ELSE135:
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
	movq $21, %rax
	movq %rax, %r10
	popq %rax // 64
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE137
//{ (853)
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
	movq $4, %rax
	movq %rax, %r10
	popq %rax // 64
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE138
//{ (858)
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
	movq $136, %rax
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
	movq $136, %rax
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
	jne AND_OR140
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
AND_OR140:
	cmpq $0, %rax
	je ELSE139
//call assert
	movq $0, %rax
	pushq %rax // 72
	popq %rdi // 64
	subq $0, %rsp // 64
	xorq %rax, %rax
	callq _assert
	addq $0, %rsp // 64
	jmp END_IF139
ELSE139:
END_IF139:
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
	jne AND_OR142
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
AND_OR142:
	cmpq $0, %rax
	je ELSE141
//{ (869)
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
	jne AND_OR144
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
	je AND_OR145
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
AND_OR145:
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR144:
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR146
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
	je AND_OR147
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
AND_OR147:
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR148
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
AND_OR148:
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR146:
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR149
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
	je AND_OR150
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
AND_OR150:
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR151
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
AND_OR151:
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR152
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
AND_OR152:
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR149:
	cmpq $0, %rax
	je ELSE143
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
	leaq L_.str.52(%rip), %rax
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
	jmp END_IF143
ELSE143:
END_IF143:
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
	je AND_OR154
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
AND_OR154:
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR155
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
	jne AND_OR156
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
AND_OR156:
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR155:
	cmpq $0, %rax
	je ELSE153
	movq -40(%rbp), %rax // t1
	movq %rax, -16(%rbp) // t = rax
	jmp END_IF153
ELSE153:
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
	je AND_OR158
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
AND_OR158:
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR159
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
AND_OR159:
	cmpq $0, %rax
	je ELSE157
	movq -48(%rbp), %rax // t2
	movq %rax, -16(%rbp) // t = rax
	jmp END_IF157
ELSE157:
	movq _type_int(%rip), %rax // type_int
	movq %rax, -16(%rbp) // t = rax
END_IF157:
END_IF153:
//}
	jmp END_IF141
ELSE141:
//{ (882)
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
	movq $136, %rax
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
	movq $136, %rax
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
	je ELSE160
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
	movq $136, %rax
	movq %rax, %r10
	popq %rax // 64
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	movq %rax, -16(%rbp) // t = rax
	jmp END_IF160
ELSE160:
	movq _type_int(%rip), %rax // type_int
	movq %rax, -16(%rbp) // t = rax
END_IF160:
//}
END_IF141:
//}
	jmp END_IF138
ELSE138:
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
	je ELSE161
//{ (893)
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
//call assert
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
	setne %al
	andb $1, %al
	movzbq %al, %rax
	pushq %rax // 72
	popq %rdi // 64
	subq $0, %rsp // 64
	xorq %rax, %rax
	callq _assert
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
	jmp END_IF161
ELSE161:
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
	je ELSE162
//{ (900)
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
	movq $136, %rax
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
	movq $136, %rax
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
	jmp END_IF162
ELSE162:
//call assert
	movq $0, %rax
	pushq %rax // 72
	popq %rdi // 64
	subq $0, %rsp // 64
	xorq %rax, %rax
	callq _assert
	addq $0, %rsp // 64
END_IF162:
END_IF161:
END_IF138:
END_IF137:
END_IF135:
END_IF132:
END_IF130:
END_IF129:
END_IF128:
END_IF127:
END_IF122:
END_IF119:
END_IF118:
	movq -16(%rbp), %rax // t
	pushq %rax // 72
//cast to (struct Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 80
	movq $136, %rax
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
//{ (917)
//call add_func
	leaq L_.str.53(%rip), %rax
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
WHILE163:
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
	je WHILE_END163
//{ (928)
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
	je ELSE164
//{ (932)
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
	je ELSE165
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
	jmp END_IF165
ELSE165:
END_IF165:
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
WHILE166:
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
	je WHILE_END166
//{ (941)
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
	je ELSE167
//{ (945)
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
	je ELSE168
//call skip
	movq $256, %rax
	pushq %rax // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 128
	jmp END_IF168
ELSE168:
END_IF168:
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
	jmp END_IF167
ELSE167:
END_IF167:
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
	je ELSE169
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
	jmp END_IF169
ELSE169:
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
	je ELSE170
//call skip
	movq $125, %rax
	pushq %rax // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 128
	jmp END_IF170
ELSE170:
END_IF170:
END_IF169:
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
	jmp WHILE166
WHILE_END166:
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
	jmp END_IF164
ELSE164:
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
	je ELSE171
//{ (964)
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
WHILE172:
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
	je AND_OR173
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
AND_OR173:
	cmpq $0, %rax
	je WHILE_END172
//{ (977)
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
WHILE174:
	movq -72(%rbp), %rax // node
	cmpq $0, %rax
	je WHILE_END174
//{ (981)
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
//call assert
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
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _assert
	addq $0, %rsp // 128
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
	je ELSE175
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
	jmp END_IF175
ELSE175:
END_IF175:
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
	je ELSE176
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
	jmp END_IF176
ELSE176:
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
END_IF176:
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
	jmp WHILE174
WHILE_END174:
//call skip
	movq $59, %rax
	pushq %rax // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 128
//}
	jmp WHILE172
WHILE_END172:
//if begin
	movslq -56(%rbp), %rax // size
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE177
//call error_token
	movq -40(%rbp), %rax // st_token
	pushq %rax // 136
	leaq L_.str.54(%rip), %rax
	pushq %rax // 144
	popq %rsi // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _error_token
	addq $0, %rsp // 128
	jmp END_IF177
ELSE177:
END_IF177:
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
FOR178:
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
	je FOR_END178
//{ (1007)
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
FOR179:
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
	je FOR_END179
//{ (1010)
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
WHILE180:
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
	je WHILE_END180
//{ (1013)
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
	je AND_OR182
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
AND_OR182:
	cmpq $0, %rax
	je ELSE181
//{ (1016)
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
	jmp WHILE_END180
//}
	jmp END_IF181
ELSE181:
END_IF181:
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
	jmp WHILE180
WHILE_END180:
//}
FOR_INC179:
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
	jmp FOR179
FOR_END179:
//}
FOR_INC178:
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
	jmp FOR178
FOR_END178:
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
	leaq L_.str.55(%rip), %rax
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
	jmp WHILE163
//}
	jmp END_IF171
ELSE171:
//{ (1031)
//call printf
	leaq L_.str.56(%rip), %rax
	pushq %rax // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _printf
	addq $0, %rsp // 128
//call type_match
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
	movq $1, %rax
	pushq %rax // 144
	movq $2, %rax
	pushq %rax // 152
	movq $3, %rax
	pushq %rax // 160
	movq $4, %rax
	pushq %rax // 168
	movq $5, %rax
	pushq %rax // 176
	popq %r9 // 168
	popq %r8 // 160
	popq %rcx // 152
	popq %rdx // 144
	popq %rsi // 136
	popq %rdi // 128
	subq $8, %rsp // 136
	movq $1, %rax
	xorq %r10, %r10
	subq %rax, %r10
	movq %r10, %rax
	pushq %rax // 144
	movq $7, %rax
	pushq %rax // 152
	movq $6, %rax
	pushq %rax // 160
	xorq %rax, %rax
	callq _type_match
	addq $32, %rsp // 128
//call printf
	leaq L_.str.57(%rip), %rax
	pushq %rax // 136
//cast to (int*)
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
	movq $0, %rax
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
	callq _printf
	addq $0, %rsp // 128
//call type_match
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
	movq $1, %rax
	pushq %rax // 144
	movq $2, %rax
	pushq %rax // 152
	movq $3, %rax
	pushq %rax // 160
	movq $4, %rax
	pushq %rax // 168
	movq $5, %rax
	pushq %rax // 176
	popq %r9 // 168
	popq %r8 // 160
	popq %rcx // 152
	popq %rdx // 144
	popq %rsi // 136
	popq %rdi // 128
	subq $8, %rsp // 136
	movq $1, %rax
	xorq %r10, %r10
	subq %rax, %r10
	movq %r10, %rax
	pushq %rax // 144
	movq $7, %rax
	pushq %rax // 152
	movq $6, %rax
	pushq %rax // 160
	xorq %rax, %rax
	callq _type_match
	addq $32, %rsp // 128
//call printf
	leaq L_.str.58(%rip), %rax
	pushq %rax // 136
//cast to (int*)
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
	movq $0, %rax
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
	callq _printf
	addq $0, %rsp // 128
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
	je ELSE183
//call error_token
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 136
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 128
	imulq $40, %r10
	addq %r10, %rax
	pushq %rax // 136
	leaq L_.str.59(%rip), %rax
	pushq %rax // 144
	popq %rsi // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _error_token
	addq $0, %rsp // 128
	jmp END_IF183
ELSE183:
END_IF183:
//call printf
	leaq L_.str.57(%rip), %rax
	pushq %rax // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _printf
	addq $0, %rsp // 128
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
	je ELSE184
	movq $1, %rax
	movl %eax, -108(%rbp) // globl = rax
	jmp END_IF184
ELSE184:
END_IF184:
	movslq -28(%rbp), %rax // save
	movl %eax, _ct(%rip)
//if begin
	movslq -108(%rbp), %rax // globl
	cmpq $0, %rax
	je ELSE185
//{ (1050)
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
	jmp END_IF185
ELSE185:
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
END_IF185:
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
	je ELSE186
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
	jmp END_IF186
ELSE186:
END_IF186:
//}
END_IF171:
END_IF164:
//}
	jmp WHILE163
WHILE_END163:
//for init
	movq $0, %rax
	movl %eax, -112(%rbp) // i = rax
FOR187:
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
	je FOR_END187
//{ (1061)
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
FOR188:
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
	je FOR_END188
//{ (1064)
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
	je AND_OR190
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
AND_OR190:
	cmpq $0, %rax
	je ELSE189
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
	leaq L_.str.60(%rip), %rax
	pushq %rax // 144
	popq %rsi // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _error_token
	addq $0, %rsp // 128
	jmp END_IF189
ELSE189:
END_IF189:
//}
FOR_INC188:
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
	jmp FOR188
FOR_END188:
//call printf
	leaq L_.str.61(%rip), %rax
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
FOR191:
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
	je FOR_END191
//call printf
	leaq L_.str.62(%rip), %rax
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
FOR_INC191:
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
	jmp FOR191
FOR_END191:
//}
FOR_INC187:
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
	jmp FOR187
FOR_END187:
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
//{ (1077)
//for init
	movq $0, %rax
	movl %eax, -12(%rbp) // i = rax
FOR192:
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
	je FOR_END192
//{ (1079)
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
	je ELSE193
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
	jmp END_IF193
ELSE193:
END_IF193:
//}
FOR_INC192:
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
	jmp FOR192
FOR_END192:
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
//{ (1087)
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
	je ELSE194
//{ (1092)
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
	je ELSE195
//{ (1095)
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
	jmp END_IF195
ELSE195:
END_IF195:
//}
	jmp END_IF194
ELSE194:
END_IF194:
WHILE196:
	movq $1, %rax
	cmpq $0, %rax
	je WHILE_END196
//{ (1101)
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
	je ELSE197
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
	movq $270, %rax
	movq %rax, %r10
	popq %rax // 52
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE198
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
	movq $271, %rax
	movq %rax, %r10
	popq %rax // 52
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE199
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
	movq $272, %rax
	movq %rax, %r10
	popq %rax // 52
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE200
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
	movq $273, %rax
	movq %rax, %r10
	popq %rax // 52
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE201
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
	movq $279, %rax
	movq %rax, %r10
	popq %rax // 52
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE202
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
	movq $280, %rax
	movq %rax, %r10
	popq %rax // 52
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE203
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
	jmp END_IF203
ELSE203:
	jmp WHILE_END196
END_IF203:
END_IF202:
END_IF201:
END_IF200:
END_IF199:
END_IF198:
END_IF197:
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
	jmp WHILE196
WHILE_END196:
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
	jne AND_OR205
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
AND_OR205:
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR206
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
AND_OR206:
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR207
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
AND_OR207:
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR208
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
AND_OR208:
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR209
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
AND_OR209:
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR210
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
AND_OR210:
	cmpq $0, %rax
	je ELSE204
	movq $1, %rax
	movl %eax, -52(%rbp) // err = rax
	jmp END_IF204
ELSE204:
END_IF204:
//if begin
	movslq -28(%rbp), %rax // si
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR212
	movslq -24(%rbp), %rax // u
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR212:
	cmpq $0, %rax
	je ELSE211
	movq $1, %rax
	movl %eax, -52(%rbp) // err = rax
	jmp END_IF211
ELSE211:
END_IF211:
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
	je ELSE213
	movq $1, %rax
	movl %eax, -52(%rbp) // err = rax
	jmp END_IF213
ELSE213:
END_IF213:
//if begin
	movslq -16(%rbp), %rax // l
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR215
	movslq -20(%rbp), %rax // v
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR216
	movslq -12(%rbp), %rax // c
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR216:
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR217
	movslq -8(%rbp), %rax // s
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR217:
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR215:
	cmpq $0, %rax
	je ELSE214
	movq $1, %rax
	movl %eax, -52(%rbp) // err = rax
	jmp END_IF214
ELSE214:
END_IF214:
//if begin
	movslq -16(%rbp), %rax // l
	cmpq $0, %rax
	je ELSE218
//call new_type
	movq $6, %rax
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
	movslq -4(%rbp), %rax // i
	cmpq $0, %rax
	je ELSE219
//call new_type
	movq $0, %rax
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
	movslq -20(%rbp), %rax // v
	cmpq $0, %rax
	je ELSE220
//call new_type
	movq $2, %rax
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
	movslq -12(%rbp), %rax // c
	cmpq $0, %rax
	je ELSE221
//call new_type
	movq $5, %rax
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
	movslq -8(%rbp), %rax // s
	cmpq $0, %rax
	je ELSE222
//call new_type
	movq $4, %rax
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
	movslq -28(%rbp), %rax // si
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR224
	movslq -24(%rbp), %rax // u
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR224:
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
//{ (1142)
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
END_IF223:
END_IF222:
END_IF221:
END_IF220:
END_IF219:
END_IF218:
//if begin
	movq -40(%rbp), %rax // type
	cmpq $0, %rax
	je ELSE225
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
	jmp END_IF225
ELSE225:
END_IF225:
//if begin
	movslq -52(%rbp), %rax // err
	cmpq $0, %rax
	je ELSE226
//call error_token
	movq -48(%rbp), %rax // start
	pushq %rax // 60
	leaq L_.str.63(%rip), %rax
	pushq %rax // 68
	popq %rsi // 60
	popq %rdi // 52
	subq $12, %rsp // 64
	xorq %rax, %rax
	callq _error_token
	addq $12, %rsp // 52
	jmp END_IF226
ELSE226:
END_IF226:
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
//{ (1155)
//call parse_base_type
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _parse_base_type
	addq $0, %rsp // 16
	movq %rax, -8(%rbp) // type = rax
WHILE227:
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
	je WHILE_END227
//{ (1158)
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
	jmp WHILE227
WHILE_END227:
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
//{ (1169)
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
	movq $14, %rax
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
WHILE228:
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
	je WHILE_END228
//{ (1180)
//call new_node
	movq $17, %rax
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
	movq $960, %rax
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
	movq $960, %rax
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
	je ELSE229
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
	jmp END_IF229
ELSE229:
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
	je ELSE230
	jmp WHILE_END228
	jmp END_IF230
ELSE230:
END_IF230:
END_IF229:
//}
	jmp WHILE228
WHILE_END228:
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
	movq $1764, %rax
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
	movq $144, %rax
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
	je ELSE231
//{ (1196)
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
	je ELSE232
//call skip
	movq $123, %rax
	pushq %rax // 40
	popq %rdi // 32
	subq $0, %rsp // 32
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 32
	jmp END_IF232
ELSE232:
END_IF232:
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
	jmp END_IF231
ELSE231:
//call skip
	movq $59, %rax
	pushq %rax // 40
	popq %rdi // 32
	subq $0, %rsp // 32
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 32
END_IF231:
//call printf
	leaq L_.str.64(%rip), %rax
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
//{ (1210)
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
	je ELSE233
//{ (1212)
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
	jmp END_IF233
ELSE233:
END_IF233:
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
//{ (1221)
//call new_node
	movq $17, %rax
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
	movq -16(%rbp), %rax // decl
	movq %rax, -32(%rbp) // curr = rax
WHILE234:
	movq $1, %rax
	cmpq $0, %rax
	je WHILE_END234
//{ (1227)
//call new_node
	movq $17, %rax
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
WHILE235:
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
	je WHILE_END235
//{ (1231)
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
	jmp WHILE235
WHILE_END235:
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
	je AND_OR237
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
AND_OR237:
	cmpq $0, %rax
	je ELSE236
//call error_token
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 136
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 128
	imulq $40, %r10
	addq %r10, %rax
	pushq %rax // 136
	leaq L_.str.60(%rip), %rax
	pushq %rax // 144
	popq %rsi // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _error_token
	addq $0, %rsp // 128
	jmp END_IF236
ELSE236:
END_IF236:
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
	je AND_OR239
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
AND_OR239:
	cmpq $0, %rax
	je ELSE238
//call error_token
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 136
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 128
	imulq $40, %r10
	addq %r10, %rax
	pushq %rax // 136
	leaq L_.str.65(%rip), %rax
	pushq %rax // 144
	popq %rsi // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _error_token
	addq $0, %rsp // 128
	jmp END_IF238
ELSE238:
END_IF238:
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
	je ELSE240
//call skip
	movq $257, %rax
	pushq %rax // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 128
	jmp END_IF240
ELSE240:
END_IF240:
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
	je ELSE241
//{ (1245)
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
	je ELSE242
//{ (1252)
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
	jmp END_IF241
ELSE241:
//{ (1264)
//if begin
	movslq -4(%rbp), %rax // is_struct
	cmpq $0, %rax
	je ELSE243
//{ (1266)
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
	jmp END_IF243
ELSE243:
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
END_IF243:
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
END_IF241:
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
	je ELSE244
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
	jmp END_IF244
ELSE244:
END_IF244:
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
	je ELSE245
//{ (1280)
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
	je ELSE246
//{ (1282)
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
	je ELSE247
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
	leaq L_.str.66(%rip), %rax
	pushq %rax // 144
	popq %rsi // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _error_token
	addq $0, %rsp // 128
	jmp END_IF247
ELSE247:
END_IF247:
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
FOR248:
//{ (1294)
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
	je ELSE249
	movq $1, %rax
	movl %eax, -68(%rbp) // end = rax
	jmp END_IF249
ELSE249:
END_IF249:
//if begin
	movslq -68(%rbp), %rax // end
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR251
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
AND_OR251:
	cmpq $0, %rax
	je ELSE250
	jmp FOR_END248
	jmp END_IF250
ELSE250:
END_IF250:
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
	je ELSE252
//{ (1300)
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
	je ELSE253
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
	jmp END_IF253
ELSE253:
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
	je ELSE254
//call skip
	movq $125, %rax
	pushq %rax // 136
	popq %rdi // 128
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 128
	jmp END_IF254
ELSE254:
END_IF254:
END_IF253:
	jmp FOR_INC248
//}
	jmp END_IF252
ELSE252:
END_IF252:
//if begin
	movslq -68(%rbp), %rax // end
	cmpq $0, %rax
	je ELSE255
//{ (1310)
//call new_node
	movq $3, %rax
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
	jmp END_IF255
ELSE255:
//{ (1316)
//call assign
	subq $0, %rsp // 128
	xorq %rax, %rax
	callq _assign
	addq $0, %rsp // 128
	movq %rax, -104(%rbp) // value = rax
//}
END_IF255:
//call new_node
	movq $4, %rax
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
	movq $3, %rax
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
	movq $15, %rax
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
	movq $5, %rax
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
	je ELSE256
//{ (1339)
	movq -128(%rbp), %rax // a
	movq %rax, -88(%rbp) // c = rax
	movq -128(%rbp), %rax // a
	movq %rax, -80(%rbp) // init = rax
//}
	jmp END_IF256
ELSE256:
//{ (1344)
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
END_IF256:
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
//}
FOR_INC248:
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
	jmp FOR248
FOR_END248:
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
	jmp END_IF246
ELSE246:
//{ (1358)
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
END_IF246:
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
	jmp END_IF245
ELSE245:
END_IF245:
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
	je ELSE259
	jmp WHILE_END234
	jmp END_IF259
ELSE259:
END_IF259:
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
	jmp WHILE234
WHILE_END234:
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
//{ (1373)
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
	je ELSE260
//{ (1377)
//call new_node
	movq $7, %rax
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
	je ELSE261
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
	jmp END_IF261
ELSE261:
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
END_IF261:
//call skip
	movq $59, %rax
	pushq %rax // 24
	popq %rdi // 16
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 16
//}
	jmp END_IF260
ELSE260:
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
	je ELSE262
//{ (1387)
//call new_node
	movq $19, %rax
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
	movq $277, %rax
	movq %rax, %r10
	popq %rax // 16
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE263
//{ (1393)
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
	movq $265, %rax
	movq %rax, %r10
	popq %rax // 16
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE264
//{ (1399)
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
	je ELSE265
//{ (1407)
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
	movq $128, %rax
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
END_IF265:
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
	movq $267, %rax
	movq %rax, %r10
	popq %rax // 16
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE266
//{ (1413)
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
	movq $268, %rax
	movq %rax, %r10
	popq %rax // 16
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE267
//{ (1422)
//call enter_scope
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _enter_scope
	addq $0, %rsp // 16
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
	je ELSE268
//{ (1428)
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
	je ELSE269
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
	jmp END_IF269
ELSE269:
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
END_IF269:
//}
	jmp END_IF268
ELSE268:
END_IF268:
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
	jmp END_IF270
ELSE270:
END_IF270:
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
	je ELSE271
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
	jmp END_IF271
ELSE271:
END_IF271:
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
	movq $123, %rax
	movq %rax, %r10
	popq %rax // 16
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE272
//{ (1445)
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
	movq -8(%rbp), %rax // node
	movq %rax, -16(%rbp) // curr = rax
//call enter_scope
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _enter_scope
	addq $0, %rsp // 16
WHILE273:
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
	je AND_OR274
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
AND_OR274:
	cmpq $0, %rax
	je WHILE_END273
//{ (1452)
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
//call assert
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
	pushq %rax // 24
	popq %rdi // 16
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _assert
	addq $0, %rsp // 16
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
//call assert
	movq -16(%rbp), %rax // curr
	pushq %rax // 24
	popq %rdi // 16
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _assert
	addq $0, %rsp // 16
//}
	jmp WHILE273
WHILE_END273:
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
	jmp END_IF272
ELSE272:
//{ (1465)
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
	je ELSE275
//call expr
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _expr
	addq $0, %rsp // 16
	movq %rax, -8(%rbp) // node = rax
	jmp END_IF275
ELSE275:
//call new_node
	movq $0, %rax
	pushq %rax // 24
	popq %rdi // 16
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _new_node
	addq $0, %rsp // 16
	movq %rax, -8(%rbp) // node = rax
END_IF275:
//call skip
	movq $59, %rax
	pushq %rax // 24
	popq %rdi // 16
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 16
//}
END_IF272:
END_IF267:
END_IF266:
END_IF264:
END_IF263:
END_IF262:
END_IF260:
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
//{ (1476)
//call assign
	subq $0, %rsp // 16
	xorq %rax, %rax
	callq _assign
	addq $0, %rsp // 16
	movq %rax, -8(%rbp) // node = rax
	movq -8(%rbp), %rax // node
	movq %rax, -16(%rbp) // curr = rax
WHILE276:
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
	je WHILE_END276
//{ (1480)
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
	jmp WHILE276
WHILE_END276:
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
//{ (1489)
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
	je ELSE277
//{ (1494)
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
	movq $15, %rax
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
	movq $136, %rax
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
	movq $136, %rax
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
	je ELSE278
//call error_token
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 32
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 24
	imulq $40, %r10
	addq %r10, %rax
	pushq %rax // 32
	leaq L_.str.67(%rip), %rax
	pushq %rax // 40
	popq %rsi // 32
	popq %rdi // 24
	subq $8, %rsp // 32
	xorq %rax, %rax
	callq _error_token
	addq $8, %rsp // 24
	jmp END_IF278
ELSE278:
END_IF278:
//call new_node
	movq $5, %rax
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
//{ (1505)
//call new_node
	movq $4, %rax
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
	jmp END_IF277
ELSE277:
END_IF277:
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
//{ (1520)
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
//{ (1523)
//call new_node
	movq $22, %rax
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
//{ (1536)
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
//{ (1541)
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
//{ (1546)
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
//{ (1551)
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
//{ (1556)
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
//{ (1561)
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
//{ (1566)
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
//{ (1568)
//call new_node
	movq $21, %rax
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
//{ (1580)
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
//{ (1582)
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
//{ (1587)
//call new_node
	movq $6, %rax
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
//{ (1594)
//call new_node
	movq $16, %rax
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
//{ (1601)
//call new_node
	movq $15, %rax
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
//{ (1608)
//call new_node
	movq $13, %rax
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
//{ (1615)
//call new_node
	movq $3, %rax
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
//{ (1621)
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
//{ (1627)
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
//call assert
	movq -48(%rbp), %rax // t
	pushq %rax // 80
	popq %rdi // 72
	subq $8, %rsp // 80
	xorq %rax, %rax
	callq _assert
	addq $8, %rsp // 72
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
//{ (1639)
//call new_node
	movq $4, %rax
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
	movq $3, %rax
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
	movq $5, %rax
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
	subq $96, %rsp // 96
//{ (1658)
//call primary
	subq $0, %rsp // 96
	xorq %rax, %rax
	callq _primary
	addq $0, %rsp // 96
	movq %rax, -8(%rbp) // left = rax
WHILE298:
	movq $1, %rax
	cmpq $0, %rax
	je WHILE_END298
//{ (1662)
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 104
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 96
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 104
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 96
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 104
	movq $91, %rax
	movq %rax, %r10
	popq %rax // 96
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE299
//{ (1664)
	movslq _ct(%rip), %rax
	pushq %rax // 104
	movslq _ct(%rip), %rax
	pushq %rax // 112
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 104
	addq %r10, %rax
	movl %eax, _ct(%rip)
	popq %rax // 96
//call expr
	subq $0, %rsp // 96
	xorq %rax, %rax
	callq _expr
	addq $0, %rsp // 96
	movq %rax, -16(%rbp) // index = rax
//call skip
	movq $93, %rax
	pushq %rax // 104
	popq %rdi // 96
	subq $0, %rsp // 96
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 96
//call new_node
	movq $4, %rax
	pushq %rax // 104
	popq %rdi // 96
	subq $0, %rsp // 96
	xorq %rax, %rax
	callq _new_node
	addq $0, %rsp // 96
	movq %rax, -24(%rbp) // node = rax
//call new_temp_token
	movq $43, %rax
	pushq %rax // 104
	popq %rdi // 96
	subq $0, %rsp // 96
	xorq %rax, %rax
	callq _new_temp_token
	addq $0, %rsp // 96
	pushq %rax // 104
//cast to (struct Token**)
//cast to (char*)
	movq -24(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 112
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 104
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 96
	movq %r10, (%rax)
	movq -8(%rbp), %rax // left
	pushq %rax // 104
//cast to (struct Node**)
//cast to (char*)
	movq -24(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 112
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 104
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 96
	movq %r10, (%rax)
	movq -16(%rbp), %rax // index
	pushq %rax // 104
//cast to (struct Node**)
//cast to (char*)
	movq -24(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 112
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 104
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 96
	movq %r10, (%rax)
//call new_node
	movq $15, %rax
	pushq %rax // 104
	popq %rdi // 96
	subq $0, %rsp // 96
	xorq %rax, %rax
	callq _new_node
	addq $0, %rsp // 96
	movq %rax, -32(%rbp) // deref = rax
//call new_temp_token
	movq $42, %rax
	pushq %rax // 104
	popq %rdi // 96
	subq $0, %rsp // 96
	xorq %rax, %rax
	callq _new_temp_token
	addq $0, %rsp // 96
	pushq %rax // 104
//cast to (struct Token**)
//cast to (char*)
	movq -32(%rbp), %rax // deref
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 112
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 104
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 96
	movq %r10, (%rax)
	movq -24(%rbp), %rax // node
	pushq %rax // 104
//cast to (struct Node**)
//cast to (char*)
	movq -32(%rbp), %rax // deref
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 112
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 104
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 96
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
	pushq %rax // 104
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 96
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 104
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 96
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 104
	movq $275, %rax
	movq %rax, %r10
	popq %rax // 96
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
	pushq %rax // 104
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 96
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 104
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 96
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 104
	movq $276, %rax
	movq %rax, %r10
	popq %rax // 96
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
//{ (1678)
//call new_node
	movq $13, %rax
	pushq %rax // 104
	popq %rdi // 96
	subq $0, %rsp // 96
	xorq %rax, %rax
	callq _new_node
	addq $0, %rsp // 96
	movq %rax, -40(%rbp) // node = rax
	movq -8(%rbp), %rax // left
	pushq %rax // 104
//cast to (struct Node**)
//cast to (char*)
	movq -40(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 112
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 104
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 96
	movq %r10, (%rax)
	movq -40(%rbp), %rax // node
	movq %rax, -8(%rbp) // left = rax
	movslq _ct(%rip), %rax
	pushq %rax // 104
	movslq _ct(%rip), %rax
	pushq %rax // 112
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 104
	addq %r10, %rax
	movl %eax, _ct(%rip)
	popq %rax // 96
//}
	jmp END_IF300
ELSE300:
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 104
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 96
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 104
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 96
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 104
	movq $46, %rax
	movq %rax, %r10
	popq %rax // 96
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
	pushq %rax // 104
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 96
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 104
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 96
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 104
	movq $288, %rax
	movq %rax, %r10
	popq %rax // 96
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
//{ (1685)
//call add_type
	movq -8(%rbp), %rax // left
	pushq %rax // 104
	popq %rdi // 96
	subq $0, %rsp // 96
	xorq %rax, %rax
	callq _add_type
	addq $0, %rsp // 96
	movq %rax, -48(%rbp) // type = rax
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 104
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 96
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 104
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 96
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 104
	movq $288, %rax
	movq %rax, %r10
	popq %rax // 96
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR305
//cast to (int*)
//cast to (char*)
	movq -48(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 104
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 96
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 104
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 96
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
	movq -48(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 104
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 96
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 104
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 96
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 104
	movq $7, %rax
	movq %rax, %r10
	popq %rax // 96
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
//{ (1688)
//call error_token
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 104
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 96
	imulq $40, %r10
	addq %r10, %rax
	pushq %rax // 104
	leaq L_.str.68(%rip), %rax
	pushq %rax // 112
	popq %rsi // 104
	popq %rdi // 96
	subq $0, %rsp // 96
	xorq %rax, %rax
	callq _error_token
	addq $0, %rsp // 96
//}
	jmp END_IF304
ELSE304:
END_IF304:
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 104
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 96
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 104
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 96
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 104
	movq $288, %rax
	movq %rax, %r10
	popq %rax // 96
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE307
//cast to (struct Type**)
//cast to (char*)
	movq -48(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 104
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 96
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	movq %rax, -48(%rbp) // type = rax
	jmp END_IF307
ELSE307:
END_IF307:
//if begin
//cast to (int*)
//cast to (char*)
	movq -48(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 104
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 96
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 104
	movq $7, %rax
	movq %rax, %r10
	popq %rax // 96
	cmpq %r10, %rax
	setne %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE308
//call error_token
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 104
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 96
	imulq $40, %r10
	addq %r10, %rax
	pushq %rax // 104
	leaq L_.str.69(%rip), %rax
	pushq %rax // 112
	popq %rsi // 104
	popq %rdi // 96
	subq $0, %rsp // 96
	xorq %rax, %rax
	callq _error_token
	addq $0, %rsp // 96
	jmp END_IF308
ELSE308:
END_IF308:
	movslq _ct(%rip), %rax
	pushq %rax // 104
	movslq _ct(%rip), %rax
	pushq %rax // 112
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 104
	addq %r10, %rax
	movl %eax, _ct(%rip)
	popq %rax // 96
	movq $0, %rax
	movl %eax, -52(%rbp) // i = rax
//for init
FOR309:
	movslq -52(%rbp), %rax // i
	pushq %rax // 104
//cast to (int*)
//cast to (char*)
	movq -48(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 112
	movq $2048, %rax
	movq %rax, %r10
	popq %rax // 104
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	movq %rax, %r10
	popq %rax // 96
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je FOR_END309
//{ (1700)
//if begin
//call strcmp
//cast to (char*[])
//cast to (char*)
	movq -48(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 104
	movq $848, %rax
	movq %rax, %r10
	popq %rax // 96
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 104
	movslq -52(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 96
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 104
//cast to (char**)
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
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 104
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 112
	popq %rsi // 104
	popq %rdi // 96
	subq $0, %rsp // 96
	xorq %rax, %rax
	callq _strcmp
	addq $0, %rsp // 96
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
	movslq -52(%rbp), %rax // i
	pushq %rax // 104
	movslq -52(%rbp), %rax // i
	pushq %rax // 112
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 104
	addq %r10, %rax
	movl %eax, -52(%rbp) // i = rax
	popq %rax // 96
	jmp FOR309
FOR_END309:
//if begin
	movslq -52(%rbp), %rax // i
	pushq %rax // 104
//cast to (int*)
//cast to (char*)
	movq -48(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 112
	movq $2048, %rax
	movq %rax, %r10
	popq %rax // 104
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	movq %rax, %r10
	popq %rax // 96
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE311
//call error_token
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 104
	movslq _ct(%rip), %rax
	movq %rax, %r10
	popq %rax // 96
	imulq $40, %r10
	addq %r10, %rax
	pushq %rax // 104
	leaq L_.str.70(%rip), %rax
	pushq %rax // 112
	popq %rsi // 104
	popq %rdi // 96
	subq $0, %rsp // 96
	xorq %rax, %rax
	callq _error_token
	addq $0, %rsp // 96
	jmp END_IF311
ELSE311:
END_IF311:
//call new_type
	movq $1, %rax
	pushq %rax // 104
	popq %rdi // 96
	subq $0, %rsp // 96
	xorq %rax, %rax
	callq _new_type
	addq $0, %rsp // 96
	movq %rax, -64(%rbp) // char_ptr = rax
	movq _type_char(%rip), %rax // type_char
	pushq %rax // 104
//cast to (struct Type**)
//cast to (char*)
	movq -64(%rbp), %rax // char_ptr
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
	popq %r10 // 96
	movq %r10, (%rax)
	movq -8(%rbp), %rax // left
	movq %rax, -72(%rbp) // addr = rax
//if begin
//cast to (int*)
//cast to (char*)
	movq _tokens@GOTPCREL(%rip), %rax
	pushq %rax // 104
	movslq _ct(%rip), %rax
	pushq %rax // 112
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 104
	subq %r10, %rax
	movq %rax, %r10
	popq %rax // 96
	imulq $40, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 104
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 96
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 104
	movq $46, %rax
	movq %rax, %r10
	popq %rax // 96
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE312
//{ (1715)
//call new_node
	movq $16, %rax
	pushq %rax // 104
	popq %rdi // 96
	subq $0, %rsp // 96
	xorq %rax, %rax
	callq _new_node
	addq $0, %rsp // 96
	movq %rax, -72(%rbp) // addr = rax
	movq -8(%rbp), %rax // left
	pushq %rax // 104
//cast to (struct Node**)
//cast to (char*)
	movq -72(%rbp), %rax // addr
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 112
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 104
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 96
	movq %r10, (%rax)
//}
	jmp END_IF312
ELSE312:
END_IF312:
//call implicit_cast
	movq %rbp, %rax // &addr
	subq $72, %rax
	pushq %rax // 104
	movq -64(%rbp), %rax // char_ptr
	pushq %rax // 112
	popq %rsi // 104
	popq %rdi // 96
	subq $0, %rsp // 96
	xorq %rax, %rax
	callq _implicit_cast
	addq $0, %rsp // 96
//call new_node
	movq $4, %rax
	pushq %rax // 104
	popq %rdi // 96
	subq $0, %rsp // 96
	xorq %rax, %rax
	callq _new_node
	addq $0, %rsp // 96
	movq %rax, -80(%rbp) // add = rax
//call new_temp_token
	movq $43, %rax
	pushq %rax // 104
	popq %rdi // 96
	subq $0, %rsp // 96
	xorq %rax, %rax
	callq _new_temp_token
	addq $0, %rsp // 96
	pushq %rax // 104
//cast to (struct Token**)
//cast to (char*)
	movq -80(%rbp), %rax // add
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 112
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 104
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 96
	movq %r10, (%rax)
	movq -72(%rbp), %rax // addr
	pushq %rax // 104
//cast to (struct Node**)
//cast to (char*)
	movq -80(%rbp), %rax // add
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 112
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 104
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 96
	movq %r10, (%rax)
//call new_node
	movq $3, %rax
	pushq %rax // 104
	popq %rdi // 96
	subq $0, %rsp // 96
	xorq %rax, %rax
	callq _new_node
	addq $0, %rsp // 96
	pushq %rax // 104
//cast to (struct Node**)
//cast to (char*)
	movq -80(%rbp), %rax // add
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 112
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 104
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 96
	movq %r10, (%rax)
//call new_temp_token
	movq $256, %rax
	pushq %rax // 104
	popq %rdi // 96
	subq $0, %rsp // 96
	xorq %rax, %rax
	callq _new_temp_token
	addq $0, %rsp // 96
	pushq %rax // 104
//cast to (struct Token**)
//cast to (char*)
//cast to (struct Node**)
//cast to (char*)
	movq -80(%rbp), %rax // add
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 112
	movq $32, %rax
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
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 104
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 96
	movq %r10, (%rax)
//cast to (long)
//cast to (int[])
//cast to (char*)
	movq -48(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 104
	movq $1648, %rax
	movq %rax, %r10
	popq %rax // 96
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 104
	movslq -52(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 96
	imulq $4, %r10
	addq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 104
//cast to (long*)
//cast to (char*)
//cast to (struct Token**)
//cast to (char*)
//cast to (struct Node**)
//cast to (char*)
	movq -80(%rbp), %rax // add
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 112
	movq $32, %rax
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
	movq $16, %rax
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
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 104
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 96
	movq %r10, (%rax)
//call new_type
	movq $1, %rax
	pushq %rax // 104
	popq %rdi // 96
	subq $0, %rsp // 96
	xorq %rax, %rax
	callq _new_type
	addq $0, %rsp // 96
	movq %rax, -88(%rbp) // t = rax
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Type*[])
//cast to (char*)
	movq -48(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 104
	movq $48, %rax
	movq %rax, %r10
	popq %rax // 96
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 104
	movslq -52(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 96
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 104
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 96
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 104
	movq $3, %rax
	movq %rax, %r10
	popq %rax // 96
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE313
//{ (1729)
//cast to (struct Type*[])
//cast to (char*)
	movq -48(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 104
	movq $48, %rax
	movq %rax, %r10
	popq %rax // 96
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 104
	movslq -52(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 96
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	movq %rax, -88(%rbp) // t = rax
//call implicit_cast
	movq %rbp, %rax // &add
	subq $80, %rax
	pushq %rax // 104
	movq -88(%rbp), %rax // t
	pushq %rax // 112
	popq %rsi // 104
	popq %rdi // 96
	subq $0, %rsp // 96
	xorq %rax, %rax
	callq _implicit_cast
	addq $0, %rsp // 96
	movq -80(%rbp), %rax // add
	movq %rax, -96(%rbp) // node = rax
//}
	jmp END_IF313
ELSE313:
//{ (1736)
//cast to (struct Type*[])
//cast to (char*)
	movq -48(%rbp), %rax // type
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 104
	movq $48, %rax
	movq %rax, %r10
	popq %rax // 96
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 104
	movslq -52(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 96
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 104
//cast to (struct Type**)
//cast to (char*)
	movq -88(%rbp), %rax // t
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
	popq %r10 // 96
	movq %r10, (%rax)
//call implicit_cast
	movq %rbp, %rax // &add
	subq $80, %rax
	pushq %rax // 104
	movq -88(%rbp), %rax // t
	pushq %rax // 112
	popq %rsi // 104
	popq %rdi // 96
	subq $0, %rsp // 96
	xorq %rax, %rax
	callq _implicit_cast
	addq $0, %rsp // 96
//call new_node
	movq $15, %rax
	pushq %rax // 104
	popq %rdi // 96
	subq $0, %rsp // 96
	xorq %rax, %rax
	callq _new_node
	addq $0, %rsp // 96
	movq %rax, -96(%rbp) // node = rax
	movq -80(%rbp), %rax // add
	pushq %rax // 104
//cast to (struct Node**)
//cast to (char*)
	movq -96(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 112
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 104
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 96
	movq %r10, (%rax)
//}
END_IF313:
//call skip
	movq $257, %rax
	pushq %rax // 104
	popq %rdi // 96
	subq $0, %rsp // 96
	xorq %rax, %rax
	callq _skip
	addq $0, %rsp // 96
	movq -96(%rbp), %rax // node
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
	addq $96, %rsp // 0
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
	movq $3, %rax
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
	movq $18, %rax
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
	movq $12, %rax
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
	movq $144, %rax
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
	movq $144, %rax
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
	leaq L_.str.71(%rip), %rax
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
	leaq L_.str.53(%rip), %rax
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
	movq $160, %rax
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
	movq $160, %rax
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
	movq $1760, %rax
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
	movq $3, %rax
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
	leaq L_.str.72(%rip), %rax
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
	leaq L_.str.73(%rip), %rax
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
	leaq L_.str.74(%rip), %rax
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
	leaq L_.str.75(%rip), %rax
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
	leaq L_.str.76(%rip), %rax
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
	leaq L_.str.77(%rip), %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF332
ELSE332:
END_IF332:
END_IF331:
END_IF330:
END_IF329:
//call assert
	movq $0, %rax
	pushq %rax // 12
	popq %rdi // 4
	subq $12, %rsp // 16
	xorq %rax, %rax
	callq _assert
	addq $12, %rsp // 4
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
	leaq L_.str.78(%rip), %rax
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
	leaq L_.str.24(%rip), %rax
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
	leaq L_.str.25(%rip), %rax
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
	leaq L_.str.79(%rip), %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF336
ELSE336:
END_IF336:
END_IF335:
END_IF334:
END_IF333:
//call assert
	movq $0, %rax
	pushq %rax // 12
	popq %rdi // 4
	subq $12, %rsp // 16
	xorq %rax, %rax
	callq _assert
	addq $12, %rsp // 4
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
	leaq L_.str.80(%rip), %rax
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
	leaq L_.str.81(%rip), %rax
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
	leaq L_.str.82(%rip), %rax
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
	leaq L_.str.83(%rip), %rax
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
	leaq L_.str.84(%rip), %rax
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
	leaq L_.str.85(%rip), %rax
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
	leaq L_.str.86(%rip), %rax
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
	leaq L_.str.87(%rip), %rax
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
	leaq L_.str.88(%rip), %rax
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
	leaq L_.str.89(%rip), %rax
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
	leaq L_.str.90(%rip), %rax
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
	leaq L_.str.91(%rip), %rax
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
	leaq L_.str.92(%rip), %rax
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
	leaq L_.str.93(%rip), %rax
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
	leaq L_.str.94(%rip), %rax
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
	leaq L_.str.95(%rip), %rax
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
	leaq L_.str.96(%rip), %rax
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
	leaq L_.str.97(%rip), %rax
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
	leaq L_.str.98(%rip), %rax
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
	leaq L_.str.99(%rip), %rax
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
	leaq L_.str.100(%rip), %rax
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
	leaq L_.str.101(%rip), %rax
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
	leaq L_.str.102(%rip), %rax
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
	leaq L_.str.103(%rip), %rax
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
	leaq L_.str.104(%rip), %rax
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
	leaq L_.str.105(%rip), %rax
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
	leaq L_.str.106(%rip), %rax
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
	leaq L_.str.107(%rip), %rax
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
	leaq L_.str.108(%rip), %rax
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
	leaq L_.str.109(%rip), %rax
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
	leaq L_.str.110(%rip), %rax
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
	leaq L_.str.111(%rip), %rax
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
	leaq L_.str.112(%rip), %rax
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
	leaq L_.str.113(%rip), %rax
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
	leaq L_.str.114(%rip), %rax
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
	leaq L_.str.115(%rip), %rax
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
	leaq L_.str.115(%rip), %rax
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
//call assert
	movq $0, %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _assert
	addq $0, %rsp // 304
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
	subq $32, %rsp // 32
	movq %rdi, -8(%rbp) //s
//{ (1895)
//for init
	movq $0, %rax
	movl %eax, -12(%rbp) // i = rax
FOR347:
	movslq -12(%rbp), %rax // i
	pushq %rax // 40
	movslq _strings_literal_count(%rip), %rax
	movq %rax, %r10
	popq %rax // 32
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
	pushq %rax // 40
	movq _strings_literal@GOTPCREL(%rip), %rax
	pushq %rax // 48
	movslq -12(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 40
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
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
	pushq %rax // 40
	movslq -12(%rbp), %rax // i
	pushq %rax // 48
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 40
	addq %r10, %rax
	movl %eax, -12(%rbp) // i = rax
	popq %rax // 32
	jmp FOR347
FOR_END347:
	movq -8(%rbp), %rax // s
	pushq %rax // 40
	movq _strings_literal@GOTPCREL(%rip), %rax
	pushq %rax // 48
	movslq _strings_literal_count(%rip), %rax
	movq %rax, %r10
	popq %rax // 40
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 32
	movq %r10, (%rax)
	movslq _strings_literal_count(%rip), %rax
	pushq %rax // 40
	movslq _strings_literal_count(%rip), %rax
	pushq %rax // 48
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 40
	addq %r10, %rax
	movl %eax, _strings_literal_count(%rip)
	popq %rax // 32
	movq %rbp, %rsp
	popq %rbp
	ret
//}
	addq $32, %rsp // 0
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
	leaq L_.str.116(%rip), %rax
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
	leaq L_.str.117(%rip), %rax
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
//call assert
	movslq _stack_size(%rip), %rax
	pushq %rax // 16
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 8
	cmpq %r10, %rax
	setge %al
	andb $1, %al
	movzbq %al, %rax
	pushq %rax // 16
	popq %rdi // 8
	subq $8, %rsp // 16
	xorq %rax, %rax
	callq _assert
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
	subq $304, %rsp // 304
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
	pushq %rax // 312
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 304
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
	pushq %rax // 312
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 304
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
	pushq %rax // 312
	movq $40, %rax
	movq %rax, %r10
	popq %rax // 304
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
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $0, %rsp // 304
//cast to (struct Node**)
//cast to (char*)
	movq -16(%rbp), %rax // curr
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $40, %rax
	movq %rax, %r10
	popq %rax // 304
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
	pushq %rax // 312
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $14, %rax
	movq %rax, %r10
	popq %rax // 304
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
	pushq %rax // 312
	movq $48, %rax
	movq %rax, %r10
	popq %rax // 304
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
	pushq %rax // 312
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 312
	leaq L_.str.118(%rip), %rax
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
	je ELSE355
//call fprintf
	movq _f(%rip), %rax // f
	pushq %rax // 312
	leaq L_.str.119(%rip), %rax
	pushq %rax // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _fprintf
	addq $0, %rsp // 304
	jmp END_IF355
ELSE355:
END_IF355:
	movq $0, %rax
	movl %eax, _stack_size(%rip)
//call dbg
	leaq L_.str.120(%rip), %rax
	pushq %rax // 312
//call get_type_str
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Func**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $144, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 320
	popq %rdi // 312
	subq $8, %rsp // 320
	xorq %rax, %rax
	callq _get_type_str
	addq $8, %rsp // 312
	pushq %rax // 320
//cast to (char**)
//cast to (char*)
//cast to (struct Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 328
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 320
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 328
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 320
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 328
	popq %rdx // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _dbg
	addq $0, %rsp // 304
//for init
	movq $0, %rax
	movl %eax, -20(%rbp) // i = rax
FOR356:
	movslq -20(%rbp), %rax // i
	pushq %rax // 312
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $1764, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je FOR_END356
//{ (1949)
//call dbg
	leaq L_.str.121(%rip), %rax
	pushq %rax // 312
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
	pushq %rax // 320
	movq $960, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movslq -20(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 312
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 320
	popq %rdi // 312
	subq $8, %rsp // 320
	xorq %rax, %rax
	callq _get_type_str
	addq $8, %rsp // 312
	pushq %rax // 320
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
	pushq %rax // 328
	movq $960, %rax
	movq %rax, %r10
	popq %rax // 320
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 328
	movslq -20(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 320
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 328
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 320
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 328
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 320
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 328
	popq %rdx // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _dbg
	addq $0, %rsp // 304
//if begin
	movslq -20(%rbp), %rax // i
	pushq %rax // 312
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $1764, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 320
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 312
	subq %r10, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE357
//call dbg
	leaq L_.str.122(%rip), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _dbg
	addq $0, %rsp // 304
	jmp END_IF357
ELSE357:
END_IF357:
//}
FOR_INC356:
	movslq -20(%rbp), %rax // i
	pushq %rax // 312
	movslq -20(%rbp), %rax // i
	pushq %rax // 320
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 312
	addq %r10, %rax
	movl %eax, -20(%rbp) // i = rax
	popq %rax // 304
	jmp FOR356
FOR_END356:
//call dbg
	leaq L_.str.123(%rip), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _dbg
	addq $0, %rsp // 304
//call fprintf
	movq _f(%rip), %rax // f
	pushq %rax // 312
	leaq L_.str.124(%rip), %rax
	pushq %rax // 320
//cast to (char**)
//cast to (char*)
//cast to (struct Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 328
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 320
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 328
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 320
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 328
	popq %rdx // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _fprintf
	addq $0, %rsp // 304
//call out
	leaq L_.str.125(%rip), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//call out
	leaq L_.str.126(%rip), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
	movslq _stack_size(%rip), %rax
	pushq %rax // 312
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $1768, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	movq %rax, %r10
	popq %rax // 304
	addq %r10, %rax
	movl %eax, _stack_size(%rip)
//call out
	leaq L_.str.127(%rip), %rax
	pushq %rax // 312
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $1768, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 320
	movslq _stack_size(%rip), %rax
	pushq %rax // 328
	popq %rdx // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
	leaq L_.str.95(%rip), %rax
	pushq %rax // 312
	movq %rbp, %rax // reg
	subq $72, %rax
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
	movq %rbp, %rax // reg
	subq $72, %rax
	pushq %rax // 320
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 304
	movq %r10, (%rax)
	leaq L_.str.87(%rip), %rax
	pushq %rax // 312
	movq %rbp, %rax // reg
	subq $72, %rax
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
	movq %rbp, %rax // reg
	subq $72, %rax
	pushq %rax // 320
	movq $3, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 304
	movq %r10, (%rax)
	leaq L_.str.103(%rip), %rax
	pushq %rax // 312
	movq %rbp, %rax // reg
	subq $72, %rax
	pushq %rax // 320
	movq $4, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 304
	movq %r10, (%rax)
	leaq L_.str.107(%rip), %rax
	pushq %rax // 312
	movq %rbp, %rax // reg
	subq $72, %rax
	pushq %rax // 320
	movq $5, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 304
	movq %r10, (%rax)
//for init
	movq $0, %rax
	movl %eax, -76(%rbp) // i = rax
FOR358:
	movslq -76(%rbp), %rax // i
	pushq %rax // 312
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $1764, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR359
	movslq -76(%rbp), %rax // i
	pushq %rax // 312
	movq $6, %rax
	movq %rax, %r10
	popq %rax // 304
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
	pushq %rax // 312
	movq $960, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movslq -76(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 304
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	movq %rax, -88(%rbp) // v = rax
//call out
	leaq L_.str.128(%rip), %rax
	pushq %rax // 312
//call get_inst_suffix
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
//cast to (char*)
	movq -88(%rbp), %rax // v
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 320
	popq %rdi // 312
	subq $8, %rsp // 320
	xorq %rax, %rax
	callq _get_inst_suffix
	addq $8, %rsp // 312
	pushq %rax // 320
//call get_register_by_size
	movq %rbp, %rax // reg
	subq $72, %rax
	pushq %rax // 328
	movslq -76(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 320
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 328
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
//cast to (char*)
	movq -88(%rbp), %rax // v
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 336
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 328
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 336
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 328
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 336
	popq %rsi // 328
	popq %rdi // 320
	subq $0, %rsp // 320
	xorq %rax, %rax
	callq _get_register_by_size
	addq $0, %rsp // 320
	pushq %rax // 328
//cast to (int*)
//cast to (char*)
	movq -88(%rbp), %rax // v
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 336
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 328
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 336
//cast to (char**)
//cast to (char*)
	movq -88(%rbp), %rax // v
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 344
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 336
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 344
	popq %r8 // 336
	popq %rcx // 328
	popq %rdx // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//}
FOR_INC358:
	movslq -76(%rbp), %rax // i
	pushq %rax // 312
	movslq -76(%rbp), %rax // i
	pushq %rax // 320
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 312
	addq %r10, %rax
	movl %eax, -76(%rbp) // i = rax
	popq %rax // 304
	jmp FOR358
FOR_END358:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $1764, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $6, %rax
	movq %rax, %r10
	popq %rax // 304
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
	pushq %rax // 312
	movq $960, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $5, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 304
	addq %r10, %rax
	movl %eax, -92(%rbp) // offset = rax
	movq $16, %rax
	movl %eax, -96(%rbp) // offset2 = rax
//for init
	movq $6, %rax
	movl %eax, -100(%rbp) // i = rax
FOR361:
	movslq -100(%rbp), %rax // i
	pushq %rax // 312
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $1764, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je FOR_END361
//{ (1981)
//call out
	leaq L_.str.129(%rip), %rax
	pushq %rax // 312
	movslq -96(%rbp), %rax // offset2
	pushq %rax // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//call out
	leaq L_.str.130(%rip), %rax
	pushq %rax // 312
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
	pushq %rax // 320
	movq $960, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movslq -100(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 312
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 320
	popq %rdi // 312
	subq $8, %rsp // 320
	xorq %rax, %rax
	callq _get_inst_suffix
	addq $8, %rsp // 312
	pushq %rax // 320
//call get_register_by_size
	leaq L_.str.83(%rip), %rax
	pushq %rax // 328
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
	pushq %rax // 336
	movq $960, %rax
	movq %rax, %r10
	popq %rax // 328
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 336
	movslq -100(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 328
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 336
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 328
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 336
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 328
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 336
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 328
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 336
	popq %rsi // 328
	popq %rdi // 320
	subq $0, %rsp // 320
	xorq %rax, %rax
	callq _get_register_by_size
	addq $0, %rsp // 320
	pushq %rax // 328
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
	pushq %rax // 336
	movq $960, %rax
	movq %rax, %r10
	popq %rax // 328
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 336
	movslq -100(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 328
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 336
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 328
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 336
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 328
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 336
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
	pushq %rax // 344
	movq $960, %rax
	movq %rax, %r10
	popq %rax // 336
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 344
	movslq -100(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 336
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 344
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 336
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 344
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 336
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 344
	popq %r8 // 336
	popq %rcx // 328
	popq %rdx // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
	movslq -92(%rbp), %rax // offset
	pushq %rax // 312
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 304
	addq %r10, %rax
	movl %eax, -92(%rbp) // offset = rax
	movslq -96(%rbp), %rax // offset2
	pushq %rax // 312
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 304
	addq %r10, %rax
	movl %eax, -96(%rbp) // offset2 = rax
//}
FOR_INC361:
	movslq -100(%rbp), %rax // i
	pushq %rax // 312
	movslq -100(%rbp), %rax // i
	pushq %rax // 320
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 312
	addq %r10, %rax
	movl %eax, -100(%rbp) // i = rax
	popq %rax // 304
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
	pushq %rax // 312
	movq $48, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $0, %rsp // 304
	movslq _stack_size(%rip), %rax
	pushq %rax // 312
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $1768, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	movq %rax, %r10
	popq %rax // 304
	subq %r10, %rax
	movl %eax, _stack_size(%rip)
//call out
	leaq L_.str.131(%rip), %rax
	pushq %rax // 312
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $1768, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 320
	movslq _stack_size(%rip), %rax
	pushq %rax // 328
	popq %rdx // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//call out
	leaq L_.str.132(%rip), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//call out
	leaq L_.str.133(%rip), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//call out
	leaq L_.str.134(%rip), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//call out
	leaq L_.str.135(%rip), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
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
	pushq %rax // 312
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $11, %rax
	movq %rax, %r10
	popq %rax // 304
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
	pushq %rax // 312
	movq $96, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	movq %rax, -112(%rbp) // curr = rax
//call dbg
	leaq L_.str.136(%rip), %rax
	pushq %rax // 312
//cast to (int*)
//cast to (char*)
//cast to (struct Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _dbg
	addq $0, %rsp // 304
WHILE363:
	movq -112(%rbp), %rax // curr
	cmpq $0, %rax
	je WHILE_END363
//{ (2012)
//call gen
	movq -112(%rbp), %rax // curr
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $0, %rsp // 304
//cast to (struct Node**)
//cast to (char*)
	movq -112(%rbp), %rax // curr
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $80, %rax
	movq %rax, %r10
	popq %rax // 304
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
	leaq L_.str.137(%rip), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _dbg
	addq $0, %rsp // 304
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
	pushq %rax // 312
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $17, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE364
//{ (2019)
//cast to (struct Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $88, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	movq %rax, -120(%rbp) // curr = rax
WHILE365:
	movq -120(%rbp), %rax // curr
	cmpq $0, %rax
	je WHILE_END365
//{ (2022)
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Var**)
//cast to (char*)
	movq -120(%rbp), %rax // curr
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	cmpq $0, %rax
	je ELSE366
//{ (2024)
//}
	jmp END_IF366
ELSE366:
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Var**)
//cast to (char*)
	movq -120(%rbp), %rax // curr
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 304
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
	je AND_OR368
//cast to (struct Node**)
//cast to (char*)
	movq -120(%rbp), %rax // curr
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR368:
	cmpq $0, %rax
	je ELSE367
//call gen
//cast to (struct Node**)
//cast to (char*)
	movq -120(%rbp), %rax // curr
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $0, %rsp // 304
	jmp END_IF367
ELSE367:
END_IF367:
END_IF366:
//cast to (struct Node**)
//cast to (char*)
	movq -120(%rbp), %rax // curr
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $88, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	movq %rax, -120(%rbp) // curr = rax
//}
	jmp WHILE365
WHILE_END365:
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
	pushq %rax // 312
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $7, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE369
//{ (2033)
//call gen
//cast to (struct Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $0, %rsp // 304
//call out
	leaq L_.str.133(%rip), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//call out
	leaq L_.str.134(%rip), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//call out
	leaq L_.str.138(%rip), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
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
	pushq %rax // 312
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE370
//{ (2040)
	movslq _curr_label(%rip), %rax
	pushq %rax // 312
	movslq _curr_label(%rip), %rax
	pushq %rax // 320
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 312
	addq %r10, %rax
	movl %eax, _curr_label(%rip)
	popq %rax // 304
	movl %eax, -124(%rbp) // label = rax
//call fprintf
	movq _f(%rip), %rax // f
	pushq %rax // 312
	leaq L_.str.139(%rip), %rax
	pushq %rax // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _fprintf
	addq $0, %rsp // 304
//call gen
//cast to (struct Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $56, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $0, %rsp // 304
//call out
	leaq L_.str.140(%rip), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//call out
	leaq L_.str.141(%rip), %rax
	pushq %rax // 312
	movslq -124(%rbp), %rax // label
	pushq %rax // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//call gen
//cast to (struct Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $48, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $0, %rsp // 304
//call out
	leaq L_.str.142(%rip), %rax
	pushq %rax // 312
	movslq -124(%rbp), %rax // label
	pushq %rax // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//call fprintf
	movq _f(%rip), %rax // f
	pushq %rax // 312
	leaq L_.str.143(%rip), %rax
	pushq %rax // 320
	movslq -124(%rbp), %rax // label
	pushq %rax // 328
	popq %rdx // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _fprintf
	addq $0, %rsp // 304
//if begin
//cast to (struct Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $128, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	cmpq $0, %rax
	je ELSE371
//call gen
//cast to (struct Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $128, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $0, %rsp // 304
	jmp END_IF371
ELSE371:
END_IF371:
//call fprintf
	movq _f(%rip), %rax // f
	pushq %rax // 312
	leaq L_.str.144(%rip), %rax
	pushq %rax // 320
	movslq -124(%rbp), %rax // label
	pushq %rax // 328
	popq %rdx // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _fprintf
	addq $0, %rsp // 304
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
	pushq %rax // 312
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $9, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE372
//{ (2054)
	movslq _curr_label(%rip), %rax
	pushq %rax // 312
	movslq _curr_label(%rip), %rax
	pushq %rax // 320
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 312
	addq %r10, %rax
	movl %eax, _curr_label(%rip)
	popq %rax // 304
	movl %eax, -128(%rbp) // label = rax
//call fprintf
	movq _f(%rip), %rax // f
	pushq %rax // 312
	leaq L_.str.145(%rip), %rax
	pushq %rax // 320
	movslq -128(%rbp), %rax // label
	pushq %rax // 328
	popq %rdx // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _fprintf
	addq $0, %rsp // 304
//call gen
//cast to (struct Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $56, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $0, %rsp // 304
//call out
	leaq L_.str.140(%rip), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//call out
	leaq L_.str.146(%rip), %rax
	pushq %rax // 312
	movslq -128(%rbp), %rax // label
	pushq %rax // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
	movslq _loop_counter(%rip), %rax
	pushq %rax // 312
	movslq _loop_counter(%rip), %rax
	pushq %rax // 320
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 312
	addq %r10, %rax
	movl %eax, _loop_counter(%rip)
	popq %rax // 304
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
	pushq %rax // 312
	movq $48, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $0, %rsp // 304
	movslq -132(%rbp), %rax // s1
	movl %eax, _curr_loop_label(%rip)
	movslq -136(%rbp), %rax // s2
	movl %eax, _curr_loop_is_for(%rip)
	movslq _loop_counter(%rip), %rax
	pushq %rax // 312
	movslq _loop_counter(%rip), %rax
	pushq %rax // 320
	movq $-1, %rax
	movq %rax, %r10
	popq %rax // 312
	addq %r10, %rax
	movl %eax, _loop_counter(%rip)
	popq %rax // 304
//call out
	leaq L_.str.147(%rip), %rax
	pushq %rax // 312
	movslq -128(%rbp), %rax // label
	pushq %rax // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//call fprintf
	movq _f(%rip), %rax // f
	pushq %rax // 312
	leaq L_.str.148(%rip), %rax
	pushq %rax // 320
	movslq -128(%rbp), %rax // label
	pushq %rax // 328
	popq %rdx // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _fprintf
	addq $0, %rsp // 304
//}
	jmp END_IF372
ELSE372:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $10, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE373
//{ (2073)
	movslq _curr_label(%rip), %rax
	pushq %rax // 312
	movslq _curr_label(%rip), %rax
	pushq %rax // 320
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 312
	addq %r10, %rax
	movl %eax, _curr_label(%rip)
	popq %rax // 304
	movl %eax, -140(%rbp) // label = rax
//call fprintf
	movq _f(%rip), %rax // f
	pushq %rax // 312
	leaq L_.str.149(%rip), %rax
	pushq %rax // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _fprintf
	addq $0, %rsp // 304
//call gen
//cast to (struct Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $64, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $0, %rsp // 304
//call fprintf
	movq _f(%rip), %rax // f
	pushq %rax // 312
	leaq L_.str.150(%rip), %rax
	pushq %rax // 320
	movslq -140(%rbp), %rax // label
	pushq %rax // 328
	popq %rdx // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _fprintf
	addq $0, %rsp // 304
//if begin
//cast to (struct Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $56, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	cmpq $0, %rax
	je ELSE374
//{ (2079)
//call gen
//cast to (struct Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $56, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $0, %rsp // 304
//call out
	leaq L_.str.140(%rip), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//call out
	leaq L_.str.151(%rip), %rax
	pushq %rax // 312
	movslq -140(%rbp), %rax // label
	pushq %rax // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//}
	jmp END_IF374
ELSE374:
END_IF374:
	movslq _loop_counter(%rip), %rax
	pushq %rax // 312
	movslq _loop_counter(%rip), %rax
	pushq %rax // 320
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 312
	addq %r10, %rax
	movl %eax, _loop_counter(%rip)
	popq %rax // 304
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
	pushq %rax // 312
	movq $48, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $0, %rsp // 304
	movslq _loop_counter(%rip), %rax
	pushq %rax // 312
	movslq _loop_counter(%rip), %rax
	pushq %rax // 320
	movq $-1, %rax
	movq %rax, %r10
	popq %rax // 312
	addq %r10, %rax
	movl %eax, _loop_counter(%rip)
	popq %rax // 304
	movslq -144(%rbp), %rax // s1
	movl %eax, _curr_loop_label(%rip)
	movslq -148(%rbp), %rax // s2
	movl %eax, _curr_loop_is_for(%rip)
//call fprintf
	movq _f(%rip), %rax // f
	pushq %rax // 312
	leaq L_.str.152(%rip), %rax
	pushq %rax // 320
	movslq -140(%rbp), %rax // label
	pushq %rax // 328
	popq %rdx // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _fprintf
	addq $0, %rsp // 304
//call gen
//cast to (struct Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $72, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $0, %rsp // 304
//call out
	leaq L_.str.153(%rip), %rax
	pushq %rax // 312
	movslq -140(%rbp), %rax // label
	pushq %rax // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//call fprintf
	movq _f(%rip), %rax // f
	pushq %rax // 312
	leaq L_.str.154(%rip), %rax
	pushq %rax // 320
	movslq -140(%rbp), %rax // label
	pushq %rax // 328
	popq %rdx // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _fprintf
	addq $0, %rsp // 304
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
	pushq %rax // 312
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $3, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE375
//{ (2099)
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $136, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $6, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE376
//call out
	leaq L_.str.155(%rip), %rax
	pushq %rax // 312
//cast to (long*)
//cast to (char*)
//cast to (struct Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
	jmp END_IF376
ELSE376:
//call out
	leaq L_.str.156(%rip), %rax
	pushq %rax // 312
//cast to (long*)
//cast to (char*)
//cast to (struct Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
END_IF376:
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
	pushq %rax // 312
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $18, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE377
//{ (2106)
//call add_string_lit
//cast to (char**)
//cast to (char*)
//cast to (struct Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _add_string_lit
	addq $0, %rsp // 304
	movl %eax, -152(%rbp) // id = rax
//call out
	leaq L_.str.157(%rip), %rax
	pushq %rax // 312
	movslq -152(%rbp), %rax // id
	pushq %rax // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//}
	jmp END_IF377
ELSE377:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $2, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE378
//{ (2111)
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $136, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $3, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR380
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $136, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $7, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR380:
	cmpq $0, %rax
	je ELSE379
//{ (2113)
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Var**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	cmpq $0, %rax
	je ELSE381
//{ (2115)
//call out
	leaq L_.str.158(%rip), %rax
	pushq %rax // 312
//cast to (char**)
//cast to (char*)
//cast to (struct Var**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//}
	jmp END_IF381
ELSE381:
//{ (2119)
//call out
	leaq L_.str.159(%rip), %rax
	pushq %rax // 312
//cast to (char**)
//cast to (char*)
//cast to (struct Var**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//call out
	leaq L_.str.160(%rip), %rax
	pushq %rax // 312
//cast to (int*)
//cast to (char*)
//cast to (struct Var**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//}
END_IF381:
//}
	jmp END_IF379
ELSE379:
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $136, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE382
//{ (2125)
//call out
	leaq L_.str.161(%rip), %rax
	pushq %rax // 312
//cast to (char**)
//cast to (char*)
//cast to (struct Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//}
	jmp END_IF382
ELSE382:
//{ (2129)
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Var**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	cmpq $0, %rax
	je ELSE383
//{ (2131)
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $136, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	cmpq $0, %rax
	je ELSE384
//{ (2133)
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $136, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $4, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE385
//call out
	leaq L_.str.162(%rip), %rax
	pushq %rax // 312
//call get_inst_suffix
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $136, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 320
	popq %rdi // 312
	subq $8, %rsp // 320
	xorq %rax, %rax
	callq _get_inst_suffix
	addq $8, %rsp // 312
	pushq %rax // 320
//cast to (char**)
//cast to (char*)
//cast to (struct Var**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 328
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 320
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 328
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 320
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 328
//cast to (char**)
//cast to (char*)
//cast to (struct Var**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 336
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 328
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 336
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 328
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 336
	popq %rcx // 328
	popq %rdx // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
	jmp END_IF385
ELSE385:
//call out
	leaq L_.str.163(%rip), %rax
	pushq %rax // 312
//call get_inst_suffix
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $136, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 320
	popq %rdi // 312
	subq $8, %rsp // 320
	xorq %rax, %rax
	callq _get_inst_suffix
	addq $8, %rsp // 312
	pushq %rax // 320
//cast to (char**)
//cast to (char*)
//cast to (struct Var**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 328
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 320
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 328
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 320
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 328
//call get_register_by_size
	leaq L_.str.83(%rip), %rax
	pushq %rax // 336
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 344
	movq $136, %rax
	movq %rax, %r10
	popq %rax // 336
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 344
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 336
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 344
	popq %rsi // 336
	popq %rdi // 328
	subq $8, %rsp // 336
	xorq %rax, %rax
	callq _get_register_by_size
	addq $8, %rsp // 328
	pushq %rax // 336
//cast to (char**)
//cast to (char*)
//cast to (struct Var**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 344
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 336
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 344
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 336
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 344
	popq %r8 // 336
	popq %rcx // 328
	popq %rdx // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
END_IF385:
//}
	jmp END_IF384
ELSE384:
//{ (2147)
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $136, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE386
//{ (2149)
//call out
	leaq L_.str.164(%rip), %rax
	pushq %rax // 312
//call get_inst_suffix
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $136, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 320
	popq %rdi // 312
	subq $8, %rsp // 320
	xorq %rax, %rax
	callq _get_inst_suffix
	addq $8, %rsp // 312
	pushq %rax // 320
//cast to (char**)
//cast to (char*)
//cast to (struct Var**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 328
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 320
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 328
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 320
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 328
	popq %rdx // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//}
	jmp END_IF386
ELSE386:
//call out
	leaq L_.str.165(%rip), %rax
	pushq %rax // 312
//cast to (char**)
//cast to (char*)
//cast to (struct Var**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
END_IF386:
//}
END_IF384:
//}
	jmp END_IF383
ELSE383:
//{ (2164)
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $136, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	cmpq $0, %rax
	je ELSE387
//{ (2166)
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $136, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $4, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE388
//call out
	leaq L_.str.166(%rip), %rax
	pushq %rax // 312
//call get_inst_suffix
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $136, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 320
	popq %rdi // 312
	subq $8, %rsp // 320
	xorq %rax, %rax
	callq _get_inst_suffix
	addq $8, %rsp // 312
	pushq %rax // 320
//cast to (int*)
//cast to (char*)
//cast to (struct Var**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 328
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 320
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 328
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 320
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 328
//cast to (char**)
//cast to (char*)
//cast to (struct Var**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 336
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 328
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 336
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 328
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 336
	popq %rcx // 328
	popq %rdx // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
	jmp END_IF388
ELSE388:
//call out
	leaq L_.str.167(%rip), %rax
	pushq %rax // 312
//call get_inst_suffix
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $136, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 320
	popq %rdi // 312
	subq $8, %rsp // 320
	xorq %rax, %rax
	callq _get_inst_suffix
	addq $8, %rsp // 312
	pushq %rax // 320
//cast to (int*)
//cast to (char*)
//cast to (struct Var**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 328
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 320
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 328
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 320
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 328
//call get_register_by_size
	leaq L_.str.83(%rip), %rax
	pushq %rax // 336
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 344
	movq $136, %rax
	movq %rax, %r10
	popq %rax // 336
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 344
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 336
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 344
	popq %rsi // 336
	popq %rdi // 328
	subq $8, %rsp // 336
	xorq %rax, %rax
	callq _get_register_by_size
	addq $8, %rsp // 328
	pushq %rax // 336
//cast to (char**)
//cast to (char*)
//cast to (struct Var**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 344
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 336
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 344
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 336
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 344
	popq %r8 // 336
	popq %rcx // 328
	popq %rdx // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
END_IF388:
//}
	jmp END_IF387
ELSE387:
//{ (2180)
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $136, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE389
//{ (2182)
//call out
	leaq L_.str.168(%rip), %rax
	pushq %rax // 312
//call get_inst_suffix
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $136, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 320
	popq %rdi // 312
	subq $8, %rsp // 320
	xorq %rax, %rax
	callq _get_inst_suffix
	addq $8, %rsp // 312
	pushq %rax // 320
//cast to (int*)
//cast to (char*)
//cast to (struct Var**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 328
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 320
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 328
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 320
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 328
//cast to (char**)
//cast to (char*)
//cast to (struct Var**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 336
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 328
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 336
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 328
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 336
	popq %rcx // 328
	popq %rdx // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//}
	jmp END_IF389
ELSE389:
//call out
	leaq L_.str.169(%rip), %rax
	pushq %rax // 312
//cast to (int*)
//cast to (char*)
//cast to (struct Var**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 320
//cast to (char**)
//cast to (char*)
//cast to (struct Var**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 328
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 320
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 328
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 320
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 328
	popq %rdx // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
END_IF389:
//}
END_IF387:
//}
END_IF383:
//}
END_IF382:
END_IF379:
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
	pushq %rax // 312
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $12, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE390
//{ (2194)
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
	pushq %rax // 312
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 312
	leaq L_.str.53(%rip), %rax
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
	je ELSE391
//{ (2196)
	movslq _curr_label(%rip), %rax
	pushq %rax // 312
	movslq _curr_label(%rip), %rax
	pushq %rax // 320
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 312
	addq %r10, %rax
	movl %eax, _curr_label(%rip)
	popq %rax // 304
	movl %eax, -156(%rbp) // label = rax
//cast to (char**)
//cast to (char*)
//cast to (struct Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	movq %rax, -168(%rbp) // s2 = rax
WHILE392:
//cast to (int)
	movq -168(%rbp), %rax // s2
	movsbq (%rax), %rax
	pushq %rax // 312
	movq $10, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	setne %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je WHILE_END392
	movq -168(%rbp), %rax // s2
	pushq %rax // 312
	movq -168(%rbp), %rax // s2
	pushq %rax // 320
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	movq %rax, -168(%rbp) // s2 = rax
	popq %rax // 304
	jmp WHILE392
WHILE_END392:
//call fprintf
	movq _f(%rip), %rax // f
	pushq %rax // 312
	leaq L_.str.170(%rip), %rax
	pushq %rax // 320
//cast to (int)
	movq -168(%rbp), %rax // s2
	pushq %rax // 328
//cast to (char**)
//cast to (char*)
//cast to (struct Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 336
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 328
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 336
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 328
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	movq %rax, %r10
	popq %rax // 320
	subq %r10, %rax
	movq $1, %r10
	xorq %rdx, %rdx
	divq %r10
	pushq %rax // 328
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 320
	addq %r10, %rax
	pushq %rax // 328
//cast to (char**)
//cast to (char*)
//cast to (struct Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 336
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 328
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 336
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 328
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 336
	popq %rcx // 328
	popq %rdx // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _fprintf
	addq $0, %rsp // 304
//call gen
//cast to (struct Node*[])
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $160, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $0, %rsp // 304
//call out
	leaq L_.str.171(%rip), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//call gen
//cast to (struct Node*[])
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $160, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $0, %rsp // 304
//call out
	leaq L_.str.172(%rip), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//call out
	leaq L_.str.173(%rip), %rax
	pushq %rax // 312
	movslq -156(%rbp), %rax // label
	pushq %rax // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//call out
	leaq L_.str.174(%rip), %rax
	pushq %rax // 312
//cast to (int*)
//cast to (char*)
//cast to (struct Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//call out
	leaq L_.str.175(%rip), %rax
	pushq %rax // 312
//cast to (int*)
//cast to (char*)
//cast to (struct Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//call out
	leaq L_.str.176(%rip), %rax
	pushq %rax // 312
//cast to (int*)
//cast to (char*)
//cast to (struct Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//call out
	leaq L_.str.177(%rip), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//call fprintf
	movq _f(%rip), %rax // f
	pushq %rax // 312
	leaq L_.str.178(%rip), %rax
	pushq %rax // 320
	movslq -156(%rbp), %rax // label
	pushq %rax // 328
	popq %rdx // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _fprintf
	addq $0, %rsp // 304
//}
	jmp END_IF391
ELSE391:
//{ (2214)
	leaq L_.str.95(%rip), %rax
	pushq %rax // 312
	movq %rbp, %rax // reg
	subq $216, %rax
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
	movq %rbp, %rax // reg
	subq $216, %rax
	pushq %rax // 320
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 304
	movq %r10, (%rax)
	leaq L_.str.87(%rip), %rax
	pushq %rax // 312
	movq %rbp, %rax // reg
	subq $216, %rax
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
	movq %rbp, %rax // reg
	subq $216, %rax
	pushq %rax // 320
	movq $3, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 304
	movq %r10, (%rax)
	leaq L_.str.103(%rip), %rax
	pushq %rax // 312
	movq %rbp, %rax // reg
	subq $216, %rax
	pushq %rax // 320
	movq $4, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 304
	movq %r10, (%rax)
	leaq L_.str.107(%rip), %rax
	pushq %rax // 312
	movq %rbp, %rax // reg
	subq $216, %rax
	pushq %rax // 320
	movq $5, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $8, %r10
	addq %r10, %rax
	popq %r10 // 304
	movq %r10, (%rax)
//call dbg
	leaq L_.str.179(%rip), %rax
	pushq %rax // 312
//cast to (char**)
//cast to (char*)
//cast to (struct Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _dbg
	addq $0, %rsp // 304
//for init
	movq $0, %rax
	movl %eax, -220(%rbp) // i = rax
FOR393:
	movslq -220(%rbp), %rax // i
	pushq %rax // 312
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $1760, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR394
	movslq -220(%rbp), %rax // i
	pushq %rax // 312
	movq $6, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR394:
	cmpq $0, %rax
	je FOR_END393
//{ (2218)
//call gen
//cast to (struct Node*[])
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $160, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movslq -220(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 304
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $0, %rsp // 304
//call push
	leaq L_.str.83(%rip), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _push
	addq $0, %rsp // 304
//}
FOR_INC393:
	movslq -220(%rbp), %rax // i
	pushq %rax // 312
	movslq -220(%rbp), %rax // i
	pushq %rax // 320
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 312
	addq %r10, %rax
	movl %eax, -220(%rbp) // i = rax
	popq %rax // 304
	jmp FOR393
FOR_END393:
//for init
	movq $0, %rax
	movl %eax, -224(%rbp) // i = rax
FOR395:
	movslq -224(%rbp), %rax // i
	pushq %rax // 312
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $1760, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR396
	movslq -224(%rbp), %rax // i
	pushq %rax // 312
	movq $6, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR396:
	cmpq $0, %rax
	je FOR_END395
//{ (2224)
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $1760, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	movl %eax, -228(%rbp) // last = rax
//if begin
	movslq -228(%rbp), %rax // last
	pushq %rax // 312
	movq $6, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	setg %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE397
	movq $6, %rax
	movl %eax, -228(%rbp) // last = rax
	jmp END_IF397
ELSE397:
END_IF397:
//call pop
	movq %rbp, %rax // reg
	subq $216, %rax
	pushq %rax // 312
	movslq -228(%rbp), %rax // last
	pushq %rax // 320
	movslq -224(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 312
	subq %r10, %rax
	pushq %rax // 320
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 312
	subq %r10, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _pop
	addq $0, %rsp // 304
//}
FOR_INC395:
	movslq -224(%rbp), %rax // i
	pushq %rax // 312
	movslq -224(%rbp), %rax // i
	pushq %rax // 320
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 312
	addq %r10, %rax
	movl %eax, -224(%rbp) // i = rax
	popq %rax // 304
	jmp FOR395
FOR_END395:
	movslq _stack_size(%rip), %rax
	movl %eax, -232(%rbp) // s = rax
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $1760, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $6, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	setg %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE398
	movslq -232(%rbp), %rax // s
	pushq %rax // 312
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $1760, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 320
	movq $6, %rax
	movq %rax, %r10
	popq %rax // 312
	subq %r10, %rax
	pushq %rax // 320
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq %r10, %rax
	movq %rax, %r10
	popq %rax // 304
	addq %r10, %rax
	movl %eax, -232(%rbp) // s = rax
	jmp END_IF398
ELSE398:
END_IF398:
//call align
	movslq -232(%rbp), %rax // s
	pushq %rax // 312
	movq $16, %rax
	pushq %rax // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _align
	addq $0, %rsp // 304
	movl %eax, -236(%rbp) // target = rax
//call assert
	movslq -236(%rbp), %rax // target
	pushq %rax // 312
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 304
	cqto
	idivq %r10
	movq %rdx, %rax
	pushq %rax // 312
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _assert
	addq $0, %rsp // 304
//call out
	leaq L_.str.127(%rip), %rax
	pushq %rax // 312
	movslq -236(%rbp), %rax // target
	pushq %rax // 320
	movslq -232(%rbp), %rax // s
	movq %rax, %r10
	popq %rax // 312
	subq %r10, %rax
	pushq %rax // 320
	movslq _stack_size(%rip), %rax
	pushq %rax // 328
	movslq -236(%rbp), %rax // target
	movq %rax, %r10
	popq %rax // 320
	addq %r10, %rax
	pushq %rax // 328
	movslq -232(%rbp), %rax // s
	movq %rax, %r10
	popq %rax // 320
	subq %r10, %rax
	pushq %rax // 328
	popq %rdx // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
	movslq _stack_size(%rip), %rax
	pushq %rax // 312
	movslq -236(%rbp), %rax // target
	pushq %rax // 320
	movslq -232(%rbp), %rax // s
	movq %rax, %r10
	popq %rax // 312
	subq %r10, %rax
	movq %rax, %r10
	popq %rax // 304
	addq %r10, %rax
	movl %eax, _stack_size(%rip)
//for init
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $1760, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 304
	subq %r10, %rax
	movl %eax, -240(%rbp) // i = rax
FOR399:
	movslq -240(%rbp), %rax // i
	pushq %rax // 312
	movq $6, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	setge %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je FOR_END399
//{ (2240)
//call gen
//cast to (struct Node*[])
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $160, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movslq -240(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 304
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $0, %rsp // 304
//call push
	leaq L_.str.83(%rip), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _push
	addq $0, %rsp // 304
//}
FOR_INC399:
	movslq -240(%rbp), %rax // i
	pushq %rax // 312
	movslq -240(%rbp), %rax // i
	pushq %rax // 320
	movq $-1, %rax
	movq %rax, %r10
	popq %rax // 312
	addq %r10, %rax
	movl %eax, -240(%rbp) // i = rax
	popq %rax // 304
	jmp FOR399
FOR_END399:
//call out
	leaq L_.str.180(%rip), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//call assert
	movslq _stack_size(%rip), %rax
	pushq %rax // 312
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 304
	cqto
	idivq %r10
	movq %rdx, %rax
	pushq %rax // 312
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _assert
	addq $0, %rsp // 304
//call out
	leaq L_.str.181(%rip), %rax
	pushq %rax // 312
//cast to (char**)
//cast to (char*)
//cast to (struct Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
	movslq -236(%rbp), %rax // target
	pushq %rax // 312
	movslq -232(%rbp), %rax // s
	movq %rax, %r10
	popq %rax // 304
	subq %r10, %rax
	movl %eax, -244(%rbp) // add = rax
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $1760, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $6, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	setg %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE400
	movslq -244(%rbp), %rax // add
	pushq %rax // 312
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $1760, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 320
	movq $6, %rax
	movq %rax, %r10
	popq %rax // 312
	subq %r10, %rax
	pushq %rax // 320
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq %r10, %rax
	movq %rax, %r10
	popq %rax // 304
	addq %r10, %rax
	movl %eax, -244(%rbp) // add = rax
	jmp END_IF400
ELSE400:
END_IF400:
	movslq _stack_size(%rip), %rax
	pushq %rax // 312
	movslq -244(%rbp), %rax // add
	movq %rax, %r10
	popq %rax // 304
	subq %r10, %rax
	movl %eax, _stack_size(%rip)
//call out
	leaq L_.str.131(%rip), %rax
	pushq %rax // 312
	movslq -244(%rbp), %rax // add
	pushq %rax // 320
	movslq _stack_size(%rip), %rax
	pushq %rax // 328
	popq %rdx // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//}
END_IF391:
//}
	jmp END_IF390
ELSE390:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE401
//{ (2257)
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $15, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE402
//{ (2259)
//call gen
//cast to (struct Node**)
//cast to (char*)
//cast to (struct Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $0, %rsp // 304
//}
	jmp END_IF402
ELSE402:
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $2, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE403
//{ (2263)
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
	pushq %rax // 312
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	cmpq $0, %rax
	je ELSE404
//{ (2266)
//call out
	leaq L_.str.158(%rip), %rax
	pushq %rax // 312
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
	pushq %rax // 320
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//}
	jmp END_IF404
ELSE404:
//{ (2270)
//call out
	leaq L_.str.182(%rip), %rax
	pushq %rax // 312
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
	pushq %rax // 320
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//call out
	leaq L_.str.160(%rip), %rax
	pushq %rax // 312
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
	pushq %rax // 320
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//}
END_IF404:
//}
	jmp END_IF403
ELSE403:
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $21, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE405
//{ (2276)
//cast to (struct Node**)
//cast to (char*)
//cast to (struct Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 312
//cast to (struct Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 304
	movq %r10, (%rax)
//call gen
	movq -8(%rbp), %rax // node
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $0, %rsp // 304
//}
	jmp END_IF405
ELSE405:
//call assert
	movq $0, %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _assert
	addq $0, %rsp // 304
END_IF405:
END_IF403:
END_IF402:
//}
	jmp END_IF401
ELSE401:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $15, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE406
//{ (2284)
//call gen
//cast to (struct Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $0, %rsp // 304
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
	pushq %rax // 312
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $136, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 304
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
	je ELSE407
//call error_token
//cast to (struct Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 312
	leaq L_.str.183(%rip), %rax
	pushq %rax // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _error_token
	addq $0, %rsp // 304
	jmp END_IF407
ELSE407:
END_IF407:
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $136, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $7, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE408
	jmp END_IF408
ELSE408:
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $136, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE409
//call out
	leaq L_.str.184(%rip), %rax
	pushq %rax // 312
//call get_inst_suffix
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $136, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 320
	popq %rdi // 312
	subq $8, %rsp // 320
	xorq %rax, %rax
	callq _get_inst_suffix
	addq $8, %rsp // 312
	pushq %rax // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
	jmp END_IF409
ELSE409:
//call out
	leaq L_.str.185(%rip), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
END_IF409:
END_IF408:
//}
	jmp END_IF406
ELSE406:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $6, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE410
//{ (2302)
//call gen
//cast to (struct Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $0, %rsp // 304
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
	pushq %rax // 312
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $136, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	cmpq $0, %rax
	je ELSE411
//call error_token
//cast to (struct Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 312
	leaq L_.str.186(%rip), %rax
	pushq %rax // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _error_token
	addq $0, %rsp // 304
	jmp END_IF411
ELSE411:
END_IF411:
//call out
	leaq L_.str.187(%rip), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//call out
	leaq L_.str.188(%rip), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//call out
	leaq L_.str.189(%rip), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//}
	jmp END_IF410
ELSE410:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $21, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE412
//{ (2311)
//call dbg
	leaq L_.str.190(%rip), %rax
	pushq %rax // 312
//call get_type_str
//cast to (struct Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $136, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 320
	popq %rdi // 312
	subq $8, %rsp // 320
	xorq %rax, %rax
	callq _get_type_str
	addq $8, %rsp // 312
	pushq %rax // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _dbg
	addq $0, %rsp // 304
//call gen
//cast to (struct Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $0, %rsp // 304
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $136, %rax
	movq %rax, %r10
	popq %rax // 304
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
	pushq %rax // 312
	movq $136, %rax
	movq %rax, %r10
	popq %rax // 304
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
	pushq %rax // 312
	movq $136, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $3, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE413
//{ (2317)
//call new_type
	movq $1, %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _new_type
	addq $0, %rsp // 304
	movq %rax, -264(%rbp) // t2 = rax
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $136, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 312
//cast to (struct Type**)
//cast to (char*)
	movq -264(%rbp), %rax // t2
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 304
	movq %r10, (%rax)
//}
	jmp END_IF413
ELSE413:
END_IF413:
//if begin
//cast to (int*)
//cast to (char*)
	movq -256(%rbp), %rax // t1
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 304
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
	je AND_OR415
//cast to (int*)
//cast to (char*)
	movq -264(%rbp), %rax // t2
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 304
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
AND_OR415:
	cmpq $0, %rax
	je ELSE414
//{ (2324)
//if begin
//cast to (int*)
//cast to (char*)
	movq -264(%rbp), %rax // t2
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
//cast to (int*)
//cast to (char*)
	movq -256(%rbp), %rax // t1
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE416
//{ (2326)
//call out
	leaq L_.str.191(%rip), %rax
	pushq %rax // 312
//call get_inst_suffix
//cast to (int*)
//cast to (char*)
	movq -264(%rbp), %rax // t2
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 320
	popq %rdi // 312
	subq $8, %rsp // 320
	xorq %rax, %rax
	callq _get_inst_suffix
	addq $8, %rsp // 312
	pushq %rax // 320
//call get_register_by_size
	leaq L_.str.83(%rip), %rax
	pushq %rax // 328
//cast to (int*)
//cast to (char*)
	movq -264(%rbp), %rax // t2
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 336
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 328
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 336
	popq %rsi // 328
	popq %rdi // 320
	subq $0, %rsp // 320
	xorq %rax, %rax
	callq _get_register_by_size
	addq $0, %rsp // 320
	pushq %rax // 328
	popq %rdx // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//call out
	leaq L_.str.189(%rip), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//}
	jmp END_IF416
ELSE416:
END_IF416:
//}
	jmp END_IF414
ELSE414:
//if begin
//cast to (int*)
//cast to (char*)
	movq -264(%rbp), %rax // t2
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	cmpq $0, %rax
	je ELSE417
//{ (2336)
//call out
	leaq L_.str.187(%rip), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//call out
	leaq L_.str.192(%rip), %rax
	pushq %rax // 312
//call get_inst_suffix
//cast to (int*)
//cast to (char*)
	movq -264(%rbp), %rax // t2
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 320
	popq %rdi // 312
	subq $8, %rsp // 320
	xorq %rax, %rax
	callq _get_inst_suffix
	addq $8, %rsp // 312
	pushq %rax // 320
//call get_register_by_size
	leaq L_.str.83(%rip), %rax
	pushq %rax // 328
//cast to (int*)
//cast to (char*)
	movq -264(%rbp), %rax // t2
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 336
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 328
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 336
	popq %rsi // 328
	popq %rdi // 320
	subq $0, %rsp // 320
	xorq %rax, %rax
	callq _get_register_by_size
	addq $0, %rsp // 320
	pushq %rax // 328
//call get_register_by_size
	leaq L_.str.111(%rip), %rax
	pushq %rax // 336
//cast to (int*)
//cast to (char*)
	movq -264(%rbp), %rax // t2
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 344
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 336
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 344
	popq %rsi // 336
	popq %rdi // 328
	subq $8, %rsp // 336
	xorq %rax, %rax
	callq _get_register_by_size
	addq $8, %rsp // 328
	pushq %rax // 336
	popq %rcx // 328
	popq %rdx // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//call out
	leaq L_.str.189(%rip), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//}
	jmp END_IF417
ELSE417:
//{ (2345)
//if begin
//cast to (int*)
//cast to (char*)
	movq -264(%rbp), %rax // t2
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE418
//{ (2347)
//call out
	leaq L_.str.187(%rip), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//call out
	leaq L_.str.192(%rip), %rax
	pushq %rax // 312
//call get_inst_suffix
//cast to (int*)
//cast to (char*)
	movq -264(%rbp), %rax // t2
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 320
	popq %rdi // 312
	subq $8, %rsp // 320
	xorq %rax, %rax
	callq _get_inst_suffix
	addq $8, %rsp // 312
	pushq %rax // 320
//call get_register_by_size
	leaq L_.str.83(%rip), %rax
	pushq %rax // 328
//cast to (int*)
//cast to (char*)
	movq -264(%rbp), %rax // t2
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 336
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 328
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 336
	popq %rsi // 328
	popq %rdi // 320
	subq $0, %rsp // 320
	xorq %rax, %rax
	callq _get_register_by_size
	addq $0, %rsp // 320
	pushq %rax // 328
//call get_register_by_size
	leaq L_.str.111(%rip), %rax
	pushq %rax // 336
//cast to (int*)
//cast to (char*)
	movq -264(%rbp), %rax // t2
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 344
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 336
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 344
	popq %rsi // 336
	popq %rdi // 328
	subq $8, %rsp // 336
	xorq %rax, %rax
	callq _get_register_by_size
	addq $8, %rsp // 328
	pushq %rax // 336
	popq %rcx // 328
	popq %rdx // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//call out
	leaq L_.str.193(%rip), %rax
	pushq %rax // 312
//call get_inst_suffix
//cast to (int*)
//cast to (char*)
	movq -264(%rbp), %rax // t2
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 320
	popq %rdi // 312
	subq $8, %rsp // 320
	xorq %rax, %rax
	callq _get_inst_suffix
	addq $8, %rsp // 312
	pushq %rax // 320
//call get_register_by_size
	leaq L_.str.111(%rip), %rax
	pushq %rax // 328
//cast to (int*)
//cast to (char*)
	movq -264(%rbp), %rax // t2
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 336
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 328
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 336
	popq %rsi // 328
	popq %rdi // 320
	subq $0, %rsp // 320
	xorq %rax, %rax
	callq _get_register_by_size
	addq $0, %rsp // 320
	pushq %rax // 328
	popq %rdx // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//}
	jmp END_IF418
ELSE418:
END_IF418:
//}
END_IF417:
END_IF414:
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
	pushq %rax // 312
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $4, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE419
//{ (2363)
//call gen
//cast to (struct Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $0, %rsp // 304
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
	pushq %rax // 312
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $258, %rax
	pushq %rax // 320
	movq $259, %rax
	pushq %rax // 328
	movq $1, %rax
	xorq %r10, %r10
	subq %rax, %r10
	movq %r10, %rax
	pushq %rax // 336
	popq %rcx // 328
	popq %rdx // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _type_match
	addq $0, %rsp // 304
	cmpq $0, %rax
	je ELSE420
//{ (2366)
	movslq _curr_label(%rip), %rax
	pushq %rax // 312
	movslq _curr_label(%rip), %rax
	pushq %rax // 320
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 312
	addq %r10, %rax
	movl %eax, _curr_label(%rip)
	popq %rax // 304
	movl %eax, -268(%rbp) // label = rax
//cast to (int*)
//cast to (char*)
//cast to (struct Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $258, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	movl %eax, -272(%rbp) // is_and = rax
//call out
	leaq L_.str.140(%rip), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//call out
	leaq L_.str.194(%rip), %rax
	pushq %rax // 312
	movslq -272(%rbp), %rax // is_and
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	pushq %rax // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//call out
	leaq L_.str.195(%rip), %rax
	pushq %rax // 312
	movslq -272(%rbp), %rax // is_and
	cmpq $0, %rax
	je QUES421
	leaq L_.str.196(%rip), %rax
	jmp QUES_END421
QUES421:
	leaq L_.str.197(%rip), %rax
QUES_END421:
	pushq %rax // 320
	movslq -268(%rbp), %rax // label
	pushq %rax // 328
	popq %rdx // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//call gen
//cast to (struct Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $0, %rsp // 304
//call out
	leaq L_.str.140(%rip), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//call out
	leaq L_.str.198(%rip), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//call out
	leaq L_.str.199(%rip), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//call fprintf
	movq _f(%rip), %rax // f
	pushq %rax // 312
	leaq L_.str.200(%rip), %rax
	pushq %rax // 320
	movslq -268(%rbp), %rax // label
	pushq %rax // 328
	popq %rdx // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _fprintf
	addq $0, %rsp // 304
//}
	jmp END_IF420
ELSE420:
//{ (2379)
//call push
	leaq L_.str.83(%rip), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _push
	addq $0, %rsp // 304
//call gen
//cast to (struct Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $0, %rsp // 304
//call out
	leaq L_.str.201(%rip), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//call pop
	leaq L_.str.83(%rip), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _pop
	addq $0, %rsp // 304
//call assert
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $136, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _assert
	addq $0, %rsp // 304
//call assert
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $136, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _assert
	addq $0, %rsp // 304
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $43, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR423
//cast to (int*)
//cast to (char*)
//cast to (struct Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $45, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR423:
	cmpq $0, %rax
	je ELSE422
//{ (2392)
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
	pushq %rax // 312
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $136, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR425
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
	pushq %rax // 312
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $136, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 304
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
AND_OR425:
	cmpq $0, %rax
	je ELSE424
//call out
	leaq L_.str.202(%rip), %rax
	pushq %rax // 312
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
	pushq %rax // 320
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $136, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
	jmp END_IF424
ELSE424:
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
	pushq %rax // 312
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $136, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 304
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
	pushq %rax // 312
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $136, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 304
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
	movq $0, %rax
	je AND_OR428
//cast to (int*)
//cast to (char*)
//cast to (struct Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $43, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR428:
	cmpq $0, %rax
	je ELSE426
//call out
	leaq L_.str.203(%rip), %rax
	pushq %rax // 312
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
	pushq %rax // 320
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $136, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
	jmp END_IF426
ELSE426:
END_IF426:
END_IF424:
//}
	jmp END_IF422
ELSE422:
END_IF422:
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $43, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE429
//call out
	leaq L_.str.204(%rip), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
	jmp END_IF429
ELSE429:
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $45, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE430
//call out
	leaq L_.str.205(%rip), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
	jmp END_IF430
ELSE430:
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $42, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE431
//call out
	leaq L_.str.206(%rip), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
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
	pushq %rax // 312
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $47, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR433
//cast to (int*)
//cast to (char*)
//cast to (struct Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $37, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR433:
	cmpq $0, %rax
	je ELSE432
//{ (2406)
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $136, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 304
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
	je ELSE434
//{ (2410)
//call out
	leaq L_.str.207(%rip), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//call out
	leaq L_.str.208(%rip), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//}
	jmp END_IF434
ELSE434:
//{ (2415)
//call out
	leaq L_.str.209(%rip), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//call out
	leaq L_.str.210(%rip), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//}
END_IF434:
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $37, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE435
//call out
	leaq L_.str.211(%rip), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
	jmp END_IF435
ELSE435:
END_IF435:
//}
	jmp END_IF432
ELSE432:
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
	pushq %rax // 312
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $260, %rax
	pushq %rax // 320
	movq $261, %rax
	pushq %rax // 328
	movq $262, %rax
	pushq %rax // 336
	movq $263, %rax
	pushq %rax // 344
	movq $60, %rax
	pushq %rax // 352
	popq %r9 // 344
	popq %r8 // 336
	popq %rcx // 328
	popq %rdx // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	movq $1, %rax
	xorq %r10, %r10
	subq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $62, %rax
	pushq %rax // 320
	xorq %rax, %rax
	callq _type_match
	addq $16, %rsp // 304
	cmpq $0, %rax
	je ELSE436
//{ (2424)
	leaq L_.str.196(%rip), %rax
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
	pushq %rax // 312
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $260, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE437
	leaq L_.str.212(%rip), %rax
	movq %rax, -280(%rbp) // s = rax
	jmp END_IF437
ELSE437:
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $261, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE438
	leaq L_.str.213(%rip), %rax
	movq %rax, -280(%rbp) // s = rax
	jmp END_IF438
ELSE438:
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $60, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE439
	leaq L_.str.76(%rip), %rax
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
	pushq %rax // 312
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $62, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE440
	leaq L_.str.214(%rip), %rax
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
	pushq %rax // 312
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $262, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE441
	leaq L_.str.215(%rip), %rax
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
	pushq %rax // 312
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $263, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE442
	leaq L_.str.216(%rip), %rax
	movq %rax, -280(%rbp) // s = rax
	jmp END_IF442
ELSE442:
//call assert
	movq $0, %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _assert
	addq $0, %rsp // 304
END_IF442:
END_IF441:
END_IF440:
END_IF439:
END_IF438:
END_IF437:
//call out
	leaq L_.str.217(%rip), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//call out
	leaq L_.str.218(%rip), %rax
	pushq %rax // 312
	movq -280(%rbp), %rax // s
	pushq %rax // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//call out
	leaq L_.str.219(%rip), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//call out
	leaq L_.str.199(%rip), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//}
	jmp END_IF436
ELSE436:
END_IF436:
END_IF432:
END_IF431:
END_IF430:
END_IF429:
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
	pushq %rax // 312
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $136, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR444
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
	pushq %rax // 312
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $136, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR444:
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR445
//cast to (int*)
//cast to (char*)
//cast to (struct Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $45, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR445:
	cmpq $0, %rax
	je ELSE443
//{ (2446)
//call out
	leaq L_.str.220(%rip), %rax
	pushq %rax // 312
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
	pushq %rax // 320
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $136, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//call out
	leaq L_.str.209(%rip), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//call out
	leaq L_.str.210(%rip), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//}
	jmp END_IF443
ELSE443:
END_IF443:
//}
END_IF420:
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
	pushq %rax // 312
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $5, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE446
//{ (2454)
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $15, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE447
//{ (2456)
//call gen
//cast to (struct Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $0, %rsp // 304
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $136, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $7, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE448
//{ (2459)
//call assert
	movq $0, %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _assert
	addq $0, %rsp // 304
//call push
	leaq L_.str.83(%rip), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _push
	addq $0, %rsp // 304
//call gen
//cast to (struct Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $0, %rsp // 304
//call pop
	leaq L_.str.99(%rip), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _pop
	addq $0, %rsp // 304
//call out
	leaq L_.str.221(%rip), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//call out
	leaq L_.str.222(%rip), %rax
	pushq %rax // 312
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $136, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//call out
	leaq L_.str.223(%rip), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//}
	jmp END_IF448
ELSE448:
//{ (2469)
//call push
	leaq L_.str.83(%rip), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _push
	addq $0, %rsp // 304
//call gen
//cast to (struct Node**)
//cast to (char*)
//cast to (struct Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $0, %rsp // 304
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
	pushq %rax // 312
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $136, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 304
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
	je ELSE449
//call error_token
//cast to (struct Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 312
	leaq L_.str.183(%rip), %rax
	pushq %rax // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _error_token
	addq $0, %rsp // 304
	jmp END_IF449
ELSE449:
END_IF449:
//call pop
	leaq L_.str.111(%rip), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _pop
	addq $0, %rsp // 304
//call out
	leaq L_.str.224(%rip), %rax
	pushq %rax // 312
//call get_inst_suffix
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $136, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 320
	popq %rdi // 312
	subq $8, %rsp // 320
	xorq %rax, %rax
	callq _get_inst_suffix
	addq $8, %rsp // 312
	pushq %rax // 320
//call get_register_by_size
	leaq L_.str.111(%rip), %rax
	pushq %rax // 328
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 336
	movq $136, %rax
	movq %rax, %r10
	popq %rax // 328
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 336
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 328
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 336
	popq %rsi // 328
	popq %rdi // 320
	subq $0, %rsp // 320
	xorq %rax, %rax
	callq _get_register_by_size
	addq $0, %rsp // 320
	pushq %rax // 328
	popq %rdx // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//}
END_IF448:
//}
	jmp END_IF447
ELSE447:
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $2, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE450
//{ (2483)
//call gen
//cast to (struct Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $0, %rsp // 304
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
	pushq %rax // 312
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 312
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $136, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 304
	movq %r10, (%rax)
//call assert
//cast to (struct Type**)
//cast to (char*)
//cast to (struct Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $136, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _assert
	addq $0, %rsp // 304
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $136, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $3, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE451
//call error_token
//cast to (struct Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 312
	leaq L_.str.225(%rip), %rax
	pushq %rax // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _error_token
	addq $0, %rsp // 304
	jmp END_IF451
ELSE451:
END_IF451:
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
	pushq %rax // 312
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	cmpq $0, %rax
	je ELSE452
//{ (2492)
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $136, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $7, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE453
//call assert
	movq $0, %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _assert
	addq $0, %rsp // 304
	jmp END_IF453
ELSE453:
END_IF453:
//call out
	leaq L_.str.226(%rip), %rax
	pushq %rax // 312
//call get_inst_suffix
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $136, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 320
	popq %rdi // 312
	subq $8, %rsp // 320
	xorq %rax, %rax
	callq _get_inst_suffix
	addq $8, %rsp // 312
	pushq %rax // 320
//call get_register_by_size
	leaq L_.str.83(%rip), %rax
	pushq %rax // 328
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 336
	movq $136, %rax
	movq %rax, %r10
	popq %rax // 328
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 336
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 328
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 336
	popq %rsi // 328
	popq %rdi // 320
	subq $0, %rsp // 320
	xorq %rax, %rax
	callq _get_register_by_size
	addq $0, %rsp // 320
	pushq %rax // 328
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
	pushq %rax // 336
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 328
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 336
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 328
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 336
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 328
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 336
	popq %rcx // 328
	popq %rdx // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//}
	jmp END_IF452
ELSE452:
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
	pushq %rax // 312
	movq $136, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $7, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE454
//{ (2502)
//call assert
	movq $0, %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _assert
	addq $0, %rsp // 304
//call out
	leaq L_.str.227(%rip), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//call out
	leaq L_.str.228(%rip), %rax
	pushq %rax // 312
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
	pushq %rax // 320
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//call out
	leaq L_.str.229(%rip), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//call out
	leaq L_.str.222(%rip), %rax
	pushq %rax // 312
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
	pushq %rax // 320
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//call out
	leaq L_.str.223(%rip), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//}
	jmp END_IF454
ELSE454:
//{ (2511)
//call out
	leaq L_.str.230(%rip), %rax
	pushq %rax // 312
//call get_inst_suffix
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $136, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 320
	popq %rdi // 312
	subq $8, %rsp // 320
	xorq %rax, %rax
	callq _get_inst_suffix
	addq $8, %rsp // 312
	pushq %rax // 320
//call get_register_by_size
	leaq L_.str.83(%rip), %rax
	pushq %rax // 328
//cast to (int*)
//cast to (char*)
//cast to (struct Type**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 336
	movq $136, %rax
	movq %rax, %r10
	popq %rax // 328
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 336
	movq $28, %rax
	movq %rax, %r10
	popq %rax // 328
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 336
	popq %rsi // 328
	popq %rdi // 320
	subq $0, %rsp // 320
	xorq %rax, %rax
	callq _get_register_by_size
	addq $0, %rsp // 320
	pushq %rax // 328
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
	pushq %rax // 336
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 328
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 336
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 328
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 336
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 328
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 336
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
	pushq %rax // 344
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 336
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 344
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 336
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 344
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 336
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 344
	popq %r8 // 336
	popq %rcx // 328
	popq %rdx // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//}
END_IF454:
//}
END_IF452:
//}
	jmp END_IF450
ELSE450:
//call assert
	movq $0, %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _assert
	addq $0, %rsp // 304
END_IF450:
END_IF447:
//}
	jmp END_IF446
ELSE446:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $19, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE455
//{ (2522)
//if begin
	movslq _loop_counter(%rip), %rax
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE456
//call error_token
//cast to (struct Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 312
	leaq L_.str.231(%rip), %rax
	pushq %rax // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _error_token
	addq $0, %rsp // 304
	jmp END_IF456
ELSE456:
END_IF456:
//if begin
	movslq _curr_loop_is_for(%rip), %rax
	cmpq $0, %rax
	je ELSE457
//call out
	leaq L_.str.232(%rip), %rax
	pushq %rax // 312
	movslq _curr_loop_label(%rip), %rax
	pushq %rax // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
	jmp END_IF457
ELSE457:
//call out
	leaq L_.str.147(%rip), %rax
	pushq %rax // 312
	movslq _curr_loop_label(%rip), %rax
	pushq %rax // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
END_IF457:
//}
	jmp END_IF455
ELSE455:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $20, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE458
//{ (2531)
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
	pushq %rax // 312
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 312
	leaq L_.str.233(%rip), %rax
	pushq %rax // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _error_token
	addq $0, %rsp // 304
	jmp END_IF459
ELSE459:
END_IF459:
//if begin
	movslq _curr_loop_is_for(%rip), %rax
	cmpq $0, %rax
	je ELSE460
//call out
	leaq L_.str.234(%rip), %rax
	pushq %rax // 312
	movslq _curr_loop_label(%rip), %rax
	pushq %rax // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
	jmp END_IF460
ELSE460:
//call out
	leaq L_.str.235(%rip), %rax
	pushq %rax // 312
	movslq _curr_loop_label(%rip), %rax
	pushq %rax // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
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
	pushq %rax // 312
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $13, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE461
//{ (2540)
//call gen
//cast to (struct Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $0, %rsp // 304
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $33, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE462
//{ (2543)
//call out
	leaq L_.str.140(%rip), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//call out
	leaq L_.str.198(%rip), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//call out
	leaq L_.str.236(%rip), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//call out
	leaq L_.str.219(%rip), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//call out
	leaq L_.str.199(%rip), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//}
	jmp END_IF462
ELSE462:
//if begin
//cast to (int*)
//cast to (char*)
//cast to (struct Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $275, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR464
//cast to (int*)
//cast to (char*)
//cast to (struct Token**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $276, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR464:
	cmpq $0, %rax
	je ELSE463
//{ (2551)
//call push
	leaq L_.str.83(%rip), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _push
	addq $0, %rsp // 304
//call new_node
	movq $3, %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _new_node
	addq $0, %rsp // 304
	movq %rax, -288(%rbp) // one = rax
//call new_temp_token
	movq $256, %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _new_temp_token
	addq $0, %rsp // 304
	pushq %rax // 312
//cast to (struct Token**)
//cast to (char*)
	movq -288(%rbp), %rax // one
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 304
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
	pushq %rax // 312
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $275, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je QUES465
	movq $1, %rax
	jmp QUES_END465
QUES465:
	movq $1, %rax
	xorq %r10, %r10
	subq %rax, %r10
	movq %r10, %rax
QUES_END465:
	pushq %rax // 312
//cast to (long*)
//cast to (char*)
//cast to (struct Token**)
//cast to (char*)
	movq -288(%rbp), %rax // one
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $8, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 304
	movq %r10, (%rax)
//call new_node
	movq $5, %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _new_node
	addq $0, %rsp // 304
	movq %rax, -296(%rbp) // assign = rax
//call new_temp_token
	movq $61, %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _new_temp_token
	addq $0, %rsp // 304
	pushq %rax // 312
//cast to (struct Token**)
//cast to (char*)
	movq -296(%rbp), %rax // assign
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 304
	movq %r10, (%rax)
//cast to (struct Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 312
//cast to (struct Node**)
//cast to (char*)
	movq -296(%rbp), %rax // assign
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 304
	movq %r10, (%rax)
//call new_node
	movq $4, %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _new_node
	addq $0, %rsp // 304
	pushq %rax // 312
//cast to (struct Node**)
//cast to (char*)
	movq -296(%rbp), %rax // assign
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 304
	movq %r10, (%rax)
//call new_temp_token
	movq $43, %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _new_temp_token
	addq $0, %rsp // 304
	pushq %rax // 312
//cast to (struct Token**)
//cast to (char*)
//cast to (struct Node**)
//cast to (char*)
	movq -296(%rbp), %rax // assign
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $16, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 304
	movq %r10, (%rax)
//cast to (struct Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 312
//cast to (struct Node**)
//cast to (char*)
//cast to (struct Node**)
//cast to (char*)
	movq -296(%rbp), %rax // assign
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 304
	movq %r10, (%rax)
	movq -288(%rbp), %rax // one
	pushq %rax // 312
//cast to (struct Node**)
//cast to (char*)
//cast to (struct Node**)
//cast to (char*)
	movq -296(%rbp), %rax // assign
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 320
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 312
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 304
	movq %r10, (%rax)
//call add_type
	movq -296(%rbp), %rax // assign
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _add_type
	addq $0, %rsp // 304
//call gen
	movq -296(%rbp), %rax // assign
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $0, %rsp // 304
//call pop
	leaq L_.str.83(%rip), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _pop
	addq $0, %rsp // 304
//}
	jmp END_IF463
ELSE463:
//call assert
	movq $0, %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _assert
	addq $0, %rsp // 304
END_IF463:
END_IF462:
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
	pushq %rax // 312
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 312
	movq $22, %rax
	movq %rax, %r10
	popq %rax // 304
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE466
//{ (2571)
	movslq _curr_label(%rip), %rax
	pushq %rax // 312
	movslq _curr_label(%rip), %rax
	pushq %rax // 320
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 312
	addq %r10, %rax
	movl %eax, _curr_label(%rip)
	popq %rax // 304
	movl %eax, -300(%rbp) // label = rax
//call gen
//cast to (struct Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $56, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $0, %rsp // 304
//call out
	leaq L_.str.140(%rip), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//call out
	leaq L_.str.237(%rip), %rax
	pushq %rax // 312
	movslq -300(%rbp), %rax // label
	pushq %rax // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//call gen
//cast to (struct Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $24, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $0, %rsp // 304
//call out
	leaq L_.str.238(%rip), %rax
	pushq %rax // 312
	movslq -300(%rbp), %rax // label
	pushq %rax // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _out
	addq $0, %rsp // 304
//call fprintf
	movq _f(%rip), %rax // f
	pushq %rax // 312
	leaq L_.str.239(%rip), %rax
	pushq %rax // 320
	movslq -300(%rbp), %rax // label
	pushq %rax // 328
	popq %rdx // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _fprintf
	addq $0, %rsp // 304
//call gen
//cast to (struct Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $32, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $0, %rsp // 304
//call fprintf
	movq _f(%rip), %rax // f
	pushq %rax // 312
	leaq L_.str.240(%rip), %rax
	pushq %rax // 320
	movslq -300(%rbp), %rax // label
	pushq %rax // 328
	popq %rdx // 320
	popq %rsi // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _fprintf
	addq $0, %rsp // 304
//}
	jmp END_IF466
ELSE466:
//call assert
	movq $0, %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _assert
	addq $0, %rsp // 304
END_IF466:
END_IF461:
END_IF458:
END_IF455:
END_IF446:
END_IF419:
END_IF412:
END_IF410:
END_IF406:
END_IF401:
END_IF390:
END_IF378:
END_IF377:
END_IF375:
END_IF373:
END_IF372:
END_IF370:
END_IF369:
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
	pushq %rax // 312
	movq $104, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	cmpq $0, %rax
	je ELSE467
//call gen
//cast to (struct Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 312
	movq $104, %rax
	movq %rax, %r10
	popq %rax // 304
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax // 312
	popq %rdi // 304
	subq $0, %rsp // 304
	xorq %rax, %rax
	callq _gen
	addq $0, %rsp // 304
	jmp END_IF467
ELSE467:
END_IF467:
//}
	addq $304, %rsp // 0
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

//void print(struct Node* node)
_print:
	pushq %rbp
	movq %rsp, %rbp
	subq $20, %rsp // 20
	movq %rdi, -8(%rbp) //node
//{ (2593)
	movslq _tab(%rip), %rax
	pushq %rax // 28
	movq $4, %rax
	movq %rax, %r10
	popq %rax // 20
	addq %r10, %rax
	movl %eax, _tab(%rip)
//call printf
	leaq L_.str.241(%rip), %rax
	pushq %rax // 28
	movslq _tab(%rip), %rax
	pushq %rax // 36
	movq $32, %rax
	pushq %rax // 44
	popq %rdx // 36
	popq %rsi // 28
	popq %rdi // 20
	subq $12, %rsp // 32
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 20
//if begin
	movq -8(%rbp), %rax // node
	cmpq $0, %rax
	setne %al
	xorb $-1, %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR469
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
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
	movslq (%rax), %rax
	pushq %rax // 28
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 20
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR469:
	cmpq $0, %rax
	je ELSE468
//call printf
	leaq L_.str.242(%rip), %rax
	pushq %rax // 28
	popq %rdi // 20
	subq $12, %rsp // 32
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 20
	jmp END_IF468
ELSE468:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
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
	movslq (%rax), %rax
	pushq %rax // 28
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 20
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE470
//{ (2599)
//call printf
	leaq L_.str.243(%rip), %rax
	pushq %rax // 28
	popq %rdi // 20
	subq $12, %rsp // 32
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 20
//cast to (struct Node**)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 28
	movq $40, %rax
	movq %rax, %r10
	popq %rax // 20
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	movq %rax, -16(%rbp) // curr = rax
WHILE471:
	movq -16(%rbp), %rax // curr
	cmpq $0, %rax
	je WHILE_END471
//{ (2603)
//call print
	movq -16(%rbp), %rax // curr
	pushq %rax // 28
	popq %rdi // 20
	subq $12, %rsp // 32
	xorq %rax, %rax
	callq _print
	addq $12, %rsp // 20
//cast to (struct Node**)
//cast to (char*)
	movq -16(%rbp), %rax // curr
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 28
	movq $40, %rax
	movq %rax, %r10
	popq %rax // 20
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	movq %rax, -16(%rbp) // curr = rax
//}
	jmp WHILE471
WHILE_END471:
//}
	jmp END_IF470
ELSE470:
//if begin
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
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
	movslq (%rax), %rax
	pushq %rax // 28
	movq $14, %rax
	movq %rax, %r10
	popq %rax // 20
	cmpq %r10, %rax
	sete %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE472
//{ (2609)
//call printf
	leaq L_.str.244(%rip), %rax
	pushq %rax // 28
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
	popq %rsi // 28
	popq %rdi // 20
	subq $12, %rsp // 32
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 20
//for init
	movq $0, %rax
	movl %eax, -20(%rbp) // i = rax
FOR473:
	movslq -20(%rbp), %rax // i
	pushq %rax // 28
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 36
	movq $1764, %rax
	movq %rax, %r10
	popq %rax // 28
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	movq %rax, %r10
	popq %rax // 20
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je FOR_END473
//{ (2612)
//call printf
	leaq L_.str.121(%rip), %rax
	pushq %rax // 28
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
	pushq %rax // 36
	movq $960, %rax
	movq %rax, %r10
	popq %rax // 28
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 36
	movslq -20(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 28
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
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
	movq (%rax), %rax
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
	movq (%rax), %rax
	pushq %rax // 36
	popq %rdi // 28
	subq $4, %rsp // 32
	xorq %rax, %rax
	callq _get_type_str
	addq $4, %rsp // 28
	pushq %rax // 36
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
	pushq %rax // 44
	movq $960, %rax
	movq %rax, %r10
	popq %rax // 36
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 44
	movslq -20(%rbp), %rax // i
	movq %rax, %r10
	popq %rax // 36
	imulq $8, %r10
	addq %r10, %rax
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
	movq (%rax), %rax
	pushq %rax // 44
	popq %rdx // 36
	popq %rsi // 28
	popq %rdi // 20
	subq $12, %rsp // 32
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 20
//if begin
	movslq -20(%rbp), %rax // i
	pushq %rax // 28
//cast to (int*)
//cast to (char*)
	movq -8(%rbp), %rax // node
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 36
	movq $1764, %rax
	movq %rax, %r10
	popq %rax // 28
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax // 36
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 28
	subq %r10, %rax
	movq %rax, %r10
	popq %rax // 20
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE474
//call printf
	leaq L_.str.122(%rip), %rax
	pushq %rax // 28
	popq %rdi // 20
	subq $12, %rsp // 32
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 20
	jmp END_IF474
ELSE474:
END_IF474:
//}
FOR_INC473:
	movslq -20(%rbp), %rax // i
	pushq %rax // 28
	movslq -20(%rbp), %rax // i
	pushq %rax // 36
	movq $1, %rax
	movq %rax, %r10
	popq %rax // 28
	addq %r10, %rax
	movl %eax, -20(%rbp) // i = rax
	popq %rax // 20
	jmp FOR473
FOR_END473:
//call printf
	leaq L_.str.123(%rip), %rax
	pushq %rax // 28
	popq %rdi // 20
	subq $12, %rsp // 32
	xorq %rax, %rax
	callq _printf
	addq $12, %rsp // 20
//}
	jmp END_IF472
ELSE472:
END_IF472:
END_IF470:
END_IF468:
	movslq _tab(%rip), %rax
	pushq %rax // 28
	movq $4, %rax
	movq %rax, %r10
	popq %rax // 20
	subq %r10, %rax
	movl %eax, _tab(%rip)
//}
	addq $20, %rsp // 0
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
//{ (2623)
//cast to (char*)
	movq $0, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq %rax, -16(%rbp) // buffer = rax
//call fopen
	movq -8(%rbp), %rax // name
	pushq %rax // 40
	leaq L_.str.245(%rip), %rax
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
	je ELSE475
//{ (2628)
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
	je ELSE476
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
	jmp END_IF476
ELSE476:
END_IF476:
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
	jmp END_IF475
ELSE475:
END_IF475:
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
//{ (2642)
	leaq L_.str.246(%rip), %rax
	movq %rax, _filename(%rip)
	movq $4, %rax
	xorq %r10, %r10
	subq %rax, %r10
	movq %r10, %rax
	movl %eax, _tab(%rip)
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
	leaq L_.str.75(%rip), %rax
	pushq %rax // 56
	popq %rsi // 48
	popq %rdi // 40
	subq $8, %rsp // 48
	xorq %rax, %rax
	callq _fopen
	addq $8, %rsp // 40
	movq %rax, _f(%rip)
//call assert
	movq _f(%rip), %rax // f
	pushq %rax // 48
	popq %rdi // 40
	subq $8, %rsp // 48
	xorq %rax, %rax
	callq _assert
	addq $8, %rsp // 40
//call printf
	leaq L_.str.247(%rip), %rax
	pushq %rax // 48
	popq %rdi // 40
	subq $8, %rsp // 48
	xorq %rax, %rax
	callq _printf
	addq $8, %rsp // 40
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
	leaq L_.str.248(%rip), %rax
	pushq %rax // 48
	popq %rdi // 40
	subq $8, %rsp // 48
	xorq %rax, %rax
	callq _out
	addq $8, %rsp // 40
//for init
	movq $0, %rax
	movl %eax, -20(%rbp) // i = rax
FOR477:
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
	je FOR_END477
//{ (2674)
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
	je AND_OR479
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
	movq $3, %rax
	movq %rax, %r10
	popq %rax // 40
	cmpq %r10, %rax
	setne %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR479:
	cmpq $0, %rax
	je ELSE478
//{ (2678)
//call printf
	leaq L_.str.249(%rip), %rax
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
	leaq L_.str.250(%rip), %rax
	pushq %rax // 56
	popq %rsi // 48
	popq %rdi // 40
	subq $8, %rsp // 48
	xorq %rax, %rax
	callq _error_token
	addq $8, %rsp // 40
//}
	jmp END_IF478
ELSE478:
END_IF478:
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
	je ELSE480
//{ (2683)
//call out
	leaq L_.str.251(%rip), %rax
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
	jmp END_IF480
ELSE480:
//{ (2688)
//call out
	leaq L_.str.252(%rip), %rax
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
	je ELSE481
//call out
	leaq L_.str.253(%rip), %rax
	pushq %rax // 48
	movslq -36(%rbp), %rax // align
	pushq %rax // 56
	popq %rsi // 48
	popq %rdi // 40
	subq $8, %rsp // 48
	xorq %rax, %rax
	callq _out
	addq $8, %rsp // 40
	jmp END_IF481
ELSE481:
END_IF481:
//call fprintf
	movq _f(%rip), %rax // f
	pushq %rax // 48
	leaq L_.str.124(%rip), %rax
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
	leaq L_.str.254(%rip), %rax
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
	je QUES482
//cast to (long)
	movq $0, %rax
	jmp QUES_END482
QUES482:
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
QUES_END482:
	pushq %rax // 64
	popq %rdx // 56
	popq %rsi // 48
	popq %rdi // 40
	subq $8, %rsp // 48
	xorq %rax, %rax
	callq _out
	addq $8, %rsp // 40
//}
END_IF480:
//}
FOR_INC477:
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
	jmp FOR477
FOR_END477:
//for init
	movq $0, %rax
	movl %eax, -40(%rbp) // i = rax
FOR483:
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
	je FOR_END483
//{ (2700)
//call fprintf
	movq _f(%rip), %rax // f
	pushq %rax // 48
	leaq L_.str.255(%rip), %rax
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
	leaq L_.str.256(%rip), %rax
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
FOR_INC483:
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
	jmp FOR483
FOR_END483:
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

	.comm __nodes,177600000,4

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
	.asciz "assertion failed\n"
L_.str.1:
	.asciz "int"
L_.str.2:
	.asciz "identifier"
L_.str.3:
	.asciz "string"
L_.str.4:
	.asciz "=="
L_.str.5:
	.asciz "!="
L_.str.6:
	.asciz "<="
L_.str.7:
	.asciz ">="
L_.str.8:
	.asciz "&&"
L_.str.9:
	.asciz "||"
L_.str.10:
	.asciz "++"
L_.str.11:
	.asciz "--"
L_.str.12:
	.asciz "+="
L_.str.13:
	.asciz "-="
L_.str.14:
	.asciz "*="
L_.str.15:
	.asciz "/="
L_.str.16:
	.asciz "->"
L_.str.17:
	.asciz "return"
L_.str.18:
	.asciz "for"
L_.str.19:
	.asciz "while"
L_.str.20:
	.asciz "if"
L_.str.21:
	.asciz "else"
L_.str.22:
	.asciz "void"
L_.str.23:
	.asciz "char"
L_.str.24:
	.asciz "short"
L_.str.25:
	.asciz "long"
L_.str.26:
	.asciz "unsigned"
L_.str.27:
	.asciz "signed"
L_.str.28:
	.asciz "break"
L_.str.29:
	.asciz "continue"
L_.str.30:
	.asciz "sizeof"
L_.str.31:
	.asciz "struct"
L_.str.32:
	.asciz "union"
L_.str.33:
	.asciz "enum"
L_.str.34:
	.asciz "unclosed comment"
L_.str.35:
	.asciz "missing terminating ' character"
L_.str.36:
	.asciz "missing terminating \" character"
L_.str.37:
	.asciz "+-*/%()=;,<>{}&[]?:.!"
L_.str.38:
	.asciz "unknown token `%c`"
L_.str.39:
	.asciz "finished tokenize\n"
L_.str.40:
	.asciz "redeclaration of variable \"%s\"\n"
L_.str.41:
	.asciz "type with size 0?"
L_.str.42:
	.asciz "expected `%s`"
L_.str.43:
	.asciz "struct "
L_.str.44:
	.asciz "*"
L_.str.45:
	.asciz "[]"
L_.str.46:
	.asciz "unknown"
L_.str.47:
	.asciz "invalid operand for '%s' operator"
L_.str.48:
	.asciz "invalid operand for '&'"
L_.str.49:
	.asciz "derefrencing a non-pointer"
L_.str.50:
	.asciz "derefrencing a void pointer"
L_.str.51:
	.asciz "invalid operand for '-'"
L_.str.52:
	.asciz "invalid operands to binary expression ('%s' and '%s')"
L_.str.53:
	.asciz "ASSERT"
L_.str.54:
	.asciz "empty structs are not handled yet"
L_.str.55:
	.asciz "declared struct %s\n"
L_.str.56:
	.asciz "hello1\n"
L_.str.57:
	.asciz "hello2\n"
L_.str.58:
	.asciz "hello3\n"
L_.str.59:
	.asciz "expected a function or variable declaration"
L_.str.60:
	.asciz "unknown type"
L_.str.61:
	.asciz "declared struct '%s': (size=%d)\n"
L_.str.62:
	.asciz "\t%s %s\n"
L_.str.63:
	.asciz "invalid type"
L_.str.64:
	.asciz "parse function %s\n"
L_.str.65:
	.asciz "variable type can't be void"
L_.str.66:
	.asciz "invalid initiliazer"
L_.str.67:
	.asciz "expression is not assignable"
L_.str.68:
	.asciz "expected struct pointer"
L_.str.69:
	.asciz "expected struct type"
L_.str.70:
	.asciz "undeclared struct member"
L_.str.71:
	.asciz "undeclared function \"%s\""
L_.str.72:
	.asciz "undeclared variable `%s`\n"
L_.str.73:
	.asciz "expected an expression"
L_.str.74:
	.asciz "b"
L_.str.75:
	.asciz "w"
L_.str.76:
	.asciz "l"
L_.str.77:
	.asciz "q"
L_.str.78:
	.asciz "byte"
L_.str.79:
	.asciz "quad"
L_.str.80:
	.asciz "al"
L_.str.81:
	.asciz "ax"
L_.str.82:
	.asciz "eax"
L_.str.83:
	.asciz "rax"
L_.str.84:
	.asciz "dh"
L_.str.85:
	.asciz "dx"
L_.str.86:
	.asciz "edx"
L_.str.87:
	.asciz "rdx"
L_.str.88:
	.asciz "ch"
L_.str.89:
	.asciz "cx"
L_.str.90:
	.asciz "ecx"
L_.str.91:
	.asciz "rcx"
L_.str.92:
	.asciz "dil"
L_.str.93:
	.asciz "di"
L_.str.94:
	.asciz "edi"
L_.str.95:
	.asciz "rdi"
L_.str.96:
	.asciz "sil"
L_.str.97:
	.asciz "si"
L_.str.98:
	.asciz "esi"
L_.str.99:
	.asciz "rsi"
L_.str.100:
	.asciz "r8b"
L_.str.101:
	.asciz "r8w"
L_.str.102:
	.asciz "r8d"
L_.str.103:
	.asciz "r8"
L_.str.104:
	.asciz "r9b"
L_.str.105:
	.asciz "r9w"
L_.str.106:
	.asciz "r9d"
L_.str.107:
	.asciz "r9"
L_.str.108:
	.asciz "r10b"
L_.str.109:
	.asciz "r10w"
L_.str.110:
	.asciz "r10d"
L_.str.111:
	.asciz "r10"
L_.str.112:
	.asciz "r11b"
L_.str.113:
	.asciz "r11w"
L_.str.114:
	.asciz "r11d"
L_.str.115:
	.asciz "r11"
L_.str.116:
	.asciz "pushq %%%s // %d"
L_.str.117:
	.asciz "popq %%%s // %d"
L_.str.118:
	.asciz "main"
L_.str.119:
	.asciz ".globl\t_main\n"
L_.str.120:
	.asciz "//%s %s("
L_.str.121:
	.asciz "%s %s"
L_.str.122:
	.asciz ", "
L_.str.123:
	.asciz ")\n"
L_.str.124:
	.asciz "_%s:\n"
L_.str.125:
	.asciz "pushq %%rbp"
L_.str.126:
	.asciz "movq %%rsp, %%rbp"
L_.str.127:
	.asciz "subq $%d, %%rsp // %d"
L_.str.128:
	.asciz "mov%s %%%s, -%d(%%rbp) //%s"
L_.str.129:
	.asciz "movq %d(%%rbp), %%rax"
L_.str.130:
	.asciz "mov%s %%%s, -%d(%%rbp) // %s"
L_.str.131:
	.asciz "addq $%d, %%rsp // %d"
L_.str.132:
	.asciz "movq $0, %%rax"
L_.str.133:
	.asciz "movq %%rbp, %%rsp"
L_.str.134:
	.asciz "popq %%rbp"
L_.str.135:
	.asciz "ret\n"
L_.str.136:
	.asciz "//{ (%d)\n"
L_.str.137:
	.asciz "//}\n"
L_.str.138:
	.asciz "ret"
L_.str.139:
	.asciz "//if begin\n"
L_.str.140:
	.asciz "cmpq $0, %%rax"
L_.str.141:
	.asciz "je ELSE%d"
L_.str.142:
	.asciz "jmp END_IF%d"
L_.str.143:
	.asciz "ELSE%d:\n"
L_.str.144:
	.asciz "END_IF%d:\n"
L_.str.145:
	.asciz "WHILE%d:\n"
L_.str.146:
	.asciz "je WHILE_END%d"
L_.str.147:
	.asciz "jmp WHILE%d"
L_.str.148:
	.asciz "WHILE_END%d:\n"
L_.str.149:
	.asciz "//for init\n"
L_.str.150:
	.asciz "FOR%d:\n"
L_.str.151:
	.asciz "je FOR_END%d"
L_.str.152:
	.asciz "FOR_INC%d:\n"
L_.str.153:
	.asciz "jmp FOR%d"
L_.str.154:
	.asciz "FOR_END%d:\n"
L_.str.155:
	.asciz "movabsq $%lld, %%rax"
L_.str.156:
	.asciz "movq $%lld, %%rax"
L_.str.157:
	.asciz "leaq L_.str.%d(%%rip), %%rax"
L_.str.158:
	.asciz "movq _%s@GOTPCREL(%%rip), %%rax"
L_.str.159:
	.asciz "movq %%rbp, %%rax // %s"
L_.str.160:
	.asciz "subq $%d, %%rax"
L_.str.161:
	.asciz "leaq _%s(%%rip), %%rax"
L_.str.162:
	.asciz "movz%sq _%s(%%rip), %%rax // %s"
L_.str.163:
	.asciz "mov%s _%s(%%rip), %%%s // %s"
L_.str.164:
	.asciz "movs%sq _%s(%%rip), %%rax"
L_.str.165:
	.asciz "movq _%s(%%rip), %%rax"
L_.str.166:
	.asciz "movz%sq -%d(%%rbp), %%rax // %s"
L_.str.167:
	.asciz "mov%s -%d(%%rbp), %%%s // %s"
L_.str.168:
	.asciz "movs%sq -%d(%%rbp), %%rax // %s"
L_.str.169:
	.asciz "movq -%d(%%rbp), %%rax // %s"
L_.str.170:
	.asciz "//%.*s"
L_.str.171:
	.asciz "movq %%rax, %%r12"
L_.str.172:
	.asciz "cmpq %%r12, %%rax"
L_.str.173:
	.asciz "je ASSERT_OK%d"
L_.str.174:
	.asciz "movq $%d, %%rdi"
L_.str.175:
	.asciz "movq %%r12, %%rsi"
L_.str.176:
	.asciz "movq %%rax, %%rdx"
L_.str.177:
	.asciz "callq _error"
L_.str.178:
	.asciz "ASSERT_OK%d:\n"
L_.str.179:
	.asciz "//call %s\n"
L_.str.180:
	.asciz "xorq %%rax, %%rax"
L_.str.181:
	.asciz "callq _%s"
L_.str.182:
	.asciz "movq %%rbp, %%rax // &%s"
L_.str.183:
	.asciz "dereferencing a non-pointer lvalue"
L_.str.184:
	.asciz "movs%sq (%%rax), %%rax"
L_.str.185:
	.asciz "movq (%%rax), %%rax"
L_.str.186:
	.asciz "negating a pointer"
L_.str.187:
	.asciz "xorq %%r10, %%r10"
L_.str.188:
	.asciz "subq %%rax, %%r10"
L_.str.189:
	.asciz "movq %%r10, %%rax"
L_.str.190:
	.asciz "//cast to (%s)\n"
L_.str.191:
	.asciz "movs%sq %%%s, %%r10"
L_.str.192:
	.asciz "mov%s %%%s, %%%s"
L_.str.193:
	.asciz "movs%sq %%%s, %%rax"
L_.str.194:
	.asciz "movq $%d, %%rax"
L_.str.195:
	.asciz "j%se AND_OR%d"
L_.str.196:
	.asciz ""
L_.str.197:
	.asciz "n"
L_.str.198:
	.asciz "setne %%al"
L_.str.199:
	.asciz "movzbq %%al, %%rax"
L_.str.200:
	.asciz "AND_OR%d:\n"
L_.str.201:
	.asciz "movq %%rax, %%r10"
L_.str.202:
	.asciz "imulq $%d, %%r10"
L_.str.203:
	.asciz "imulq $%d, %%rax"
L_.str.204:
	.asciz "addq %%r10, %%rax"
L_.str.205:
	.asciz "subq %%r10, %%rax"
L_.str.206:
	.asciz "imulq %%r10, %%rax"
L_.str.207:
	.asciz "cqto"
L_.str.208:
	.asciz "idivq %%r10"
L_.str.209:
	.asciz "xorq %%rdx, %%rdx"
L_.str.210:
	.asciz "divq %%r10"
L_.str.211:
	.asciz "movq %%rdx, %%rax"
L_.str.212:
	.asciz "e"
L_.str.213:
	.asciz "ne"
L_.str.214:
	.asciz "g"
L_.str.215:
	.asciz "le"
L_.str.216:
	.asciz "ge"
L_.str.217:
	.asciz "cmpq %%r10, %%rax"
L_.str.218:
	.asciz "set%s %%al"
L_.str.219:
	.asciz "andb $1, %%al"
L_.str.220:
	.asciz "movq $%d, %%r10"
L_.str.221:
	.asciz "movq %%rax, %%rdi"
L_.str.222:
	.asciz "movq $%d, %%rdx"
L_.str.223:
	.asciz "callq _memcpy"
L_.str.224:
	.asciz "mov%s %%%s, (%%rax)"
L_.str.225:
	.asciz "array is constant"
L_.str.226:
	.asciz "mov%s %%%s, _%s(%%rip)"
L_.str.227:
	.asciz "movq %%rbp, %%rdi"
L_.str.228:
	.asciz "subq $%d, %%rdi"
L_.str.229:
	.asciz "movq %%rax, %%rsi"
L_.str.230:
	.asciz "mov%s %%%s, -%d(%%rbp) // %s = rax"
L_.str.231:
	.asciz "'continue' statement not in loop statement"
L_.str.232:
	.asciz "jmp FOR_INC%d"
L_.str.233:
	.asciz "'break' statement not in loop statement"
L_.str.234:
	.asciz "jmp FOR_END%d"
L_.str.235:
	.asciz "jmp WHILE_END%d"
L_.str.236:
	.asciz "xorb $-1, %%al"
L_.str.237:
	.asciz "je QUES%d"
L_.str.238:
	.asciz "jmp QUES_END%d"
L_.str.239:
	.asciz "QUES%d:\n"
L_.str.240:
	.asciz "QUES_END%d:\n"
L_.str.241:
	.asciz "%*ctype: "
L_.str.242:
	.asciz "none\n"
L_.str.243:
	.asciz "program\n"
L_.str.244:
	.asciz "function definition %s("
L_.str.245:
	.asciz "r"
L_.str.246:
	.asciz "final.c"
L_.str.247:
	.asciz "finished parsing\n"
L_.str.248:
	.asciz ".section	__DATA,__data"
L_.str.249:
	.asciz "error name: %s %c\n"
L_.str.250:
	.asciz "todo: evaluate constant expressions\n"
L_.str.251:
	.asciz ".comm _%s,%d,%d\n"
L_.str.252:
	.asciz ".globl _%s"
L_.str.253:
	.asciz ".p2align %d"
L_.str.254:
	.asciz ".%s %d\n"
L_.str.255:
	.asciz "L_.str.%d:\n"
L_.str.256:
	.asciz ".asciz \"%s\""
