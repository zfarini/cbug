_error:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movl %edi, -4(%rbp)
	movl %esi, -8(%rbp)
	movl %edx, -12(%rbp)
//begin block
	leaq L_.str.0(%rip), %rax
	pushq %rax
	movslq -4(%rbp), %rax
	pushq %rax
	movslq -8(%rbp), %rax
	pushq %rax
	movslq -12(%rbp), %rax
	pushq %rax
	popq %rcx
	popq %rdx
	popq %rsi
	popq %rdi
	callq _printf
	movq $1, %rax
	pushq %rax
	popq %rdi
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
	movq $1, %rax
	xorq %r10, %r10
	subq %rax, %r10
	movq %r10, %rax
	movl %eax, -4(%rbp)
	movq $1, %rax
	movl %eax, -8(%rbp)
	movl -4(%rbp), %eax
	pushq %rax
	movl -8(%rbp), %eax
	movq %rax, %r10
	popq %rax
	cmpq %r10, %rax
	setg %al
	movzbq %al, %rax
	movq %rbp, %rsp
	popq %rbp
	ret
//end block
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

	.section	__DATA,__data
L_.str.0:
	.asciz "line %d: assertion failed, expected %d, but found %d\n"
