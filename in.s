_new_pair:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movl %edi, -4(%rbp)
	movl %esi, -8(%rbp)
//begin block
	movq $8, %rax
	pushq %rax
	popq %rdi
	callq _malloc
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq %rax, -16(%rbp)
	movslq -4(%rbp), %rax
	pushq %rax
	movq -16(%rbp), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax
	movq $0, %rax
	movq %rax, %r10
	popq %rax
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10
	movl %r10d, (%rax)
	movslq -8(%rbp), %rax
	pushq %rax
	movq -16(%rbp), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax
	movq $4, %rax
	movq %rax, %r10
	popq %rax
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10
	movl %r10d, (%rax)
	movq -16(%rbp), %rax
	movq %rbp, %rsp
	popq %rbp
	ret
//end block
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

.globl	_main
_main:
	pushq %rbp
	movq %rsp, %rbp
	subq $48, %rsp
//begin block
//begin block
	movq $1, %rax
	pushq %rax
	movq %rbp, %rax
	subq $12, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax
	movq $0, %rax
	movq %rax, %r10
	popq %rax
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax
	movq $0, %rax
	movq %rax, %r10
	popq %rax
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10
	movl %r10d, (%rax)
	movq $2, %rax
	pushq %rax
	movq %rbp, %rax
	subq $12, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax
	movq $0, %rax
	movq %rax, %r10
	popq %rax
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax
	movq $4, %rax
	movq %rax, %r10
	popq %rax
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10
	movl %r10d, (%rax)
	movq $6, %rax
	pushq %rax
	movq %rbp, %rax
	subq $12, %rax
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
	popq %r10
	movl %r10d, (%rax)
	leaq L_.str.0(%rip), %rax
	pushq %rax
	movq %rbp, %rax
	subq $12, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax
	movq $0, %rax
	movq %rax, %r10
	popq %rax
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax
	movq $0, %rax
	movq %rax, %r10
	popq %rax
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax
	movq %rbp, %rax
	subq $12, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax
	movq $0, %rax
	movq %rax, %r10
	popq %rax
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax
	movq $4, %rax
	movq %rax, %r10
	popq %rax
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax
	movq %rbp, %rax
	subq $12, %rax
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
	movslq (%rax), %rax
	pushq %rax
	popq %rcx
	popq %rdx
	popq %rsi
	popq %rdi
	callq _printf
//end block
	movq $1, %rax
	pushq %rax
	movq %rbp, %rax
	subq $24, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax
	movq $0, %rax
	movq %rax, %r10
	popq %rax
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10
	movl %r10d, (%rax)
	movq $2, %rax
	pushq %rax
	movq %rbp, %rax
	subq $24, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax
	movq $4, %rax
	movq %rax, %r10
	popq %rax
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10
	movl %r10d, (%rax)
	movq %rbp, %rax
	subq $24, %rax
	movq %rax, -32(%rbp)
	movq -32(%rbp), %rax
	movq %rbp, %rdi
	subq $40, %rdi
	movq %rax, %rsi
	movq $8, %rdx
	callq _memcpy
	leaq L_.str.1(%rip), %rax
	pushq %rax
	movq %rbp, %rax
	subq $40, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax
	movq $0, %rax
	movq %rax, %r10
	popq %rax
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax
	movq %rbp, %rax
	subq $40, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax
	movq $4, %rax
	movq %rax, %r10
	popq %rax
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax
	popq %rdx
	popq %rsi
	popq %rdi
	callq _printf
//end block
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

	.section	__DATA,__data
	.globl _x
	.p2align 2
_x:
	.long 0

L_.str.0:
	.asciz "%d %d %d\n"
L_.str.1:
	.asciz "%d %d\n"
