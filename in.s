.globl	_main
_main:
	pushq %rbp
	movq %rsp, %rbp
	subq $0, %rsp
//begin block
//end block
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

	.section	__DATA,__data
	.comm _v,1200,12
