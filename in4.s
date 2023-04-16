	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.globl	_type_match             ## -- Begin function type_match
	.p2align	4, 0x90
_type_match:                            ## @type_match
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$416, %rsp              ## imm = 0x1A0
	testb	%al, %al
	movaps	%xmm7, -240(%rbp)       ## 16-byte Spill
	movaps	%xmm6, -256(%rbp)       ## 16-byte Spill
	movaps	%xmm5, -272(%rbp)       ## 16-byte Spill
	movaps	%xmm4, -288(%rbp)       ## 16-byte Spill
	movaps	%xmm3, -304(%rbp)       ## 16-byte Spill
	movaps	%xmm2, -320(%rbp)       ## 16-byte Spill
	movaps	%xmm1, -336(%rbp)       ## 16-byte Spill
	movaps	%xmm0, -352(%rbp)       ## 16-byte Spill
	movq	%r9, -360(%rbp)         ## 8-byte Spill
	movq	%r8, -368(%rbp)         ## 8-byte Spill
	movq	%rcx, -376(%rbp)        ## 8-byte Spill
	movq	%rdx, -384(%rbp)        ## 8-byte Spill
	movq	%rsi, -392(%rbp)        ## 8-byte Spill
	movl	%edi, -396(%rbp)        ## 4-byte Spill
	je	LBB0_4
## %bb.3:
	movaps	-352(%rbp), %xmm0       ## 16-byte Reload
	movaps	%xmm0, -176(%rbp)
	movaps	-336(%rbp), %xmm1       ## 16-byte Reload
	movaps	%xmm1, -160(%rbp)
	movaps	-320(%rbp), %xmm2       ## 16-byte Reload
	movaps	%xmm2, -144(%rbp)
	movaps	-304(%rbp), %xmm3       ## 16-byte Reload
	movaps	%xmm3, -128(%rbp)
	movaps	-288(%rbp), %xmm4       ## 16-byte Reload
	movaps	%xmm4, -112(%rbp)
	movaps	-272(%rbp), %xmm5       ## 16-byte Reload
	movaps	%xmm5, -96(%rbp)
	movaps	-256(%rbp), %xmm6       ## 16-byte Reload
	movaps	%xmm6, -80(%rbp)
	movaps	-240(%rbp), %xmm7       ## 16-byte Reload
	movaps	%xmm7, -64(%rbp)
LBB0_4:
	movq	-360(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -184(%rbp)
	movq	-368(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -192(%rbp)
	movq	-376(%rbp), %rdx        ## 8-byte Reload
	movq	%rdx, -200(%rbp)
	movq	-384(%rbp), %rsi        ## 8-byte Reload
	movq	%rsi, -208(%rbp)
	movq	-392(%rbp), %rdi        ## 8-byte Reload
	movq	%rdi, -216(%rbp)
	leaq	-32(%rbp), %r8
	movq	___stack_chk_guard@GOTPCREL(%rip), %r9
	movq	(%r9), %r9
	movq	%r9, -8(%rbp)
	movl	-396(%rbp), %r10d       ## 4-byte Reload
	movl	%r10d, -36(%rbp)
	movq	%r8, %r9
	leaq	-224(%rbp), %r11
	movq	%r11, 16(%r9)
	leaq	16(%rbp), %r11
	movq	%r11, 8(%r9)
	movl	$48, 4(%r9)
	movl	$8, (%r9)
	movq	___stack_chk_guard@GOTPCREL(%rip), %r9
	movq	(%r9), %r9
	movq	-8(%rbp), %r11
	cmpq	%r11, %r9
	movq	%r8, -408(%rbp)         ## 8-byte Spill
	jne	LBB0_2
## %bb.1:
	xorl	%eax, %eax
	addq	$416, %rsp              ## imm = 0x1A0
	popq	%rbp
	retq
LBB0_2:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$3, %eax
	movl	%eax, %edi
	movl	$1, %esi
	movl	$2, %edx
	movl	%eax, %ecx
	movl	$4, %r8d
	movl	$5, %r9d
	movl	$6, (%rsp)
	movl	$7, 8(%rsp)
	movl	$8, 16(%rsp)
	movl	$-1, 24(%rsp)
	movb	$0, %al
	callq	_type_match
	leaq	L_.str(%rip), %rdi
	movl	%eax, %esi
	movb	$0, %al
	callq	_printf
	xorl	%ecx, %ecx
	movl	%eax, -4(%rbp)          ## 4-byte Spill
	movl	%ecx, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d\n"


.subsections_via_symbols
