_swap:
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	movq %rdi, -8(%rbp)
	movq %rsi, -16(%rbp)
//begin block
	movq -16(%rbp), %rax
	movq %rbp, %rdi
	subq $24, %rdi
	movq %rax, %rsi
	movq $8, %rdx
	callq _memcpy
	movq -8(%rbp), %rax
	movq %rax, %rsi
	movq -16(%rbp), %rax
	movq %rax, %rdi
	movq $8, %rdx
	callq _memcpy
	movq %rbp, %rax
	subq $24, %rax
	movq %rax, %rsi
	movq -8(%rbp), %rax
	movq %rax, %rdi
	movq $8, %rdx
	callq _memcpy
//end block
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

_sort_by_sum:
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	movq %rdi, -8(%rbp)
	movl %esi, -12(%rbp)
//begin block
//for init
	movq $0, %rax
	movl %eax, -16(%rbp)
FOR0:
	movslq -16(%rbp), %rax
	pushq %rax
	movslq -12(%rbp), %rax
	movq %rax, %r10
	popq %rax
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je FOR_END0
//for init
	movq $1, %rax
	movl %eax, -20(%rbp)
FOR1:
	movslq -20(%rbp), %rax
	pushq %rax
	movslq -12(%rbp), %rax
	movq %rax, %r10
	popq %rax
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je FOR_END1
//if begin
	movq -8(%rbp), %rax
	pushq %rax
	movslq -20(%rbp), %rax
	movq %rax, %r10
	popq %rax
	imulq $8, %r10
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
	movq -8(%rbp), %rax
	pushq %rax
	movslq -20(%rbp), %rax
	movq %rax, %r10
	popq %rax
	imulq $8, %r10
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
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	movq %rax, %r10
	popq %rax
	addq %r10, %rax
	pushq %rax
	movq -8(%rbp), %rax
	pushq %rax
	movslq -20(%rbp), %rax
	pushq %rax
	movq $1, %rax
	movq %rax, %r10
	popq %rax
	subq %r10, %rax
	movq %rax, %r10
	popq %rax
	imulq $8, %r10
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
	movq -8(%rbp), %rax
	pushq %rax
	movslq -20(%rbp), %rax
	pushq %rax
	movq $1, %rax
	movq %rax, %r10
	popq %rax
	subq %r10, %rax
	movq %rax, %r10
	popq %rax
	imulq $8, %r10
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
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	movq %rax, %r10
	popq %rax
	addq %r10, %rax
	movq %rax, %r10
	popq %rax
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE2
	movq -8(%rbp), %rax
	pushq %rax
	movslq -20(%rbp), %rax
	pushq %rax
	movq $1, %rax
	movq %rax, %r10
	popq %rax
	subq %r10, %rax
	movq %rax, %r10
	popq %rax
	imulq $8, %r10
	addq %r10, %rax
	pushq %rax
	movq -8(%rbp), %rax
	pushq %rax
	movslq -20(%rbp), %rax
	movq %rax, %r10
	popq %rax
	imulq $8, %r10
	addq %r10, %rax
	pushq %rax
	popq %rsi
	popq %rdi
	callq _swap
	jmp END_IF2
ELSE2:
END_IF2:
FOR_INC1:
	movslq -20(%rbp), %rax
	pushq %rax
	movslq -20(%rbp), %rax
	pushq %rax
	movq $1, %rax
	movq %rax, %r10
	popq %rax
	addq %r10, %rax
	movl %eax, -20(%rbp)
	popq %rax
	jmp FOR1
FOR_END1:
FOR_INC0:
	movslq -16(%rbp), %rax
	pushq %rax
	movslq -16(%rbp), %rax
	pushq %rax
	movq $1, %rax
	movq %rax, %r10
	popq %rax
	addq %r10, %rax
	movl %eax, -16(%rbp)
	popq %rax
	jmp FOR0
FOR_END0:
//end block
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

.globl	_main
_main:
	pushq %rbp
	movq %rsp, %rbp
	subq $816, %rsp
//begin block
	leaq L_.str.0(%rip), %rax
	pushq %rax
	movq %rbp, %rax
	subq $804, %rax
	pushq %rax
	popq %rsi
	popq %rdi
	callq _scanf
//for init
	movq $0, %rax
	movl %eax, -808(%rbp)
FOR3:
	movslq -808(%rbp), %rax
	pushq %rax
	movslq -804(%rbp), %rax
	movq %rax, %r10
	popq %rax
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je FOR_END3
	leaq L_.str.1(%rip), %rax
	pushq %rax
	movq %rbp, %rax
	subq $800, %rax
	pushq %rax
	movslq -808(%rbp), %rax
	movq %rax, %r10
	popq %rax
	imulq $8, %r10
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
	movq %rbp, %rax
	subq $800, %rax
	pushq %rax
	movslq -808(%rbp), %rax
	movq %rax, %r10
	popq %rax
	imulq $8, %r10
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
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax
	popq %rdx
	popq %rsi
	popq %rdi
	callq _scanf
FOR_INC3:
	movslq -808(%rbp), %rax
	pushq %rax
	movslq -808(%rbp), %rax
	pushq %rax
	movq $1, %rax
	movq %rax, %r10
	popq %rax
	addq %r10, %rax
	movl %eax, -808(%rbp)
	popq %rax
	jmp FOR3
FOR_END3:
	movq %rbp, %rax
	subq $800, %rax
	pushq %rax
	movslq -804(%rbp), %rax
	pushq %rax
	popq %rsi
	popq %rdi
	callq _sort_by_sum
//for init
	movq $0, %rax
	movl %eax, -812(%rbp)
FOR4:
	movslq -812(%rbp), %rax
	pushq %rax
	movslq -804(%rbp), %rax
	movq %rax, %r10
	popq %rax
	cmpq %r10, %rax
	setl %al
	andb $1, %al
	movzbq %al, %rax
	cmpq $0, %rax
	je FOR_END4
	leaq L_.str.2(%rip), %rax
	pushq %rax
	movq %rbp, %rax
	subq $800, %rax
	pushq %rax
	movslq -812(%rbp), %rax
	movq %rax, %r10
	popq %rax
	imulq $8, %r10
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
	movq %rbp, %rax
	subq $800, %rax
	pushq %rax
	movslq -812(%rbp), %rax
	movq %rax, %r10
	popq %rax
	imulq $8, %r10
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
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
	pushq %rax
	popq %rdx
	popq %rsi
	popq %rdi
	callq _printf
FOR_INC4:
	movslq -812(%rbp), %rax
	pushq %rax
	movslq -812(%rbp), %rax
	pushq %rax
	movq $1, %rax
	movq %rax, %r10
	popq %rax
	addq %r10, %rax
	movl %eax, -812(%rbp)
	popq %rax
	jmp FOR4
FOR_END4:
//end block
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

	.section	__DATA,__data
L_.str.0:
	.asciz "%d"
L_.str.1:
	.asciz "%d%d"
L_.str.2:
	.asciz "%d %d\n"
