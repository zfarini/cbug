_fib:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movl %edi, -4(%rbp)
//begin block
//if begin
	movslq -4(%rbp), %rax
	pushq %rax
	movq $1, %rax
	movq %rax, %r10
	popq %rax
	cmpq %r10, %rax
	setle %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE0
	movslq -4(%rbp), %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF0
ELSE0:
END_IF0:
	movslq -4(%rbp), %rax
	pushq %rax
	movq $1, %rax
	movq %rax, %r10
	popq %rax
	subq %r10, %rax
	pushq %rax
	popq %rdi
	callq _fib
	pushq %rax
	movslq -4(%rbp), %rax
	pushq %rax
	movq $2, %rax
	movq %rax, %r10
	popq %rax
	subq %r10, %rax
	pushq %rax
	popq %rdi
	callq _fib
	movq %rax, %r10
	popq %rax
	addq %r10, %rax
	movq %rbp, %rsp
	popq %rbp
	ret
//end block
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

_strlen:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq %rdi, -8(%rbp)
//begin block
	movq $0, %rax
	movl %eax, -12(%rbp)
WHILE1:
	movq -8(%rbp), %rax
	pushq %rax
	movslq -12(%rbp), %rax
	movq %rax, %r10
	popq %rax
	imulq $1, %r10
	addq %r10, %rax
	movsbq (%rax), %rax
	cmpq $0, %rax
	je WHILE_END1
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
	jmp WHILE1
WHILE_END1:
	movslq -12(%rbp), %rax
	movq %rbp, %rsp
	popq %rbp
	ret
//end block
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

_ft_putstr:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq %rdi, -8(%rbp)
//begin block
	movq $1, %rax
	pushq %rax
	movq -8(%rbp), %rax
	pushq %rax
	movq -8(%rbp), %rax
	pushq %rax
	popq %rdi
	callq _strlen
	pushq %rax
	popq %rdx
	popq %rsi
	popq %rdi
	callq _write
//end block
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

_swap:
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	movq %rdi, -8(%rbp)
	movq %rsi, -16(%rbp)
//begin block
	movq -16(%rbp), %rax
	movslq (%rax), %rax
	movl %eax, -20(%rbp)
	movq -8(%rbp), %rax
	movslq (%rax), %rax
	pushq %rax
	movq -16(%rbp), %rax
	popq %r10
	movl %r10d, (%rax)
	movslq -20(%rbp), %rax
	pushq %rax
	movq -8(%rbp), %rax
	popq %r10
	movl %r10d, (%rax)
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
	leaq L_.str.0(%rip), %rax
	pushq %rax
	popq %rdi
	callq _ft_putstr
//for init
	movq $0, %rax
	movl %eax, -44(%rbp)
FOR2:
	movslq -44(%rbp), %rax
	pushq %rax
	movq $10, %rax
	movq %rax, %r10
	popq %rax
	cmpq %r10, %rax
	setl %al
	movzbq %al, %rax
	cmpq $0, %rax
	je FOR_END2
	movslq -44(%rbp), %rax
	pushq %rax
	movq %rbp, %rax
	subq $40, %rax
	pushq %rax
	movslq -44(%rbp), %rax
	movq %rax, %r10
	popq %rax
	imulq $4, %r10
	addq %r10, %rax
	popq %r10
	movl %r10d, (%rax)
FOR_INC2:
	movslq -44(%rbp), %rax
	pushq %rax
	movslq -44(%rbp), %rax
	pushq %rax
	movq $1, %rax
	movq %rax, %r10
	popq %rax
	addq %r10, %rax
	movl %eax, -44(%rbp)
	popq %rax
	jmp FOR2
FOR_END2:
	movq %rbp, %rax
	subq $40, %rax
	pushq %rax
	movq $0, %rax
	movq %rax, %r10
	popq %rax
	imulq $4, %r10
	addq %r10, %rax
	pushq %rax
	movq %rbp, %rax
	subq $40, %rax
	pushq %rax
	movq $1, %rax
	movq %rax, %r10
	popq %rax
	imulq $4, %r10
	addq %r10, %rax
	pushq %rax
	popq %rsi
	popq %rdi
	callq _swap
	movq $0, %rax
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
	.asciz "bla\n"
