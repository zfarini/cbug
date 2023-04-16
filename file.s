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
	subq	$432, %rsp              ## imm = 0x1B0
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
	je	LBB0_14
## %bb.13:
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
LBB0_14:
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
	movl	%r10d, -40(%rbp)
	leaq	-224(%rbp), %r9
	movq	%r9, 16(%r8)
	leaq	16(%rbp), %r9
	movq	%r9, 8(%r8)
	movl	$48, 4(%r8)
	movl	$8, (%r8)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	leaq	-32(%rbp), %rax
	movl	-32(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -408(%rbp)        ## 8-byte Spill
	movl	%ecx, -412(%rbp)        ## 4-byte Spill
	ja	LBB0_3
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-412(%rbp), %eax        ## 4-byte Reload
	movslq	%eax, %rcx
	movq	-408(%rbp), %rdx        ## 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -424(%rbp)        ## 8-byte Spill
	jmp	LBB0_4
LBB0_3:                                 ##   in Loop: Header=BB0_1 Depth=1
	movq	-408(%rbp), %rax        ## 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -424(%rbp)        ## 8-byte Spill
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	movq	-424(%rbp), %rax        ## 8-byte Reload
	movl	(%rax), %ecx
	movl	%ecx, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jge	LBB0_6
## %bb.5:
	jmp	LBB0_9
LBB0_6:                                 ##   in Loop: Header=BB0_1 Depth=1
	movl	-44(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jne	LBB0_8
## %bb.7:
	movl	$1, -36(%rbp)
	jmp	LBB0_10
LBB0_8:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_1
LBB0_9:
	movl	$0, -36(%rbp)
LBB0_10:
	movl	-36(%rbp), %eax
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movl	%eax, -428(%rbp)        ## 4-byte Spill
	jne	LBB0_12
## %bb.11:
	movl	-428(%rbp), %eax        ## 4-byte Reload
	addq	$432, %rsp              ## imm = 0x1B0
	popq	%rbp
	retq
LBB0_12:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_new_node               ## -- Begin function new_node
	.p2align	4, 0x90
_new_node:                              ## @new_node
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movq	__nodes@GOTPCREL(%rip), %rdx
	movq	__curr_node@GOTPCREL(%rip), %rsi
	movl	%edi, -4(%rbp)
	movl	(%rsi), %edi
	movl	%edi, %r8d
	addl	$1, %r8d
	movl	%r8d, (%rsi)
	movslq	%edi, %rsi
	imulq	$1776, %rsi, %rsi       ## imm = 0x6F0
	addq	%rsi, %rdx
	movq	%rdx, -16(%rbp)
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rdx
	movl	%edi, (%rdx)
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-16(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_error                  ## -- Begin function error
	.p2align	4, 0x90
_error:                                 ## @error
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$416, %rsp              ## imm = 0x1A0
	testb	%al, %al
	movaps	%xmm7, -224(%rbp)       ## 16-byte Spill
	movaps	%xmm6, -240(%rbp)       ## 16-byte Spill
	movaps	%xmm5, -256(%rbp)       ## 16-byte Spill
	movaps	%xmm4, -272(%rbp)       ## 16-byte Spill
	movaps	%xmm3, -288(%rbp)       ## 16-byte Spill
	movaps	%xmm2, -304(%rbp)       ## 16-byte Spill
	movaps	%xmm1, -320(%rbp)       ## 16-byte Spill
	movaps	%xmm0, -336(%rbp)       ## 16-byte Spill
	movq	%r9, -344(%rbp)         ## 8-byte Spill
	movq	%r8, -352(%rbp)         ## 8-byte Spill
	movq	%rcx, -360(%rbp)        ## 8-byte Spill
	movq	%rdx, -368(%rbp)        ## 8-byte Spill
	movq	%rsi, -376(%rbp)        ## 8-byte Spill
	movq	%rdi, -384(%rbp)        ## 8-byte Spill
	je	LBB2_2
## %bb.1:
	movaps	-336(%rbp), %xmm0       ## 16-byte Reload
	movaps	%xmm0, -160(%rbp)
	movaps	-320(%rbp), %xmm1       ## 16-byte Reload
	movaps	%xmm1, -144(%rbp)
	movaps	-304(%rbp), %xmm2       ## 16-byte Reload
	movaps	%xmm2, -128(%rbp)
	movaps	-288(%rbp), %xmm3       ## 16-byte Reload
	movaps	%xmm3, -112(%rbp)
	movaps	-272(%rbp), %xmm4       ## 16-byte Reload
	movaps	%xmm4, -96(%rbp)
	movaps	-256(%rbp), %xmm5       ## 16-byte Reload
	movaps	%xmm5, -80(%rbp)
	movaps	-240(%rbp), %xmm6       ## 16-byte Reload
	movaps	%xmm6, -64(%rbp)
	movaps	-224(%rbp), %xmm7       ## 16-byte Reload
	movaps	%xmm7, -48(%rbp)
LBB2_2:
	movq	-344(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-352(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -176(%rbp)
	movq	-360(%rbp), %rdx        ## 8-byte Reload
	movq	%rdx, -184(%rbp)
	movq	-368(%rbp), %rsi        ## 8-byte Reload
	movq	%rsi, -192(%rbp)
	movq	-376(%rbp), %rdi        ## 8-byte Reload
	movq	%rdi, -200(%rbp)
	movq	-384(%rbp), %r8         ## 8-byte Reload
	movq	%r8, -8(%rbp)
	leaq	-208(%rbp), %r9
	movq	%r9, -16(%rbp)
	leaq	16(%rbp), %r9
	movq	%r9, -24(%rbp)
	movl	$48, -28(%rbp)
	movl	$8, -32(%rbp)
	movq	___stderrp@GOTPCREL(%rip), %r9
	movq	(%r9), %rdi
	leaq	L_.str(%rip), %rsi
	xorl	%r10d, %r10d
	movb	%r10b, %r11b
	movb	%r11b, %al
	movq	%r9, -392(%rbp)         ## 8-byte Spill
	movb	%r11b, -393(%rbp)       ## 1-byte Spill
	callq	_fprintf
	movq	-392(%rbp), %rcx        ## 8-byte Reload
	movq	(%rcx), %rdi
	movq	-8(%rbp), %rsi
	leaq	-32(%rbp), %rdx
	movl	%eax, -400(%rbp)        ## 4-byte Spill
	callq	_vfprintf
	movq	-392(%rbp), %rcx        ## 8-byte Reload
	movq	(%rcx), %rdi
	leaq	L_.str.1(%rip), %rsi
	movb	-393(%rbp), %r11b       ## 1-byte Reload
	movl	%eax, -404(%rbp)        ## 4-byte Spill
	movb	%r11b, %al
	callq	_fprintf
	movl	$1, %edi
	movl	%eax, -408(%rbp)        ## 4-byte Spill
	callq	_exit
	.cfi_endproc
                                        ## -- End function
	.globl	_error_token            ## -- Begin function error_token
	.p2align	4, 0x90
_error_token:                           ## @error_token
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$424, %rsp              ## imm = 0x1A8
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	testb	%al, %al
	movaps	%xmm7, -256(%rbp)       ## 16-byte Spill
	movaps	%xmm6, -272(%rbp)       ## 16-byte Spill
	movaps	%xmm5, -288(%rbp)       ## 16-byte Spill
	movaps	%xmm4, -304(%rbp)       ## 16-byte Spill
	movaps	%xmm3, -320(%rbp)       ## 16-byte Spill
	movaps	%xmm2, -336(%rbp)       ## 16-byte Spill
	movaps	%xmm1, -352(%rbp)       ## 16-byte Spill
	movaps	%xmm0, -368(%rbp)       ## 16-byte Spill
	movq	%r9, -376(%rbp)         ## 8-byte Spill
	movq	%r8, -384(%rbp)         ## 8-byte Spill
	movq	%rcx, -392(%rbp)        ## 8-byte Spill
	movq	%rdx, -400(%rbp)        ## 8-byte Spill
	movq	%rsi, -408(%rbp)        ## 8-byte Spill
	movq	%rdi, -416(%rbp)        ## 8-byte Spill
	je	LBB3_2
## %bb.1:
	movaps	-368(%rbp), %xmm0       ## 16-byte Reload
	movaps	%xmm0, -192(%rbp)
	movaps	-352(%rbp), %xmm1       ## 16-byte Reload
	movaps	%xmm1, -176(%rbp)
	movaps	-336(%rbp), %xmm2       ## 16-byte Reload
	movaps	%xmm2, -160(%rbp)
	movaps	-320(%rbp), %xmm3       ## 16-byte Reload
	movaps	%xmm3, -144(%rbp)
	movaps	-304(%rbp), %xmm4       ## 16-byte Reload
	movaps	%xmm4, -128(%rbp)
	movaps	-288(%rbp), %xmm5       ## 16-byte Reload
	movaps	%xmm5, -112(%rbp)
	movaps	-272(%rbp), %xmm6       ## 16-byte Reload
	movaps	%xmm6, -96(%rbp)
	movaps	-256(%rbp), %xmm7       ## 16-byte Reload
	movaps	%xmm7, -80(%rbp)
LBB3_2:
	movq	-376(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -200(%rbp)
	movq	-384(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -208(%rbp)
	movq	-392(%rbp), %rdx        ## 8-byte Reload
	movq	%rdx, -216(%rbp)
	movq	-400(%rbp), %rsi        ## 8-byte Reload
	movq	%rsi, -224(%rbp)
	movq	-416(%rbp), %rdi        ## 8-byte Reload
	movq	%rdi, -32(%rbp)
	movq	-408(%rbp), %r8         ## 8-byte Reload
	movq	%r8, -40(%rbp)
	leaq	-240(%rbp), %r9
	movq	%r9, -48(%rbp)
	leaq	16(%rbp), %r9
	movq	%r9, -56(%rbp)
	movl	$48, -60(%rbp)
	movl	$16, -64(%rbp)
	movq	___stderrp@GOTPCREL(%rip), %r9
	movq	(%r9), %rdi
	movq	-32(%rbp), %r10
	movl	24(%r10), %r11d
	movl	28(%r10), %ebx
	leaq	L_.str.2(%rip), %rsi
	xorl	%r14d, %r14d
	movb	%r14b, %r15b
	movl	%r11d, %edx
	movl	%ebx, %ecx
	movb	%r15b, %al
	movq	%r9, -424(%rbp)         ## 8-byte Spill
	movb	%r15b, -425(%rbp)       ## 1-byte Spill
	callq	_fprintf
	movq	-424(%rbp), %rsi        ## 8-byte Reload
	movq	(%rsi), %rdi
	movq	-40(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	movl	%eax, -432(%rbp)        ## 4-byte Spill
	callq	_vfprintf
	movq	-424(%rbp), %rdx        ## 8-byte Reload
	movq	(%rdx), %rdi
	leaq	L_.str.1(%rip), %rsi
	movb	-425(%rbp), %r15b       ## 1-byte Reload
	movl	%eax, -436(%rbp)        ## 4-byte Spill
	movb	%r15b, %al
	callq	_fprintf
	movl	$1, %edi
	movl	%eax, -440(%rbp)        ## 4-byte Spill
	callq	_exit
	.cfi_endproc
                                        ## -- End function
	.globl	_out                    ## -- Begin function out
	.p2align	4, 0x90
_out:                                   ## @out
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$432, %rsp              ## imm = 0x1B0
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
	movq	%rdi, -400(%rbp)        ## 8-byte Spill
	je	LBB4_4
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
LBB4_4:
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
	movq	_f@GOTPCREL(%rip), %r8
	leaq	-32(%rbp), %r9
	movq	___stack_chk_guard@GOTPCREL(%rip), %r10
	movq	(%r10), %r10
	movq	%r10, -8(%rbp)
	movq	-400(%rbp), %r10        ## 8-byte Reload
	movq	%r10, -40(%rbp)
	leaq	-224(%rbp), %r11
	movq	%r11, 16(%r9)
	leaq	16(%rbp), %r11
	movq	%r11, 8(%r9)
	movl	$48, 4(%r9)
	movl	$8, (%r9)
	movq	(%r8), %rdi
	leaq	L_.str.3(%rip), %rsi
	movb	$0, %al
	callq	_fprintf
	leaq	-32(%rbp), %rdx
	movq	_f@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rdi
	movq	-40(%rbp), %rsi
	movl	%eax, -404(%rbp)        ## 4-byte Spill
	callq	_vfprintf
	movq	_f@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rdi
	leaq	L_.str.4(%rip), %rsi
	movl	%eax, -408(%rbp)        ## 4-byte Spill
	movb	$0, %al
	callq	_fprintf
	leaq	-32(%rbp), %rcx
	movq	___stack_chk_guard@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdx
	movq	-8(%rbp), %rsi
	cmpq	%rsi, %rdx
	movl	%eax, -412(%rbp)        ## 4-byte Spill
	movq	%rcx, -424(%rbp)        ## 8-byte Spill
	jne	LBB4_2
## %bb.1:
	addq	$432, %rsp              ## imm = 0x1B0
	popq	%rbp
	retq
LBB4_2:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_dbg                    ## -- Begin function dbg
	.p2align	4, 0x90
_dbg:                                   ## @dbg
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$424, %rsp              ## imm = 0x1A8
	.cfi_offset %rbx, -24
	testb	%al, %al
	movaps	%xmm7, -256(%rbp)       ## 16-byte Spill
	movaps	%xmm6, -272(%rbp)       ## 16-byte Spill
	movaps	%xmm5, -288(%rbp)       ## 16-byte Spill
	movaps	%xmm4, -304(%rbp)       ## 16-byte Spill
	movaps	%xmm3, -320(%rbp)       ## 16-byte Spill
	movaps	%xmm2, -336(%rbp)       ## 16-byte Spill
	movaps	%xmm1, -352(%rbp)       ## 16-byte Spill
	movaps	%xmm0, -368(%rbp)       ## 16-byte Spill
	movq	%r9, -376(%rbp)         ## 8-byte Spill
	movq	%r8, -384(%rbp)         ## 8-byte Spill
	movq	%rcx, -392(%rbp)        ## 8-byte Spill
	movq	%rdx, -400(%rbp)        ## 8-byte Spill
	movq	%rsi, -408(%rbp)        ## 8-byte Spill
	movq	%rdi, -416(%rbp)        ## 8-byte Spill
	je	LBB5_4
## %bb.3:
	movaps	-368(%rbp), %xmm0       ## 16-byte Reload
	movaps	%xmm0, -192(%rbp)
	movaps	-352(%rbp), %xmm1       ## 16-byte Reload
	movaps	%xmm1, -176(%rbp)
	movaps	-336(%rbp), %xmm2       ## 16-byte Reload
	movaps	%xmm2, -160(%rbp)
	movaps	-320(%rbp), %xmm3       ## 16-byte Reload
	movaps	%xmm3, -144(%rbp)
	movaps	-304(%rbp), %xmm4       ## 16-byte Reload
	movaps	%xmm4, -128(%rbp)
	movaps	-288(%rbp), %xmm5       ## 16-byte Reload
	movaps	%xmm5, -112(%rbp)
	movaps	-272(%rbp), %xmm6       ## 16-byte Reload
	movaps	%xmm6, -96(%rbp)
	movaps	-256(%rbp), %xmm7       ## 16-byte Reload
	movaps	%xmm7, -80(%rbp)
LBB5_4:
	movq	-376(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -200(%rbp)
	movq	-384(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -208(%rbp)
	movq	-392(%rbp), %rdx        ## 8-byte Reload
	movq	%rdx, -216(%rbp)
	movq	-400(%rbp), %rsi        ## 8-byte Reload
	movq	%rsi, -224(%rbp)
	movq	-408(%rbp), %rdi        ## 8-byte Reload
	movq	%rdi, -232(%rbp)
	leaq	-48(%rbp), %r8
	movq	_f@GOTPCREL(%rip), %r9
	movq	___stack_chk_guard@GOTPCREL(%rip), %r10
	movq	(%r10), %r10
	movq	%r10, -16(%rbp)
	movq	-416(%rbp), %r10        ## 8-byte Reload
	movq	%r10, -56(%rbp)
	movq	%r8, %r11
	leaq	-240(%rbp), %rbx
	movq	%rbx, 16(%r11)
	leaq	16(%rbp), %rbx
	movq	%rbx, 8(%r11)
	movl	$48, 4(%r11)
	movl	$8, (%r11)
	movq	(%r9), %rdi
	movq	-56(%rbp), %rsi
	movq	%r8, %rdx
	callq	_vfprintf
	leaq	-48(%rbp), %rcx
	movq	___stack_chk_guard@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdx
	movq	-16(%rbp), %rsi
	cmpq	%rsi, %rdx
	movl	%eax, -420(%rbp)        ## 4-byte Spill
	movq	%rcx, -432(%rbp)        ## 8-byte Spill
	jne	LBB5_2
## %bb.1:
	addq	$424, %rsp              ## imm = 0x1A8
	popq	%rbx
	popq	%rbp
	retq
LBB5_2:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_binary                 ## -- Begin function binary
	.p2align	4, 0x90
_binary:                                ## @binary
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$880, %rsp              ## imm = 0x370
	testb	%al, %al
	movaps	%xmm7, -672(%rbp)       ## 16-byte Spill
	movaps	%xmm6, -688(%rbp)       ## 16-byte Spill
	movaps	%xmm5, -704(%rbp)       ## 16-byte Spill
	movaps	%xmm4, -720(%rbp)       ## 16-byte Spill
	movaps	%xmm3, -736(%rbp)       ## 16-byte Spill
	movaps	%xmm2, -752(%rbp)       ## 16-byte Spill
	movaps	%xmm1, -768(%rbp)       ## 16-byte Spill
	movaps	%xmm0, -784(%rbp)       ## 16-byte Spill
	movq	%r9, -792(%rbp)         ## 8-byte Spill
	movq	%r8, -800(%rbp)         ## 8-byte Spill
	movq	%rcx, -808(%rbp)        ## 8-byte Spill
	movq	%rdx, -816(%rbp)        ## 8-byte Spill
	movq	%rsi, -824(%rbp)        ## 8-byte Spill
	movq	%rdi, -832(%rbp)        ## 8-byte Spill
	je	LBB6_23
## %bb.22:
	movaps	-784(%rbp), %xmm0       ## 16-byte Reload
	movaps	%xmm0, -608(%rbp)
	movaps	-768(%rbp), %xmm1       ## 16-byte Reload
	movaps	%xmm1, -592(%rbp)
	movaps	-752(%rbp), %xmm2       ## 16-byte Reload
	movaps	%xmm2, -576(%rbp)
	movaps	-736(%rbp), %xmm3       ## 16-byte Reload
	movaps	%xmm3, -560(%rbp)
	movaps	-720(%rbp), %xmm4       ## 16-byte Reload
	movaps	%xmm4, -544(%rbp)
	movaps	-704(%rbp), %xmm5       ## 16-byte Reload
	movaps	%xmm5, -528(%rbp)
	movaps	-688(%rbp), %xmm6       ## 16-byte Reload
	movaps	%xmm6, -512(%rbp)
	movaps	-672(%rbp), %xmm7       ## 16-byte Reload
	movaps	%xmm7, -496(%rbp)
LBB6_23:
	movq	-792(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -616(%rbp)
	movq	-800(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -624(%rbp)
	movq	-808(%rbp), %rdx        ## 8-byte Reload
	movq	%rdx, -632(%rbp)
	movq	-816(%rbp), %rsi        ## 8-byte Reload
	movq	%rsi, -640(%rbp)
	movq	-824(%rbp), %rdi        ## 8-byte Reload
	movq	%rdi, -648(%rbp)
	leaq	-32(%rbp), %r8
	movq	___stack_chk_guard@GOTPCREL(%rip), %r9
	movq	(%r9), %r9
	movq	%r9, -8(%rbp)
	movq	-832(%rbp), %r9         ## 8-byte Reload
	movq	%r9, -440(%rbp)
	leaq	-656(%rbp), %r10
	movq	%r10, 16(%r8)
	leaq	16(%rbp), %r10
	movq	%r10, 8(%r8)
	movl	$48, 4(%r8)
	movl	$8, (%r8)
	movl	$0, -444(%rbp)
LBB6_1:                                 ## =>This Inner Loop Header: Depth=1
	leaq	-32(%rbp), %rax
	movl	-32(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -840(%rbp)        ## 8-byte Spill
	movl	%ecx, -844(%rbp)        ## 4-byte Spill
	ja	LBB6_3
## %bb.2:                               ##   in Loop: Header=BB6_1 Depth=1
	movl	-844(%rbp), %eax        ## 4-byte Reload
	movslq	%eax, %rcx
	movq	-840(%rbp), %rdx        ## 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -856(%rbp)        ## 8-byte Spill
	jmp	LBB6_4
LBB6_3:                                 ##   in Loop: Header=BB6_1 Depth=1
	movq	-840(%rbp), %rax        ## 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -856(%rbp)        ## 8-byte Spill
LBB6_4:                                 ##   in Loop: Header=BB6_1 Depth=1
	movq	-856(%rbp), %rax        ## 8-byte Reload
	movl	(%rax), %ecx
	movl	%ecx, -448(%rbp)
	cmpl	$0, -448(%rbp)
	jge	LBB6_6
## %bb.5:
	jmp	LBB6_7
LBB6_6:                                 ##   in Loop: Header=BB6_1 Depth=1
	movl	-448(%rbp), %eax
	movl	-444(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -444(%rbp)
	movslq	%ecx, %rsi
	movl	%eax, -432(%rbp,%rsi,4)
	jmp	LBB6_1
LBB6_7:
	leaq	-32(%rbp), %rax
	movq	%rax, -864(%rbp)        ## 8-byte Spill
	movb	$0, %al
	callq	*-440(%rbp)
	movq	%rax, -456(%rbp)
LBB6_8:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB6_9 Depth 2
	movl	$0, -460(%rbp)
	movl	$0, -464(%rbp)
LBB6_9:                                 ##   Parent Loop BB6_8 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-464(%rbp), %eax
	cmpl	-444(%rbp), %eax
	movb	%cl, -865(%rbp)         ## 1-byte Spill
	jge	LBB6_11
## %bb.10:                              ##   in Loop: Header=BB6_9 Depth=2
	cmpl	$0, -460(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -865(%rbp)         ## 1-byte Spill
LBB6_11:                                ##   in Loop: Header=BB6_9 Depth=2
	movb	-865(%rbp), %al         ## 1-byte Reload
	testb	$1, %al
	jne	LBB6_12
	jmp	LBB6_16
LBB6_12:                                ##   in Loop: Header=BB6_9 Depth=2
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movl	(%rax), %edx
	movslq	-464(%rbp), %rax
	cmpl	-432(%rbp,%rax,4), %edx
	jne	LBB6_14
## %bb.13:                              ##   in Loop: Header=BB6_9 Depth=2
	movl	$1, -460(%rbp)
LBB6_14:                                ##   in Loop: Header=BB6_9 Depth=2
	jmp	LBB6_15
LBB6_15:                                ##   in Loop: Header=BB6_9 Depth=2
	movl	-464(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -464(%rbp)
	jmp	LBB6_9
LBB6_16:                                ##   in Loop: Header=BB6_8 Depth=1
	cmpl	$0, -460(%rbp)
	jne	LBB6_18
## %bb.17:
	jmp	LBB6_19
LBB6_18:                                ##   in Loop: Header=BB6_8 Depth=1
	movl	$4, %edi
	callq	_new_node
	movq	_ct@GOTPCREL(%rip), %rcx
	movq	%rax, -472(%rbp)
	movq	-456(%rbp), %rax
	movq	-472(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movl	(%rcx), %edi
	addl	$1, %edi
	movl	%edi, (%rcx)
	movb	$0, %al
	callq	*-440(%rbp)
	movq	-472(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-472(%rbp), %rax
	movq	%rax, -456(%rbp)
	jmp	LBB6_8
LBB6_19:
	movq	-456(%rbp), %rax
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movq	%rax, -880(%rbp)        ## 8-byte Spill
	jne	LBB6_21
## %bb.20:
	movq	-880(%rbp), %rax        ## 8-byte Reload
	addq	$880, %rsp              ## imm = 0x370
	popq	%rbp
	retq
LBB6_21:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_read_entire_file       ## -- Begin function read_entire_file
	.p2align	4, 0x90
_read_entire_file:                      ## @read_entire_file
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-8(%rbp), %rdi
	leaq	L_.str.5(%rip), %rsi
	callq	_fopen
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	LBB7_4
## %bb.1:
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	movl	$2, %edx
	callq	_fseek
	movq	-32(%rbp), %rdi
	movl	%eax, -36(%rbp)         ## 4-byte Spill
	callq	_ftell
	xorl	%edx, %edx
	movl	%edx, %esi
	xorl	%edx, %edx
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rdi
	callq	_fseek
	movq	-24(%rbp), %rsi
	addq	$1, %rsi
	movq	%rsi, %rdi
	movl	%eax, -40(%rbp)         ## 4-byte Spill
	callq	_malloc
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	LBB7_3
## %bb.2:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	$1, %esi
	callq	_fread
	movq	%rax, -48(%rbp)         ## 8-byte Spill
LBB7_3:
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movb	$0, (%rax,%rcx)
	movq	-32(%rbp), %rdi
	callq	_fclose
	movl	%eax, -52(%rbp)         ## 4-byte Spill
LBB7_4:
	movq	-16(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"\033[1;31merror:\033[1m "

L_.str.1:                               ## @.str.1
	.asciz	"\033[0m\n"

L_.str.2:                               ## @.str.2
	.asciz	"\033[1m%d:%d: \033[1;31merror: \033[0m\033[1m"

L_.str.3:                               ## @.str.3
	.asciz	"\t"

L_.str.4:                               ## @.str.4
	.asciz	"\n"

L_.str.5:                               ## @.str.5
	.asciz	"r"


.subsections_via_symbols
