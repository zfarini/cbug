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
//begin block
//for init
	movq $0, %rax
	movl %eax, -8(%rbp)
FOR1:
//begin block
//if begin
	movslq -8(%rbp), %rax
	pushq %rax
	movslq -4(%rbp), %rax
	movq %rax, %r10
	popq %rax
	cmpq %r10, %rax
	setg %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE2
	jmp FOR_END1
	jmp END_IF2
ELSE2:
END_IF2:
	leaq L_.str.0(%rip), %rax
	pushq %rax
	popq %rdi
	callq _printf
//end block
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
//if begin
	movslq -4(%rbp), %rax
	pushq %rax
	movq $5, %rax
	movq %rax, %r10
	popq %rax
	cmpq %r10, %rax
	sete %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE3
	jmp FOR_END0
	jmp END_IF3
ELSE3:
END_IF3:
	leaq L_.str.1(%rip), %rax
	pushq %rax
	popq %rdi
	callq _printf
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
//end block
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

	.section	__DATA,__data
L_.str.0:
	.asciz "*"
L_.str.1:
	.asciz "\n"
