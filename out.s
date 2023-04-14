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
	xorq %rax, %rax
	movl -4(%rbp), %eax
	movq %rax, %rsi
	xorq %rax, %rax
	movl -8(%rbp), %eax
	movq %rax, %rdx
	xorq %rax, %rax
	movl -12(%rbp), %eax
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
	subq $16, %rsp
//begin block
//ASSERT(10, {int a = 3; int y = 7; a + y;});
	movq $10, %rax
	movq %rax, %r11

//begin block
	movq $3, %rax
	movl %eax, -4(%rbp)
	movq $7, %rax
	movl %eax, -8(%rbp)
	xorq %rax, %rax
	movl -4(%rbp), %eax
	pushq %rax
	xorq %rax, %rax
	movl -8(%rbp), %eax
	movq %rax, %r10
	popq %rax
	addq %r10, %rax
//end block
	cmpq %r11, %rax
	je ASSERT_OK0

	movq $13, %rdi
	movq %r11, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK0:
//end block
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

	.section	__DATA,__data
L_.str.0:
	.asciz "line %d: assertion failed, expected %d, but found %d\n"
