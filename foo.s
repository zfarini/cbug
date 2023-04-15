	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.globl	_f                      ## -- Begin function f
	.p2align	4, 0x90
_f:                                     ## @f
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	16(%rbp), %rax
	movl	404(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 404(%rax)
	movsbl	400(%rax), %ecx
	imull	404(%rax), %ecx
	movl	%ecx, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_f2                     ## -- Begin function f2
	.p2align	4, 0x90
_f2:                                    ## @f2
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$832, %rsp              ## imm = 0x340
	movq	%rsp, %rax
	movl	$51, %ecx
	leaq	-416(%rbp), %rsi
	movq	%rax, %rdi
	rep;movsq (%rsi), %es:(%rdi)
	callq	_f
	movl	-4(%rbp), %edx
	movl	%eax, -420(%rbp)        ## 4-byte Spill
	movl	%edx, %eax
	addq	$832, %rsp              ## imm = 0x340
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
