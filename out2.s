_swap:
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	movq %rdi, -8(%rbp)
	movq %rsi, -16(%rbp)
//begin block
	movq -8(%rbp), %rax
	movq (%rax), %rax
	movq %rax, -24(%rbp)
	movq -16(%rbp), %rax
	movq (%rax), %rax
	pushq %rax
	movq -8(%rbp), %rax
	popq %rdi
	movq %rdi, (%rax)
	movq -24(%rbp), %rax
	pushq %rax
	movq -16(%rbp), %rax
	popq %rdi
	movq %rdi, (%rax)
//end block
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

_fib:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq %rdi, -8(%rbp)
//begin block
//if begin
	movq -8(%rbp), %rax
	pushq %rax
	movq $1, %rax
	movq %rax, %rdi
	popq %rax
	cmpq %rdi, %rax
	setle %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE0
	movq -8(%rbp), %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp END_IF0
ELSE0:
END_IF0:
	movq -8(%rbp), %rax
	pushq %rax
	movq $1, %rax
	movq %rax, %rdi
	popq %rax
	subq %rdi, %rax
	movq %rax, %rdi
	callq _fib
	pushq %rax
	movq -8(%rbp), %rax
	pushq %rax
	movq $2, %rax
	movq %rax, %rdi
	popq %rax
	subq %rdi, %rax
	movq %rax, %rdi
	callq _fib
	movq %rax, %rdi
	popq %rax
	addq %rdi, %rax
	movq %rbp, %rsp
	popq %rbp
	ret
//end block
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

_fib2:
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	movq %rdi, -8(%rbp)
//begin block
	movq $8, %rax
	pushq %rax
	movq -8(%rbp), %rax
	pushq %rax
	movq $1, %rax
	movq %rax, %rdi
	popq %rax
	addq %rdi, %rax
	movq %rax, %rdi
	popq %rax
	imulq %rdi, %rax
	movq %rax, %rdi
	callq _malloc
	movq %rax, -16(%rbp)
	movq -16(%rbp), %rax
	movq %rax, %rdi
	callq _printp
	movq $0, %rax
	pushq %rax
	movq -16(%rbp), %rax
	pushq %rax
	movq $0, %rax
	movq %rax, %rdi
	popq %rax
	imulq $8, %rdi
	addq %rdi, %rax
	popq %rdi
	movq %rdi, (%rax)
	movq $1, %rax
	pushq %rax
	movq -16(%rbp), %rax
	pushq %rax
	movq $1, %rax
	movq %rax, %rdi
	popq %rax
	imulq $8, %rdi
	addq %rdi, %rax
	popq %rdi
	movq %rdi, (%rax)
//for init
	movq $2, %rax
	movq %rax, -24(%rbp)
FOR1:
	movq -24(%rbp), %rax
	pushq %rax
	movq -8(%rbp), %rax
	movq %rax, %rdi
	popq %rax
	cmpq %rdi, %rax
	setle %al
	movzbq %al, %rax
	cmpq $0, %rax
	je FOR_END1
	movq -16(%rbp), %rax
	pushq %rax
	movq -24(%rbp), %rax
	pushq %rax
	movq $1, %rax
	movq %rax, %rdi
	popq %rax
	subq %rdi, %rax
	movq %rax, %rdi
	popq %rax
	imulq $8, %rdi
	addq %rdi, %rax
	movq (%rax), %rax
	pushq %rax
	movq -16(%rbp), %rax
	pushq %rax
	movq -24(%rbp), %rax
	pushq %rax
	movq $2, %rax
	movq %rax, %rdi
	popq %rax
	subq %rdi, %rax
	movq %rax, %rdi
	popq %rax
	imulq $8, %rdi
	addq %rdi, %rax
	movq (%rax), %rax
	movq %rax, %rdi
	popq %rax
	addq %rdi, %rax
	pushq %rax
	movq -16(%rbp), %rax
	pushq %rax
	movq -24(%rbp), %rax
	movq %rax, %rdi
	popq %rax
	imulq $8, %rdi
	addq %rdi, %rax
	popq %rdi
	movq %rdi, (%rax)
	movq -24(%rbp), %rax
	pushq %rax
	movq $1, %rax
	movq %rax, %rdi
	popq %rax
	addq %rdi, %rax
	movq %rax, -24(%rbp)
	jmp FOR1
FOR_END1:
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
	subq $32, %rsp
//begin block
	movq $1, %rax
	pushq %rax
	movq %rbp, %rax
	subq $16, %rax
	popq %rdi
	movq %rdi, (%rax)
	movq $2, %rax
	pushq %rax
	movq %rbp, %rax
	subq $16, %rax
	pushq %rax
	movq $1, %rax
	movq %rax, %rdi
	popq %rax
	imulq $8, %rdi
	addq %rdi, %rax
	popq %rdi
	movq %rdi, (%rax)
	movq %rbp, %rax
	subq $16, %rax
	movq %rax, -24(%rbp)
	movq -24(%rbp), %rax
	movq (%rax), %rax
	pushq %rax
	movq -24(%rbp), %rax
	pushq %rax
	movq $1, %rax
	movq %rax, %rdi
	popq %rax
	imulq $8, %rdi
	addq %rdi, %rax
	movq (%rax), %rax
	movq %rax, %rdi
	popq %rax
	addq %rdi, %rax
	movq %rax, %rdi
	callq _print
//end block
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

