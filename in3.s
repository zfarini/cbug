.globl	_main
//int main()
_main:
	pushq %rbp
	movq %rsp, %rbp
	subq $4, %rsp // 4
//{ (5)
	movq $5, %rax
	pushq %rax // 12
//cast to (int*)
//cast to (char*)
	movq %rbp, %rax // &s
	subq $4, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax // 20
	movq $0, %rax
	movq %rax, %r10
	popq %rax // 12
	imulq $1, %r10
	addq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10 // 4
	movl %r10d, (%rax)
//}
	addq $4, %rsp // 0
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

	.section	__DATA,__data
