.globl	_main
_main:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
//begin block
//for init
	movq $0, %rax
	movl %eax, -4(%rbp)
FOR0:
	movslq -4(%rbp), %rax
	pushq %rax
	movq $3, %rax
	movq %rax, %r10
	popq %rax
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je FOR_END0
//begin block
	leaq L_.str.0(%rip), %rax
	pushq %rax
	movq _v@GOTPCREL(%rip), %rax
	pushq %rax
	movslq -4(%rbp), %rax
	movq %rax, %r10
	popq %rax
	imulq $12, %r10
	addq %r10, %rax
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
	pushq %rax
	movq _v@GOTPCREL(%rip), %rax
	pushq %rax
	movslq -4(%rbp), %rax
	movq %rax, %r10
	popq %rax
	imulq $12, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax
	movq $4, %rax
	movq %rax, %r10
	popq %rax
	imulq $1, %r10
	addq %r10, %rax
	pushq %rax
	movq _v@GOTPCREL(%rip), %rax
	pushq %rax
	movslq -4(%rbp), %rax
	movq %rax, %r10
	popq %rax
	imulq $12, %r10
	addq %r10, %rax
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
	pushq %rax
	popq %rcx
	popq %rdx
	popq %rsi
	popq %rdi
	callq _scanf
//end block
FOR_INC0:
	movslq -4(%rbp), %rax
	pushq %rax
	movslq -4(%rbp), %rax
	pushq %rax
	movq $1, %rax
	movq %rax, %r10
	popq %rax
	addq %r10, %rax
	movl %eax, -4(%rbp)
	popq %rax
	jmp FOR0
FOR_END0:
//for init
	movq $0, %rax
	movl %eax, -8(%rbp)
FOR1:
	movslq -8(%rbp), %rax
	pushq %rax
	movq $3, %rax
	movq %rax, %r10
	popq %rax
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je FOR_END1
	leaq L_.str.1(%rip), %rax
	pushq %rax
	movq _v@GOTPCREL(%rip), %rax
	pushq %rax
	movslq -8(%rbp), %rax
	movq %rax, %r10
	popq %rax
	imulq $12, %r10
	addq %r10, %rax
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
	movq _v@GOTPCREL(%rip), %rax
	pushq %rax
	movslq -8(%rbp), %rax
	movq %rax, %r10
	popq %rax
	imulq $12, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax
	movq $4, %rax
	movq %rax, %r10
	popq %rax
	imulq $1, %r10
	addq %r10, %rax
	movsbq (%rax), %rax
	pushq %rax
	movq _v@GOTPCREL(%rip), %rax
	pushq %rax
	movslq -8(%rbp), %rax
	movq %rax, %r10
	popq %rax
	imulq $12, %r10
	addq %r10, %rax
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
FOR_INC1:
	movslq -8(%rbp), %rax
	pushq %rax
	movslq -8(%rbp), %rax
	pushq %rax
	movq $1, %rax
	movq %rax, %r10
	popq %rax
	addq %r10, %rax
	movl %eax, -8(%rbp)
	popq %rax
	jmp FOR1
FOR_END1:
//end block
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

	.section	__DATA,__data
	.comm _v,1200,12
L_.str.0:
	.asciz "%d %c %d"
L_.str.1:
	.asciz "%d %c %d\n"
