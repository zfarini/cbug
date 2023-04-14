_error:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movl %edi, -4(%rbp)
	movl %esi, -8(%rbp)
	movl %edx, -12(%rbp)
//begin block
	leaq L_.str.0(%rip), %rax
	movq %rax, %rdi
	movslq -4(%rbp), %rax
	movq %rax, %rsi
	movslq -8(%rbp), %rax
	movq %rax, %rdx
	movslq -12(%rbp), %rax
	movq %rax, %rcx
	xorq %rax, %rax
	callq _printf
	movq $1, %rax
	movq %rax, %rdi
	xorq %rax, %rax
	callq _exit
//end block
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

.globl	_main
_main:
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
//begin block
//ASSERT(3, { int a; a=3; a; });
	movq $3, %rax
	movq %rax, %r12

//begin block
	movq $3, %rax
	movl %eax, -4(%rbp)
	movslq -4(%rbp), %rax
//end block
	cmpq %r12, %rax
	je ASSERT_OK0

	movq $13, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK0:
//ASSERT(3, { int a=3; a; });
	movq $3, %rax
	movq %rax, %r12

//begin block
	movq $3, %rax
	movl %eax, -8(%rbp)
	movslq -8(%rbp), %rax
//end block
	cmpq %r12, %rax
	je ASSERT_OK1

	movq $14, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK1:
//ASSERT(8, { int a=3; int z=5; a+z; });
	movq $8, %rax
	movq %rax, %r12

//begin block
	movq $3, %rax
	movl %eax, -12(%rbp)
	movq $5, %rax
	movl %eax, -16(%rbp)
	movslq -12(%rbp), %rax
	pushq %rax
	movslq -16(%rbp), %rax
	movq %rax, %r10
	popq %rax
	addq %r10, %rax
//end block
	cmpq %r12, %rax
	je ASSERT_OK2

	movq $15, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK2:
//ASSERT(3, { int a=3; a; });
	movq $3, %rax
	movq %rax, %r12

//begin block
	movq $3, %rax
	movl %eax, -20(%rbp)
	movslq -20(%rbp), %rax
//end block
	cmpq %r12, %rax
	je ASSERT_OK3

	movq $16, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK3:
//ASSERT(8, { int a=3; int z=5; a+z; });
	movq $8, %rax
	movq %rax, %r12

//begin block
	movq $3, %rax
	movl %eax, -24(%rbp)
	movq $5, %rax
	movl %eax, -28(%rbp)
	movslq -24(%rbp), %rax
	pushq %rax
	movslq -28(%rbp), %rax
	movq %rax, %r10
	popq %rax
	addq %r10, %rax
//end block
	cmpq %r12, %rax
	je ASSERT_OK4

	movq $17, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK4:
//ASSERT(6, { int a; int b; a=b=3; a+b;b; });
	movq $6, %rax
	movq %rax, %r12

//begin block
	movq $3, %rax
	movl %eax, -36(%rbp)
	movl %eax, -32(%rbp)
	movslq -32(%rbp), %rax
	pushq %rax
	movslq -36(%rbp), %rax
	movq %rax, %r10
	popq %rax
	addq %r10, %rax
	movslq -36(%rbp), %rax
//end block
	cmpq %r12, %rax
	je ASSERT_OK5

	movq $18, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK5:
//ASSERT(3, { int x[2]; int *y=&x; *y=3; *x; });
	movq $3, %rax
	movq %rax, %r12

//begin block
	movq %rbp, %rax
	subq $0, %rax
	movq %rax, -8(%rbp)
	movq $3, %rax
	pushq %rax
	movq -8(%rbp), %rax
	popq %r10
	movl %r10d, (%rax)
	movq %rbp, %rax
	subq $0, %rax
	movl (%rax), %eax
//end block
	cmpq %r12, %rax
	je ASSERT_OK6

	movq $21, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK6:
//ASSERT(5, { int i = 0;for (i = 1; i < 10; i++) if (i % 5 == 0) break; i; });
	movq $5, %rax
	movq %rax, %r12

//begin block
	movq $0, %rax
	movl %eax, -12(%rbp)
//for init
	movq $1, %rax
	movl %eax, -12(%rbp)
FOR8:
	movslq -12(%rbp), %rax
	pushq %rax
	movq $10, %rax
	movq %rax, %r10
	popq %rax
	cmpq %r10, %rax
	setl %al
	movzbq %al, %rax
	cmpq $0, %rax
	je FOR_END8
//if begin
	movslq -12(%rbp), %rax
	pushq %rax
	movq $5, %rax
	movq %rax, %r10
	popq %rax
	cltd
	idivq %r10
	movq %rdx, %rax
	pushq %rax
	movq $0, %rax
	movq %rax, %r10
	popq %rax
	cmpq %r10, %rax
	sete %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE9
	jmp FOR_END8
	jmp END_IF9
ELSE9:
END_IF9:
FOR_INC8:
	movslq -12(%rbp), %rax
	pushq %rax
	movslq -12(%rbp), %rax
	pushq %rax
	movq $1, %rax
	movq %rax, %r10
	popq %rax
	addq %r10, %rax
	movl %eax, -12(%rbp)
	popq %rax
	jmp FOR8
FOR_END8:
	movslq -12(%rbp), %rax
//end block
	cmpq %r12, %rax
	je ASSERT_OK7

	movq $23, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK7:
//ASSERT(5, { 
	movq $5, %rax
	movq %rax, %r12

//begin block
//for init
FOR11:
	cmpq $0, %rax
	je FOR_END11
FOR_INC11:
	jmp FOR11
FOR_END11:
//end block
	cmpq %r12, %rax
	je ASSERT_OK10

	movq $25, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK10:
//end block
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

	.section	__DATA,__data
L_.str.0:
	.asciz "line %d: assertion failed, expected %d, but found %d\n"
