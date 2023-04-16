.globl	_main
//int main()
_main:
	pushq %rbp
	movq %rsp, %rbp
	subq $0, %rsp
//{ (5)
//call printf
	leaq L_.str.0(%rip), %rax
	pushq %rax
//call type_match
	movq $3, %rax
	pushq %rax
	movq $1, %rax
	pushq %rax
	movq $2, %rax
	pushq %rax
	movq $3, %rax
	pushq %rax
	movq $4, %rax
	pushq %rax
	movq $5, %rax
	pushq %rax
	popq %r9
	popq %r8
	popq %rcx
	popq %rdx
	popq %rsi
	popq %rdi
	movq $1, %rax
	xorq %r10, %r10
	subq %rax, %r10
	movq %r10, %rax
	pushq %rax
	movq $8, %rax
	pushq %rax
	movq $7, %rax
	pushq %rax
	movq $6, %rax
	pushq %rax
	xorq %rax, %rax
	callq _type_match
	addq $32, %rsp
	pushq %rax
	popq %rsi
	popq %rdi
	xorq %rax, %rax
	//callq _printf
//}
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

	.section	__DATA,__data
L_.str.0:
	.asciz "%d\n"
