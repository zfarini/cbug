.globl	_main
_main:
	pushq %rbp
	movq %rsp, %rbp
	subq $832, %rsp
//begin block
	leaq L_.str.0(%rip), %rax
	pushq %rax
	popq %rdi
	callq _printf
	leaq L_.str.1(%rip), %rax
	pushq %rax
	movq %rbp, %rax
	subq $816, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax
	movq $8, %rax
	movq %rax, %r10
	popq %rax
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax
	popq %rsi
	popq %rdi
	callq _printf
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	movq %rbp, %rax
	subq $820, %rax
	pushq %rax
	movq %rbp, %rax
	subq $816, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax
	movq $8, %rax
	movq %rax, %r10
	popq %rax
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax
	movq $0, %rax
	movq %rax, %r10
	popq %rax
	imulq $8, %r10
	addq %r10, %rax
	popq %r10
	movq %r10, (%rax)
	leaq L_.str.0(%rip), %rax
	pushq %rax
	popq %rdi
	callq _printf
	leaq L_.str.1(%rip), %rax
	pushq %rax
	movq %rbp, %rax
	subq $816, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax
	movq $8, %rax
	movq %rax, %r10
	popq %rax
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq (%rax), %rax
	pushq %rax
	movq $0, %rax
	movq %rax, %r10
	popq %rax
	imulq $8, %r10
	addq %r10, %rax
	movq (%rax), %rax
	pushq %rax
	popq %rsi
	popq %rdi
	callq _printf
//end block
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

	.section	__DATA,__data
L_.str.0:
	.asciz "hello\n"
L_.str.1:
	.asciz "%p\n"
