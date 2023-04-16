	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.globl	_token_type_name        ## -- Begin function token_type_name
	.p2align	4, 0x90
_token_type_name:                       ## @token_type_name
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -12(%rbp)
	cmpl	$256, -12(%rbp)         ## imm = 0x100
	jne	LBB0_2
## %bb.1:
	leaq	L_.str(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB0_27
LBB0_2:
	cmpl	$257, -12(%rbp)         ## imm = 0x101
	jne	LBB0_4
## %bb.3:
	leaq	L_.str.1(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB0_27
LBB0_4:
	cmpl	$274, -12(%rbp)         ## imm = 0x112
	jne	LBB0_6
## %bb.5:
	leaq	L_.str.2(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB0_27
LBB0_6:
	cmpl	$255, -12(%rbp)
	jge	LBB0_10
## %bb.7:
	movq	_token_type_name_c@GOTPCREL(%rip), %rax
	movslq	-12(%rbp), %rcx
	cmpq	$0, (%rax,%rcx,8)
	jne	LBB0_9
## %bb.8:
	movl	$2, %edi
	callq	_malloc
	movq	_token_type_name_c@GOTPCREL(%rip), %rdi
	movslq	-12(%rbp), %rcx
	movq	%rax, (%rdi,%rcx,8)
	movl	-12(%rbp), %edx
	movb	%dl, %sil
	movslq	-12(%rbp), %rax
	movq	(%rdi,%rax,8), %rax
	movb	%sil, (%rax)
	movslq	-12(%rbp), %rax
	movq	(%rdi,%rax,8), %rax
	movb	$0, 1(%rax)
LBB0_9:
	movq	_token_type_name_c@GOTPCREL(%rip), %rax
	movslq	-12(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB0_27
LBB0_10:
	movl	$0, -16(%rbp)
LBB0_11:                                ## =>This Inner Loop Header: Depth=1
	movq	_multi_char_tokens_type@GOTPCREL(%rip), %rax
	movslq	-16(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	cmpq	$0, (%rax)
	je	LBB0_16
## %bb.12:                              ##   in Loop: Header=BB0_11 Depth=1
	movq	_multi_char_tokens_type@GOTPCREL(%rip), %rax
	movslq	-16(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %edx
	cmpl	-12(%rbp), %edx
	jne	LBB0_14
## %bb.13:
	movq	_multi_char_tokens_type@GOTPCREL(%rip), %rax
	movslq	-16(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB0_27
LBB0_14:                                ##   in Loop: Header=BB0_11 Depth=1
	jmp	LBB0_15
LBB0_15:                                ##   in Loop: Header=BB0_11 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	LBB0_11
LBB0_16:
	movl	$0, -20(%rbp)
LBB0_17:                                ## =>This Inner Loop Header: Depth=1
	movq	_keywords@GOTPCREL(%rip), %rax
	movslq	-20(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	cmpq	$0, (%rax)
	je	LBB0_22
## %bb.18:                              ##   in Loop: Header=BB0_17 Depth=1
	movq	_keywords@GOTPCREL(%rip), %rax
	movslq	-20(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %edx
	cmpl	-12(%rbp), %edx
	jne	LBB0_20
## %bb.19:
	movq	_keywords@GOTPCREL(%rip), %rax
	movslq	-20(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB0_27
LBB0_20:                                ##   in Loop: Header=BB0_17 Depth=1
	jmp	LBB0_21
LBB0_21:                                ##   in Loop: Header=BB0_17 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	LBB0_17
LBB0_22:
	jmp	LBB0_23
LBB0_23:
	jmp	LBB0_24
LBB0_24:
	jmp	LBB0_25
LBB0_25:
	jmp	LBB0_26
LBB0_26:
	leaq	L___func__.token_type_name(%rip), %rdi
	leaq	L_.str.3(%rip), %rsi
	leaq	L_.str.4(%rip), %rcx
	movl	$36, %edx
	callq	___assert_rtn
LBB0_27:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_new_temp_token         ## -- Begin function new_temp_token
	.p2align	4, 0x90
_new_temp_token:                        ## @new_temp_token
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	$40, %edi
	movl	$1, %esi
	callq	_calloc
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rax
	movl	$-1, 24(%rax)
	movq	-16(%rbp), %rax
	movl	$-1, 28(%rax)
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_get_backspace_char     ## -- Begin function get_backspace_char
	.p2align	4, 0x90
_get_backspace_char:                    ## @get_backspace_char
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movb	%dil, %al
	movb	%al, -2(%rbp)
	movsbl	-2(%rbp), %edi
	cmpl	$110, %edi
	jne	LBB2_2
## %bb.1:
	movb	$10, -1(%rbp)
	jmp	LBB2_15
LBB2_2:
	movsbl	-2(%rbp), %eax
	cmpl	$116, %eax
	jne	LBB2_4
## %bb.3:
	movb	$9, -1(%rbp)
	jmp	LBB2_15
LBB2_4:
	movsbl	-2(%rbp), %eax
	cmpl	$114, %eax
	jne	LBB2_6
## %bb.5:
	movb	$13, -1(%rbp)
	jmp	LBB2_15
LBB2_6:
	movsbl	-2(%rbp), %eax
	cmpl	$118, %eax
	jne	LBB2_8
## %bb.7:
	movb	$11, -1(%rbp)
	jmp	LBB2_15
LBB2_8:
	movsbl	-2(%rbp), %eax
	cmpl	$102, %eax
	jne	LBB2_10
## %bb.9:
	movb	$12, -1(%rbp)
	jmp	LBB2_15
LBB2_10:
	movsbl	-2(%rbp), %eax
	cmpl	$97, %eax
	jne	LBB2_12
## %bb.11:
	movb	$7, -1(%rbp)
	jmp	LBB2_15
LBB2_12:
	movsbl	-2(%rbp), %eax
	cmpl	$98, %eax
	jne	LBB2_14
## %bb.13:
	movb	$8, -1(%rbp)
	jmp	LBB2_15
LBB2_14:
	movb	-2(%rbp), %al
	movb	%al, -1(%rbp)
LBB2_15:
	movsbl	-1(%rbp), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_add_multi_char_token   ## -- Begin function add_multi_char_token
	.p2align	4, 0x90
_add_multi_char_token:                  ## @add_multi_char_token
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	_multi_char_tokens_type@GOTPCREL(%rip), %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movslq	_multi_char_token_count(%rip), %rcx
	shlq	$4, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movq	%rdi, (%rdx)
	movl	-12(%rbp), %esi
	movslq	_multi_char_token_count(%rip), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	%esi, 8(%rax)
	movl	_multi_char_token_count(%rip), %esi
	addl	$1, %esi
	movl	%esi, _multi_char_token_count(%rip)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_add_keyword            ## -- Begin function add_keyword
	.p2align	4, 0x90
_add_keyword:                           ## @add_keyword
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	_keywords@GOTPCREL(%rip), %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movslq	_keyword_count(%rip), %rcx
	shlq	$4, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movq	%rdi, (%rdx)
	movl	-12(%rbp), %esi
	movslq	_keyword_count(%rip), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	%esi, 8(%rax)
	movl	_keyword_count(%rip), %esi
	addl	$1, %esi
	movl	%esi, _keyword_count(%rip)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_tokenize               ## -- Begin function tokenize
	.p2align	4, 0x90
_tokenize:                              ## @tokenize
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	leaq	L_.str.5(%rip), %rdi
	movl	$260, %esi              ## imm = 0x104
	callq	_add_multi_char_token
	leaq	L_.str.6(%rip), %rdi
	movl	$261, %esi              ## imm = 0x105
	callq	_add_multi_char_token
	leaq	L_.str.7(%rip), %rdi
	movl	$262, %esi              ## imm = 0x106
	callq	_add_multi_char_token
	leaq	L_.str.8(%rip), %rdi
	movl	$263, %esi              ## imm = 0x107
	callq	_add_multi_char_token
	leaq	L_.str.9(%rip), %rdi
	movl	$258, %esi              ## imm = 0x102
	callq	_add_multi_char_token
	leaq	L_.str.10(%rip), %rdi
	movl	$259, %esi              ## imm = 0x103
	callq	_add_multi_char_token
	leaq	L_.str.11(%rip), %rdi
	movl	$275, %esi              ## imm = 0x113
	callq	_add_multi_char_token
	leaq	L_.str.12(%rip), %rdi
	movl	$276, %esi              ## imm = 0x114
	callq	_add_multi_char_token
	leaq	L_.str.13(%rip), %rdi
	movl	$282, %esi              ## imm = 0x11A
	callq	_add_multi_char_token
	leaq	L_.str.14(%rip), %rdi
	movl	$283, %esi              ## imm = 0x11B
	callq	_add_multi_char_token
	leaq	L_.str.15(%rip), %rdi
	movl	$284, %esi              ## imm = 0x11C
	callq	_add_multi_char_token
	leaq	L_.str.16(%rip), %rdi
	movl	$285, %esi              ## imm = 0x11D
	callq	_add_multi_char_token
	leaq	L_.str.17(%rip), %rdi
	movl	$288, %esi              ## imm = 0x120
	callq	_add_multi_char_token
	xorl	%esi, %esi
	movl	%esi, %edi
	xorl	%esi, %esi
	callq	_add_multi_char_token
	leaq	L_.str.18(%rip), %rdi
	movl	$264, %esi              ## imm = 0x108
	callq	_add_keyword
	leaq	L_.str.19(%rip), %rdi
	movl	$268, %esi              ## imm = 0x10C
	callq	_add_keyword
	leaq	L_.str.20(%rip), %rdi
	movl	$267, %esi              ## imm = 0x10B
	callq	_add_keyword
	leaq	L_.str.21(%rip), %rdi
	movl	$265, %esi              ## imm = 0x109
	callq	_add_keyword
	leaq	L_.str.22(%rip), %rdi
	movl	$266, %esi              ## imm = 0x10A
	callq	_add_keyword
	leaq	L_.str(%rip), %rdi
	movl	$269, %esi              ## imm = 0x10D
	callq	_add_keyword
	leaq	L_.str.23(%rip), %rdi
	movl	$270, %esi              ## imm = 0x10E
	callq	_add_keyword
	leaq	L_.str.24(%rip), %rdi
	movl	$271, %esi              ## imm = 0x10F
	callq	_add_keyword
	leaq	L_.str.25(%rip), %rdi
	movl	$272, %esi              ## imm = 0x110
	callq	_add_keyword
	leaq	L_.str.26(%rip), %rdi
	movl	$273, %esi              ## imm = 0x111
	callq	_add_keyword
	leaq	L_.str.27(%rip), %rdi
	movl	$279, %esi              ## imm = 0x117
	callq	_add_keyword
	leaq	L_.str.28(%rip), %rdi
	movl	$280, %esi              ## imm = 0x118
	callq	_add_keyword
	leaq	L_.str.29(%rip), %rdi
	movl	$277, %esi              ## imm = 0x115
	callq	_add_keyword
	leaq	L_.str.30(%rip), %rdi
	movl	$278, %esi              ## imm = 0x116
	callq	_add_keyword
	leaq	L_.str.31(%rip), %rdi
	movl	$281, %esi              ## imm = 0x119
	callq	_add_keyword
	leaq	L_.str.26(%rip), %rdi
	movl	$273, %esi              ## imm = 0x111
	callq	_add_keyword
	leaq	L_.str.32(%rip), %rdi
	movl	$286, %esi              ## imm = 0x11E
	callq	_add_keyword
	leaq	L_.str.33(%rip), %rdi
	movl	$287, %esi              ## imm = 0x11F
	callq	_add_keyword
	leaq	L_.str.34(%rip), %rdi
	movl	$289, %esi              ## imm = 0x121
	callq	_add_keyword
	movl	$0, -12(%rbp)
	movl	$0, -16(%rbp)
	movl	$1, -20(%rbp)
	movl	$1, -24(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %esi
	movslq	%esi, %rdi
	cmpq	$0, %rdi
	je	LBB5_2
## %bb.1:
	leaq	L___func__.tokenize(%rip), %rdi
	leaq	L_.str.3(%rip), %rsi
	leaq	L_.str.35(%rip), %rcx
	movl	$116, %edx
	callq	___assert_rtn
LBB5_2:
	jmp	LBB5_3
LBB5_3:
	jmp	LBB5_4
LBB5_4:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB5_6 Depth 2
                                        ##     Child Loop BB5_15 Depth 2
                                        ##     Child Loop BB5_21 Depth 2
                                        ##     Child Loop BB5_30 Depth 2
                                        ##     Child Loop BB5_42 Depth 2
                                        ##     Child Loop BB5_54 Depth 2
                                        ##     Child Loop BB5_78 Depth 2
                                        ##     Child Loop BB5_66 Depth 2
                                        ##     Child Loop BB5_71 Depth 2
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	cmpb	$0, (%rax,%rcx)
	je	LBB5_93
## %bb.5:                               ##   in Loop: Header=BB5_4 Depth=1
	movq	_tokens@GOTPCREL(%rip), %rax
	movslq	-16(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	$0, (%rax)
LBB5_6:                                 ##   Parent Loop BB5_4 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movsbl	(%rax,%rcx), %edi
	callq	_isspace
	cmpl	$0, %eax
	je	LBB5_11
## %bb.7:                               ##   in Loop: Header=BB5_6 Depth=2
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$10, %edx
	jne	LBB5_9
## %bb.8:                               ##   in Loop: Header=BB5_6 Depth=2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	$1, -24(%rbp)
	jmp	LBB5_10
LBB5_9:                                 ##   in Loop: Header=BB5_6 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
LBB5_10:                                ##   in Loop: Header=BB5_6 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	LBB5_6
LBB5_11:                                ##   in Loop: Header=BB5_4 Depth=1
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	cmpb	$0, (%rax,%rcx)
	jne	LBB5_13
## %bb.12:
	jmp	LBB5_93
LBB5_13:                                ##   in Loop: Header=BB5_4 Depth=1
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$35, %edx
	jne	LBB5_18
## %bb.14:                              ##   in Loop: Header=BB5_4 Depth=1
	jmp	LBB5_15
LBB5_15:                                ##   Parent Loop BB5_4 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$10, %edx
	je	LBB5_17
## %bb.16:                              ##   in Loop: Header=BB5_15 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	LBB5_15
LBB5_17:                                ##   in Loop: Header=BB5_4 Depth=1
	jmp	LBB5_4
LBB5_18:                                ##   in Loop: Header=BB5_4 Depth=1
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$47, %edx
	jne	LBB5_26
## %bb.19:                              ##   in Loop: Header=BB5_4 Depth=1
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movsbl	(%rax,%rdx), %ecx
	cmpl	$47, %ecx
	jne	LBB5_26
## %bb.20:                              ##   in Loop: Header=BB5_4 Depth=1
	jmp	LBB5_21
LBB5_21:                                ##   Parent Loop BB5_4 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movslq	-12(%rbp), %rsi
	movsbl	(%rdx,%rsi), %eax
	cmpl	$0, %eax
	movb	%cl, -73(%rbp)          ## 1-byte Spill
	je	LBB5_23
## %bb.22:                              ##   in Loop: Header=BB5_21 Depth=2
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$10, %edx
	setne	%sil
	movb	%sil, -73(%rbp)         ## 1-byte Spill
LBB5_23:                                ##   in Loop: Header=BB5_21 Depth=2
	movb	-73(%rbp), %al          ## 1-byte Reload
	testb	$1, %al
	jne	LBB5_24
	jmp	LBB5_25
LBB5_24:                                ##   in Loop: Header=BB5_21 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	LBB5_21
LBB5_25:                                ##   in Loop: Header=BB5_4 Depth=1
	jmp	LBB5_4
LBB5_26:                                ##   in Loop: Header=BB5_4 Depth=1
	jmp	LBB5_27
LBB5_27:                                ##   in Loop: Header=BB5_4 Depth=1
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$47, %edx
	jne	LBB5_40
## %bb.28:                              ##   in Loop: Header=BB5_4 Depth=1
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movsbl	(%rax,%rdx), %ecx
	cmpl	$42, %ecx
	jne	LBB5_40
## %bb.29:                              ##   in Loop: Header=BB5_4 Depth=1
	movl	-12(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -12(%rbp)
LBB5_30:                                ##   Parent Loop BB5_4 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movslq	-12(%rbp), %rsi
	movsbl	(%rdx,%rsi), %eax
	cmpl	$0, %eax
	movb	%cl, -74(%rbp)          ## 1-byte Spill
	je	LBB5_34
## %bb.31:                              ##   in Loop: Header=BB5_30 Depth=2
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$42, %edx
	movb	$1, %sil
	movb	%sil, -75(%rbp)         ## 1-byte Spill
	jne	LBB5_33
## %bb.32:                              ##   in Loop: Header=BB5_30 Depth=2
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movsbl	(%rax,%rdx), %ecx
	cmpl	$47, %ecx
	setne	%sil
	movb	%sil, -75(%rbp)         ## 1-byte Spill
LBB5_33:                                ##   in Loop: Header=BB5_30 Depth=2
	movb	-75(%rbp), %al          ## 1-byte Reload
	movb	%al, -74(%rbp)          ## 1-byte Spill
LBB5_34:                                ##   in Loop: Header=BB5_30 Depth=2
	movb	-74(%rbp), %al          ## 1-byte Reload
	testb	$1, %al
	jne	LBB5_35
	jmp	LBB5_36
LBB5_35:                                ##   in Loop: Header=BB5_30 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	LBB5_30
LBB5_36:                                ##   in Loop: Header=BB5_4 Depth=1
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	cmpb	$0, (%rax,%rcx)
	je	LBB5_38
## %bb.37:                              ##   in Loop: Header=BB5_4 Depth=1
	movl	-12(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -12(%rbp)
	jmp	LBB5_39
LBB5_38:                                ##   in Loop: Header=BB5_4 Depth=1
	leaq	L_.str.36(%rip), %rdi
	movb	$0, %al
	callq	_error
LBB5_39:                                ##   in Loop: Header=BB5_4 Depth=1
	jmp	LBB5_4
LBB5_40:                                ##   in Loop: Header=BB5_4 Depth=1
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	addq	%rcx, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, 24(%rax)
	movl	-24(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, 28(%rax)
	movl	-12(%rbp), %edx
	movl	%edx, -36(%rbp)
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movsbl	(%rax,%rcx), %edi
	callq	_isdigit
	cmpl	$0, %eax
	je	LBB5_45
## %bb.41:                              ##   in Loop: Header=BB5_4 Depth=1
	movq	-32(%rbp), %rax
	movl	$256, (%rax)            ## imm = 0x100
	movq	-32(%rbp), %rax
	movq	$0, 8(%rax)
LBB5_42:                                ##   Parent Loop BB5_4 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movsbl	(%rax,%rcx), %edi
	callq	_isdigit
	cmpl	$0, %eax
	je	LBB5_44
## %bb.43:                              ##   in Loop: Header=BB5_42 Depth=2
	movq	-32(%rbp), %rax
	imulq	$10, 8(%rax), %rax
	movq	-8(%rbp), %rcx
	movslq	-12(%rbp), %rdx
	movsbl	(%rcx,%rdx), %esi
	subl	$48, %esi
	movslq	%esi, %rcx
	addq	%rcx, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movl	-12(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -12(%rbp)
	jmp	LBB5_42
LBB5_44:                                ##   in Loop: Header=BB5_4 Depth=1
	jmp	LBB5_92
LBB5_45:                                ##   in Loop: Header=BB5_4 Depth=1
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$39, %edx
	jne	LBB5_52
## %bb.46:                              ##   in Loop: Header=BB5_4 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movq	-32(%rbp), %rcx
	movl	$256, (%rcx)            ## imm = 0x100
	movq	-8(%rbp), %rcx
	movslq	-12(%rbp), %rdx
	movsbl	(%rcx,%rdx), %eax
	cmpl	$92, %eax
	jne	LBB5_48
## %bb.47:                              ##   in Loop: Header=BB5_4 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rcx
	movslq	-12(%rbp), %rdx
	movsbl	(%rcx,%rdx), %edi
	callq	_get_backspace_char
	movsbq	%al, %rcx
	movq	-32(%rbp), %rdx
	movq	%rcx, 8(%rdx)
	jmp	LBB5_49
LBB5_48:                                ##   in Loop: Header=BB5_4 Depth=1
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movsbq	(%rax,%rcx), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 8(%rcx)
LBB5_49:                                ##   in Loop: Header=BB5_4 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rcx
	movslq	-12(%rbp), %rdx
	movsbl	(%rcx,%rdx), %eax
	cmpl	$39, %eax
	je	LBB5_51
## %bb.50:                              ##   in Loop: Header=BB5_4 Depth=1
	movq	-32(%rbp), %rdi
	leaq	L_.str.37(%rip), %rsi
	movb	$0, %al
	callq	_error_token
LBB5_51:                                ##   in Loop: Header=BB5_4 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	LBB5_91
LBB5_52:                                ##   in Loop: Header=BB5_4 Depth=1
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$34, %edx
	jne	LBB5_63
## %bb.53:                              ##   in Loop: Header=BB5_4 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movq	-32(%rbp), %rcx
	movl	$274, (%rcx)            ## imm = 0x112
	movl	-12(%rbp), %eax
	movl	%eax, -40(%rbp)
LBB5_54:                                ##   Parent Loop BB5_4 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movslq	-12(%rbp), %rsi
	movsbl	(%rdx,%rsi), %eax
	cmpl	$0, %eax
	movb	%cl, -76(%rbp)          ## 1-byte Spill
	je	LBB5_58
## %bb.55:                              ##   in Loop: Header=BB5_54 Depth=2
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$34, %edx
	movb	$1, %sil
	movb	%sil, -77(%rbp)         ## 1-byte Spill
	jne	LBB5_57
## %bb.56:                              ##   in Loop: Header=BB5_54 Depth=2
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movsbl	(%rax,%rdx), %ecx
	cmpl	$92, %ecx
	sete	%sil
	movb	%sil, -77(%rbp)         ## 1-byte Spill
LBB5_57:                                ##   in Loop: Header=BB5_54 Depth=2
	movb	-77(%rbp), %al          ## 1-byte Reload
	movb	%al, -76(%rbp)          ## 1-byte Spill
LBB5_58:                                ##   in Loop: Header=BB5_54 Depth=2
	movb	-76(%rbp), %al          ## 1-byte Reload
	testb	$1, %al
	jne	LBB5_59
	jmp	LBB5_60
LBB5_59:                                ##   in Loop: Header=BB5_54 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	LBB5_54
LBB5_60:                                ##   in Loop: Header=BB5_4 Depth=1
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$34, %edx
	je	LBB5_62
## %bb.61:                              ##   in Loop: Header=BB5_4 Depth=1
	movq	-32(%rbp), %rdi
	leaq	L_.str.38(%rip), %rsi
	movb	$0, %al
	callq	_error_token
LBB5_62:                                ##   in Loop: Header=BB5_4 Depth=1
	movl	-12(%rbp), %eax
	subl	-40(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdi
	callq	_malloc
	movq	$-1, %rcx
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-8(%rbp), %rax
	movslq	-40(%rbp), %rdx
	addq	%rdx, %rax
	movl	-12(%rbp), %esi
	subl	-40(%rbp), %esi
	movslq	%esi, %rdx
	movq	%rax, %rsi
	callq	___memcpy_chk
	movq	-48(%rbp), %rcx
	movl	-12(%rbp), %r8d
	subl	-40(%rbp), %r8d
	movslq	%r8d, %rdx
	movb	$0, (%rcx,%rdx)
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	%rcx, 16(%rdx)
	movl	-12(%rbp), %r8d
	addl	$1, %r8d
	movl	%r8d, -12(%rbp)
	movq	%rax, -88(%rbp)         ## 8-byte Spill
	jmp	LBB5_90
LBB5_63:                                ##   in Loop: Header=BB5_4 Depth=1
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movsbl	(%rax,%rcx), %edi
	callq	_isalpha
	cmpl	$0, %eax
	jne	LBB5_65
## %bb.64:                              ##   in Loop: Header=BB5_4 Depth=1
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$95, %edx
	jne	LBB5_77
LBB5_65:                                ##   in Loop: Header=BB5_4 Depth=1
	movl	-12(%rbp), %eax
	movl	%eax, -52(%rbp)
LBB5_66:                                ##   Parent Loop BB5_4 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movsbl	(%rax,%rcx), %edi
	callq	_isalnum
	cmpl	$0, %eax
	movb	$1, %dl
	movb	%dl, -89(%rbp)          ## 1-byte Spill
	jne	LBB5_68
## %bb.67:                              ##   in Loop: Header=BB5_66 Depth=2
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$95, %edx
	sete	%sil
	movb	%sil, -89(%rbp)         ## 1-byte Spill
LBB5_68:                                ##   in Loop: Header=BB5_66 Depth=2
	movb	-89(%rbp), %al          ## 1-byte Reload
	testb	$1, %al
	jne	LBB5_69
	jmp	LBB5_70
LBB5_69:                                ##   in Loop: Header=BB5_66 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	LBB5_66
LBB5_70:                                ##   in Loop: Header=BB5_4 Depth=1
	movl	-12(%rbp), %eax
	subl	-52(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdi
	callq	_malloc
	movq	$-1, %rcx
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movq	-8(%rbp), %rax
	movslq	-52(%rbp), %rdx
	addq	%rdx, %rax
	movl	-12(%rbp), %esi
	subl	-52(%rbp), %esi
	movslq	%esi, %rdx
	movq	%rax, %rsi
	callq	___memcpy_chk
	movq	-64(%rbp), %rcx
	movl	-12(%rbp), %r8d
	subl	-52(%rbp), %r8d
	movslq	%r8d, %rdx
	movb	$0, (%rcx,%rdx)
	movq	-32(%rbp), %rcx
	movl	$257, (%rcx)            ## imm = 0x101
	movl	$0, -68(%rbp)
	movq	%rax, -104(%rbp)        ## 8-byte Spill
LBB5_71:                                ##   Parent Loop BB5_4 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	_keywords@GOTPCREL(%rip), %rax
	movslq	-68(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	cmpq	$0, (%rax)
	je	LBB5_76
## %bb.72:                              ##   in Loop: Header=BB5_71 Depth=2
	movq	_keywords@GOTPCREL(%rip), %rax
	movq	-64(%rbp), %rdi
	movslq	-68(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB5_74
## %bb.73:                              ##   in Loop: Header=BB5_4 Depth=1
	movq	_keywords@GOTPCREL(%rip), %rax
	movslq	-68(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	jmp	LBB5_76
LBB5_74:                                ##   in Loop: Header=BB5_71 Depth=2
	jmp	LBB5_75
LBB5_75:                                ##   in Loop: Header=BB5_71 Depth=2
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	LBB5_71
LBB5_76:                                ##   in Loop: Header=BB5_4 Depth=1
	movq	-64(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 16(%rcx)
	jmp	LBB5_89
LBB5_77:                                ##   in Loop: Header=BB5_4 Depth=1
	movl	$0, -72(%rbp)
LBB5_78:                                ##   Parent Loop BB5_4 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	_multi_char_tokens_type@GOTPCREL(%rip), %rax
	movslq	-72(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	cmpq	$0, (%rax)
	je	LBB5_83
## %bb.79:                              ##   in Loop: Header=BB5_78 Depth=2
	movq	_multi_char_tokens_type@GOTPCREL(%rip), %rax
	movq	-8(%rbp), %rcx
	movslq	-12(%rbp), %rdx
	addq	%rdx, %rcx
	movslq	-72(%rbp), %rdx
	shlq	$4, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movq	(%rsi), %rsi
	movslq	-72(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdi
	movq	%rcx, -112(%rbp)        ## 8-byte Spill
	movq	%rsi, -120(%rbp)        ## 8-byte Spill
	callq	_strlen
	movq	-112(%rbp), %rdi        ## 8-byte Reload
	movq	-120(%rbp), %rsi        ## 8-byte Reload
	movq	%rax, %rdx
	callq	_strncmp
	cmpl	$0, %eax
	jne	LBB5_81
## %bb.80:                              ##   in Loop: Header=BB5_4 Depth=1
	movq	_multi_char_tokens_type@GOTPCREL(%rip), %rax
	movslq	-72(%rbp), %rcx
	shlq	$4, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movl	8(%rdx), %esi
	movq	-32(%rbp), %rcx
	movl	%esi, (%rcx)
	movslq	-72(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rdi
	callq	_strlen
	movslq	-12(%rbp), %rcx
	addq	%rax, %rcx
	movl	%ecx, %esi
	movl	%esi, -12(%rbp)
	jmp	LBB5_83
LBB5_81:                                ##   in Loop: Header=BB5_78 Depth=2
	jmp	LBB5_82
LBB5_82:                                ##   in Loop: Header=BB5_78 Depth=2
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	LBB5_78
LBB5_83:                                ##   in Loop: Header=BB5_4 Depth=1
	movq	-32(%rbp), %rax
	cmpl	$0, (%rax)
	jne	LBB5_88
## %bb.84:                              ##   in Loop: Header=BB5_4 Depth=1
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movsbl	(%rax,%rcx), %esi
	leaq	L_.str.39(%rip), %rdi
	callq	_strchr
	cmpq	$0, %rax
	je	LBB5_86
## %bb.85:                              ##   in Loop: Header=BB5_4 Depth=1
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	movl	-12(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -12(%rbp)
	jmp	LBB5_87
LBB5_86:                                ##   in Loop: Header=BB5_4 Depth=1
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	leaq	L_.str.40(%rip), %rsi
	movb	$0, %al
	callq	_error_token
LBB5_87:                                ##   in Loop: Header=BB5_4 Depth=1
	jmp	LBB5_88
LBB5_88:                                ##   in Loop: Header=BB5_4 Depth=1
	jmp	LBB5_89
LBB5_89:                                ##   in Loop: Header=BB5_4 Depth=1
	jmp	LBB5_90
LBB5_90:                                ##   in Loop: Header=BB5_4 Depth=1
	jmp	LBB5_91
LBB5_91:                                ##   in Loop: Header=BB5_4 Depth=1
	jmp	LBB5_92
LBB5_92:                                ##   in Loop: Header=BB5_4 Depth=1
	movl	-12(%rbp), %eax
	subl	-36(%rbp), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	LBB5_4
LBB5_93:
	movq	_tokens@GOTPCREL(%rip), %rax
	movslq	-16(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movl	$0, (%rdx)
	movl	-20(%rbp), %esi
	movslq	-16(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movl	%esi, 24(%rdx)
	movl	-24(%rbp), %esi
	movslq	-16(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movl	%esi, 28(%rdx)
	movq	-8(%rbp), %rcx
	movslq	-12(%rbp), %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	imulq	$40, %rdx, %rdx
	addq	%rdx, %rax
	movq	%rcx, 32(%rax)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %esi
	subl	$1, %esi
	movslq	%esi, %rcx
	movsbl	(%rax,%rcx), %esi
	cmpl	$10, %esi
	jne	LBB5_95
## %bb.94:
	movq	_tokens@GOTPCREL(%rip), %rax
	movslq	-16(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movl	24(%rdx), %esi
	addl	$-1, %esi
	movl	%esi, 24(%rdx)
	movslq	-16(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movl	$1, 28(%rax)
LBB5_95:
	movq	_tokens@GOTPCREL(%rip), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_align                  ## -- Begin function align
	.p2align	4, 0x90
_align:                                 ## @align
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %esi
	addl	-8(%rbp), %esi
	subl	$1, %esi
	movl	%esi, %eax
	cltd
	idivl	-8(%rbp)
	imull	-8(%rbp), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_find                   ## -- Begin function find
	.p2align	4, 0x90
_find:                                  ## @find
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movb	%sil, %al
	movq	%rdi, -16(%rbp)
	movb	%al, -17(%rbp)
	movl	$0, -24(%rbp)
LBB7_1:                                 ## =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	cmpb	$0, (%rax,%rcx)
	je	LBB7_5
## %bb.2:                               ##   in Loop: Header=BB7_1 Depth=1
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	movsbl	-17(%rbp), %esi
	cmpl	%esi, %edx
	jne	LBB7_4
## %bb.3:
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -8(%rbp)
	jmp	LBB7_6
LBB7_4:                                 ##   in Loop: Header=BB7_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	LBB7_1
LBB7_5:
	movq	$0, -8(%rbp)
LBB7_6:
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_new_scope              ## -- Begin function new_scope
	.p2align	4, 0x90
_new_scope:                             ## @new_scope
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	_scopes@GOTPCREL(%rip), %rax
	movl	_scope_count(%rip), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, _scope_count(%rip)
	movslq	%ecx, %rsi
	imulq	$840, %rsi, %rsi        ## imm = 0x348
	addq	%rsi, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_enter_scope            ## -- Begin function enter_scope
	.p2align	4, 0x90
_enter_scope:                           ## @enter_scope
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	callq	_new_scope
	movq	_curr_scope@GOTPCREL(%rip), %rcx
	movq	%rax, -8(%rbp)
	movq	(%rcx), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, (%rcx)
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_leave_scope            ## -- Begin function leave_scope
	.p2align	4, 0x90
_leave_scope:                           ## @leave_scope
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	_curr_scope@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_new_type               ## -- Begin function new_type
	.p2align	4, 0x90
_new_type:                              ## @new_type
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	_types@GOTPCREL(%rip), %rax
	movq	_type_count@GOTPCREL(%rip), %rcx
	movl	%edi, -4(%rbp)
	movl	(%rcx), %edi
	movl	%edi, %edx
	addl	$1, %edx
	movl	%edx, (%rcx)
	movslq	%edi, %rcx
	imulq	$2056, %rcx, %rcx       ## imm = 0x808
	addq	%rcx, %rax
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	cmpl	$1, -4(%rbp)
	je	LBB11_3
## %bb.1:
	cmpl	$3, -4(%rbp)
	je	LBB11_3
## %bb.2:
	cmpl	$8, -4(%rbp)
	jne	LBB11_4
LBB11_3:
	movq	-16(%rbp), %rax
	movl	$1, 24(%rax)
LBB11_4:
	cmpl	$1, -4(%rbp)
	je	LBB11_8
## %bb.5:
	cmpl	$3, -4(%rbp)
	je	LBB11_8
## %bb.6:
	cmpl	$6, -4(%rbp)
	je	LBB11_8
## %bb.7:
	cmpl	$8, -4(%rbp)
	jne	LBB11_9
LBB11_8:
	movq	-16(%rbp), %rax
	movl	$8, 20(%rax)
	jmp	LBB11_18
LBB11_9:
	movq	-16(%rbp), %rax
	cmpl	$0, (%rax)
	jne	LBB11_11
## %bb.10:
	movq	-16(%rbp), %rax
	movl	$4, 20(%rax)
	jmp	LBB11_17
LBB11_11:
	movq	-16(%rbp), %rax
	cmpl	$4, (%rax)
	jne	LBB11_13
## %bb.12:
	movq	-16(%rbp), %rax
	movl	$2, 20(%rax)
	jmp	LBB11_16
LBB11_13:
	movq	-16(%rbp), %rax
	cmpl	$5, (%rax)
	jne	LBB11_15
## %bb.14:
	movq	-16(%rbp), %rax
	movl	$1, 20(%rax)
LBB11_15:
	jmp	LBB11_16
LBB11_16:
	jmp	LBB11_17
LBB11_17:
	jmp	LBB11_18
LBB11_18:
	movq	-16(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_types_are_equal        ## -- Begin function types_are_equal
	.p2align	4, 0x90
_types_are_equal:                       ## @types_are_equal
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	LBB12_2
## %bb.1:
	cmpq	$0, -24(%rbp)
	jne	LBB12_3
LBB12_2:
	movl	$0, -4(%rbp)
	jmp	LBB12_12
LBB12_3:
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	LBB12_5
## %bb.4:
	movl	$1, -4(%rbp)
	jmp	LBB12_12
LBB12_5:
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	movq	-24(%rbp), %rax
	cmpl	24(%rax), %ecx
	je	LBB12_7
## %bb.6:
	movl	$0, -4(%rbp)
	jmp	LBB12_12
LBB12_7:
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movq	-24(%rbp), %rax
	cmpl	(%rax), %ecx
	je	LBB12_9
## %bb.8:
	movl	$0, -4(%rbp)
	jmp	LBB12_12
LBB12_9:
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	LBB12_11
## %bb.10:
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -4(%rbp)
	jmp	LBB12_12
LBB12_11:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rsi
	callq	_types_are_equal
	movl	%eax, -4(%rbp)
LBB12_12:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_add_func               ## -- Begin function add_func
	.p2align	4, 0x90
_add_func:                              ## @add_func
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	_funcs@GOTPCREL(%rip), %rax
	movq	_func_count@GOTPCREL(%rip), %rcx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	(%rcx), %edx
	movl	%edx, %r8d
	addl	$1, %r8d
	movl	%r8d, (%rcx)
	movslq	%edx, %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_find_func              ## -- Begin function find_func
	.p2align	4, 0x90
_find_func:                             ## @find_func
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	$0, -20(%rbp)
LBB14_1:                                ## =>This Inner Loop Header: Depth=1
	movq	_func_count@GOTPCREL(%rip), %rax
	movl	-20(%rbp), %ecx
	cmpl	(%rax), %ecx
	jge	LBB14_6
## %bb.2:                               ##   in Loop: Header=BB14_1 Depth=1
	movq	_funcs@GOTPCREL(%rip), %rax
	movq	-16(%rbp), %rdi
	movslq	-20(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	8(%rax), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB14_4
## %bb.3:
	movq	_funcs@GOTPCREL(%rip), %rax
	movslq	-20(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	%rax, -8(%rbp)
	jmp	LBB14_7
LBB14_4:                                ##   in Loop: Header=BB14_1 Depth=1
	jmp	LBB14_5
LBB14_5:                                ##   in Loop: Header=BB14_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	LBB14_1
LBB14_6:
	movq	$0, -8(%rbp)
LBB14_7:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
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
	.globl	_find_var               ## -- Begin function find_var
	.p2align	4, 0x90
_find_var:                              ## @find_var
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	_curr_scope@GOTPCREL(%rip), %rax
	movq	%rdi, -16(%rbp)
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
LBB16_1:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB16_3 Depth 2
	cmpq	$0, -24(%rbp)
	je	LBB16_9
## %bb.2:                               ##   in Loop: Header=BB16_1 Depth=1
	movl	$0, -28(%rbp)
LBB16_3:                                ##   Parent Loop BB16_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	832(%rcx), %eax
	jge	LBB16_8
## %bb.4:                               ##   in Loop: Header=BB16_3 Depth=2
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movq	32(%rax,%rcx,8), %rax
	movq	8(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB16_6
## %bb.5:
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movq	32(%rax,%rcx,8), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB16_12
LBB16_6:                                ##   in Loop: Header=BB16_3 Depth=2
	jmp	LBB16_7
LBB16_7:                                ##   in Loop: Header=BB16_3 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	LBB16_3
LBB16_8:                                ##   in Loop: Header=BB16_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	LBB16_1
LBB16_9:
	movq	-16(%rbp), %rdi
	callq	_find_func
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	LBB16_11
## %bb.10:
	movq	$0, -8(%rbp)
	jmp	LBB16_12
LBB16_11:
	movl	$8, %edi
	callq	_new_type
	movq	_tokens@GOTPCREL(%rip), %rcx
	movq	_ct@GOTPCREL(%rip), %rdx
	movq	_vars@GOTPCREL(%rip), %rsi
	movq	%rax, -48(%rbp)
	movl	_var_count(%rip), %edi
	movl	%edi, %r8d
	addl	$1, %r8d
	movl	%r8d, _var_count(%rip)
	movslq	%edi, %rax
	imulq	$48, %rax, %rax
	addq	%rax, %rsi
	movq	%rsi, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-16(%rbp), %rax
	movq	-56(%rbp), %rsi
	movq	%rax, 8(%rsi)
	movslq	(%rdx), %rax
	imulq	$40, %rax, %rax
	addq	%rax, %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, 24(%rax)
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
LBB16_12:
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_new_var                ## -- Begin function new_var
	.p2align	4, 0x90
_new_var:                               ## @new_var
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
LBB17_1:                                ## =>This Inner Loop Header: Depth=1
	movq	_curr_scope@GOTPCREL(%rip), %rax
	movl	-20(%rbp), %ecx
	movq	(%rax), %rax
	cmpl	832(%rax), %ecx
	jge	LBB17_6
## %bb.2:                               ##   in Loop: Header=BB17_1 Depth=1
	movq	_curr_scope@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movslq	-20(%rbp), %rcx
	movq	32(%rax,%rcx,8), %rax
	movq	8(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB17_4
## %bb.3:                               ##   in Loop: Header=BB17_1 Depth=1
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	leaq	L_.str.41(%rip), %rsi
	movb	$0, %al
	callq	_error_token
LBB17_4:                                ##   in Loop: Header=BB17_1 Depth=1
	jmp	LBB17_5
LBB17_5:                                ##   in Loop: Header=BB17_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	LBB17_1
LBB17_6:
	xorl	%eax, %eax
	movb	%al, %cl
	movq	_tokens@GOTPCREL(%rip), %rdx
	movq	_ct@GOTPCREL(%rip), %rsi
	movq	_vars@GOTPCREL(%rip), %rdi
	movl	_var_count(%rip), %eax
	movl	%eax, %r8d
	addl	$1, %r8d
	movl	%r8d, _var_count(%rip)
	movslq	%eax, %r9
	imulq	$48, %r9, %r9
	addq	%r9, %rdi
	movq	%rdi, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %r9
	movq	%rdi, 8(%r9)
	movslq	(%rsi), %rsi
	imulq	$40, %rsi, %rsi
	addq	%rsi, %rdx
	movq	-32(%rbp), %rsi
	movq	%rdx, 24(%rsi)
	movq	-32(%rbp), %rdx
	movq	24(%rdx), %rdx
	cmpl	$257, (%rdx)            ## imm = 0x101
	movb	%cl, -33(%rbp)          ## 1-byte Spill
	jne	LBB17_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	16(%rax), %rax
	movq	-32(%rbp), %rcx
	cmpq	8(%rcx), %rax
	sete	%dl
	movb	%dl, -33(%rbp)          ## 1-byte Spill
LBB17_8:
	movb	-33(%rbp), %al          ## 1-byte Reload
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %ecx
	movslq	%ecx, %rdx
	cmpq	$0, %rdx
	je	LBB17_10
## %bb.9:
	leaq	L___func__.new_var(%rip), %rdi
	leaq	L_.str.42(%rip), %rsi
	leaq	L_.str.43(%rip), %rcx
	movl	$114, %edx
	callq	___assert_rtn
LBB17_10:
	jmp	LBB17_11
LBB17_11:
	movq	_curr_scope@GOTPCREL(%rip), %rax
	movq	-8(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	%rcx, (%rdx)
	movq	-32(%rbp), %rcx
	movq	(%rax), %rdx
	movq	(%rax), %rax
	movl	832(%rax), %esi
	movl	%esi, %edi
	addl	$1, %edi
	movl	%edi, 832(%rax)
	movslq	%esi, %rax
	movq	%rcx, 32(%rdx,%rax,8)
	movq	-8(%rbp), %rax
	cmpl	$0, 20(%rax)
	jne	LBB17_13
## %bb.12:
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, %rdi
	leaq	L_.str.44(%rip), %rsi
	movb	$0, %al
	callq	_error_token
LBB17_13:
	movq	_curr_func@GOTPCREL(%rip), %rax
	cmpq	$0, (%rax)
	je	LBB17_22
## %bb.14:
	movq	-8(%rbp), %rax
	cmpl	$0, 20(%rax)
	je	LBB17_22
## %bb.15:
	movq	-8(%rbp), %rax
	cmpl	$3, (%rax)
	jne	LBB17_17
## %bb.16:
	movq	_curr_func@GOTPCREL(%rip), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movl	20(%rcx), %edx
	movq	-8(%rbp), %rcx
	imull	16(%rcx), %edx
	movq	(%rax), %rax
	addl	1768(%rax), %edx
	movl	%edx, 1768(%rax)
	jmp	LBB17_18
LBB17_17:
	movq	_curr_func@GOTPCREL(%rip), %rax
	movq	-8(%rbp), %rcx
	movl	20(%rcx), %edx
	movq	(%rax), %rax
	addl	1768(%rax), %edx
	movl	%edx, 1768(%rax)
LBB17_18:
	movq	_curr_func@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	1768(%rax), %edi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	20(%rax), %esi
	callq	_align
	movq	_curr_func@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rdx
	movl	%eax, 1768(%rdx)
	movq	(%rcx), %rcx
	movl	1768(%rcx), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, 16(%rcx)
	movq	-32(%rbp), %rcx
	movl	16(%rcx), %eax
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	cltd
	idivl	20(%rcx)
	cmpl	$0, %edx
	sete	%r8b
	xorb	$-1, %r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	movslq	%edx, %rcx
	cmpq	$0, %rcx
	je	LBB17_20
## %bb.19:
	leaq	L___func__.new_var(%rip), %rdi
	leaq	L_.str.42(%rip), %rsi
	leaq	L_.str.45(%rip), %rcx
	movl	$129, %edx
	callq	___assert_rtn
LBB17_20:
	jmp	LBB17_21
LBB17_21:
	jmp	LBB17_22
LBB17_22:
	movq	-32(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_skip                   ## -- Begin function skip
	.p2align	4, 0x90
_skip:                                  ## @skip
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movl	%edi, -4(%rbp)
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movl	(%rax), %edi
	cmpl	-4(%rbp), %edi
	je	LBB18_2
## %bb.1:
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movl	-4(%rbp), %edi
	movq	%rax, -16(%rbp)         ## 8-byte Spill
	callq	_token_type_name
	movq	-16(%rbp), %rdi         ## 8-byte Reload
	leaq	L_.str.46(%rip), %rsi
	movq	%rax, %rdx
	movb	$0, %al
	callq	_error_token
LBB18_2:
	movq	_ct@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_is_typename            ## -- Begin function is_typename
	.p2align	4, 0x90
_is_typename:                           ## @is_typename
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	(%rdi), %edi
	movl	$269, %esi              ## imm = 0x10D
	movl	$270, %edx              ## imm = 0x10E
	movl	$271, %ecx              ## imm = 0x10F
	movl	$272, %r8d              ## imm = 0x110
	movl	$273, %r9d              ## imm = 0x111
	movl	$279, (%rsp)            ## imm = 0x117
	movl	$280, 8(%rsp)           ## imm = 0x118
	movl	$-1, 16(%rsp)
	movb	$0, %al
	callq	_type_match
	cmpl	$0, %eax
	je	LBB19_2
## %bb.1:
	movl	$1, -4(%rbp)
	jmp	LBB19_11
LBB19_2:
	movq	-16(%rbp), %rax
	cmpl	$257, (%rax)            ## imm = 0x101
	jne	LBB19_10
## %bb.3:
	movl	$0, -20(%rbp)
LBB19_4:                                ## =>This Inner Loop Header: Depth=1
	movq	_types_declared_count@GOTPCREL(%rip), %rax
	movl	-20(%rbp), %ecx
	cmpl	(%rax), %ecx
	jge	LBB19_9
## %bb.5:                               ##   in Loop: Header=BB19_4 Depth=1
	movq	_types_declared@GOTPCREL(%rip), %rax
	movslq	-20(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	16(%rax), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB19_7
## %bb.6:
	movl	$1, -4(%rbp)
	jmp	LBB19_11
LBB19_7:                                ##   in Loop: Header=BB19_4 Depth=1
	jmp	LBB19_8
LBB19_8:                                ##   in Loop: Header=BB19_4 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	LBB19_4
LBB19_9:
	jmp	LBB19_10
LBB19_10:
	movl	$0, -4(%rbp)
LBB19_11:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_find_binary_op_type    ## -- Begin function find_binary_op_type
	.p2align	4, 0x90
_find_binary_op_type:                   ## @find_binary_op_type
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	_types_are_equal
	cmpl	$0, %eax
	je	LBB20_2
## %bb.1:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB20_6
LBB20_2:
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	LBB20_5
## %bb.3:
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	LBB20_5
## %bb.4:
	jmp	LBB20_5
LBB20_5:
	movq	$0, -8(%rbp)
LBB20_6:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_strjoin                ## -- Begin function strjoin
	.p2align	4, 0x90
_strjoin:                               ## @strjoin
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	_strlen
	movl	%eax, %ecx
	movl	%ecx, -20(%rbp)
	movq	-16(%rbp), %rdi
	callq	_strlen
	movl	%eax, %ecx
	movl	%ecx, -24(%rbp)
	movl	-20(%rbp), %ecx
	addl	-24(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdi
	callq	_malloc
	movq	$-1, %rcx
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movslq	-20(%rbp), %rdx
	callq	___memcpy_chk
	movq	$-1, %rcx
	movq	-32(%rbp), %rdx
	movslq	-20(%rbp), %rsi
	addq	%rsi, %rdx
	movq	-16(%rbp), %rsi
	movslq	-24(%rbp), %rdi
	movq	%rdi, -40(%rbp)         ## 8-byte Spill
	movq	%rdx, %rdi
	movq	-40(%rbp), %rdx         ## 8-byte Reload
	movq	%rax, -48(%rbp)         ## 8-byte Spill
	callq	___memcpy_chk
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %r8d
	addl	-24(%rbp), %r8d
	movslq	%r8d, %rdx
	movb	$0, (%rcx,%rdx)
	movq	-32(%rbp), %rcx
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	movq	%rcx, %rax
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_get_type_str           ## -- Begin function get_type_str
	.p2align	4, 0x90
_get_type_str:                          ## @get_type_str
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	cmpl	$7, (%rdi)
	jne	LBB22_2
## %bb.1:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rsi
	leaq	L_.str.47(%rip), %rdi
	callq	_strjoin
	movq	%rax, -8(%rbp)
	jmp	LBB22_20
LBB22_2:
	movq	-16(%rbp), %rax
	cmpl	$1, (%rax)
	jne	LBB22_4
## %bb.3:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	_get_type_str
	movq	%rax, %rdi
	leaq	L_.str.48(%rip), %rsi
	callq	_strjoin
	movq	%rax, -8(%rbp)
	jmp	LBB22_20
LBB22_4:
	movq	-16(%rbp), %rax
	cmpl	$3, (%rax)
	jne	LBB22_6
## %bb.5:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	_get_type_str
	movq	%rax, %rdi
	leaq	L_.str.49(%rip), %rsi
	callq	_strjoin
	movq	%rax, -8(%rbp)
	jmp	LBB22_20
LBB22_6:
	jmp	LBB22_7
LBB22_7:
	movq	-16(%rbp), %rax
	cmpl	$2, (%rax)
	jne	LBB22_9
## %bb.8:
	leaq	L_.str.23(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB22_20
LBB22_9:
	movq	-16(%rbp), %rax
	cmpl	$5, (%rax)
	jne	LBB22_11
## %bb.10:
	leaq	L_.str.24(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB22_20
LBB22_11:
	movq	-16(%rbp), %rax
	cmpl	$0, (%rax)
	jne	LBB22_13
## %bb.12:
	leaq	L_.str(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB22_20
LBB22_13:
	movq	-16(%rbp), %rax
	cmpl	$4, (%rax)
	jne	LBB22_15
## %bb.14:
	leaq	L_.str.25(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB22_20
LBB22_15:
	movq	-16(%rbp), %rax
	cmpl	$6, (%rax)
	jne	LBB22_17
## %bb.16:
	leaq	L_.str.26(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB22_20
LBB22_17:
	movq	-16(%rbp), %rax
	cmpl	$9, (%rax)
	jne	LBB22_19
## %bb.18:
	leaq	L_.str.50(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB22_20
LBB22_19:
	leaq	L___func__.get_type_str(%rip), %rdi
	leaq	L_.str.42(%rip), %rsi
	leaq	L_.str.4(%rip), %rcx
	movl	$233, %edx
	callq	___assert_rtn
LBB22_20:
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_implicit_cast          ## -- Begin function implicit_cast
	.p2align	4, 0x90
_implicit_cast:                         ## @implicit_cast
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rdi
	callq	_add_type
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	136(%rsi), %rsi
	movq	%rax, -32(%rbp)         ## 8-byte Spill
	callq	_types_are_equal
	cmpl	$0, %eax
	je	LBB23_2
## %bb.1:
	jmp	LBB23_3
LBB23_2:
	movl	$21, %edi
	callq	_new_node
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 136(%rcx)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
LBB23_3:
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_add_type               ## -- Begin function add_type
	.p2align	4, 0x90
_add_type:                              ## @add_type
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	_type_void@GOTPCREL(%rip), %rax
	movq	%rdi, -16(%rbp)
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	LBB24_2
## %bb.1:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB24_98
LBB24_2:
	movq	-16(%rbp), %rax
	cmpq	$0, 136(%rax)
	je	LBB24_4
## %bb.3:
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	LBB24_97
LBB24_4:
	movq	-16(%rbp), %rax
	cmpl	$3, (%rax)
	jne	LBB24_10
## %bb.5:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$2147483647, 8(%rax)    ## imm = 0x7FFFFFFF
	jg	LBB24_7
## %bb.6:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$-2147483648, 8(%rax)   ## imm = 0x80000000
	jge	LBB24_8
LBB24_7:
	movq	_type_long@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	LBB24_9
LBB24_8:
	movq	_type_int@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
LBB24_9:
	jmp	LBB24_96
LBB24_10:
	movq	-16(%rbp), %rax
	cmpl	$13, (%rax)
	jne	LBB24_21
## %bb.11:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	cmpl	$275, (%rax)            ## imm = 0x113
	je	LBB24_13
## %bb.12:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	cmpl	$276, (%rax)            ## imm = 0x114
	jne	LBB24_16
LBB24_13:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	_add_type
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$2, (%rax)
	jne	LBB24_15
## %bb.14:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movl	(%rax), %ecx
	movq	%rdi, -80(%rbp)         ## 8-byte Spill
	movl	%ecx, %edi
	callq	_token_type_name
	movq	-80(%rbp), %rdi         ## 8-byte Reload
	leaq	L_.str.51(%rip), %rsi
	movq	%rax, %rdx
	movb	$0, %al
	callq	_error_token
LBB24_15:
	jmp	LBB24_20
LBB24_16:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	cmpl	$33, (%rax)
	jne	LBB24_18
## %bb.17:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	_add_type
	movq	_type_int@GOTPCREL(%rip), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	%rax, -88(%rbp)         ## 8-byte Spill
	jmp	LBB24_19
LBB24_18:
	leaq	L___func__.add_type(%rip), %rdi
	leaq	L_.str.42(%rip), %rsi
	leaq	L_.str.4(%rip), %rcx
	movl	$293, %edx              ## imm = 0x125
	callq	___assert_rtn
LBB24_19:
	jmp	LBB24_20
LBB24_20:
	jmp	LBB24_95
LBB24_21:
	movq	-16(%rbp), %rax
	cmpl	$18, (%rax)
	jne	LBB24_23
## %bb.22:
	movl	$1, %edi
	callq	_new_type
	movq	_type_char@GOTPCREL(%rip), %rcx
	movq	%rax, -24(%rbp)
	movq	(%rcx), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 8(%rcx)
	jmp	LBB24_94
LBB24_23:
	movq	-16(%rbp), %rax
	cmpl	$2, (%rax)
	jne	LBB24_25
## %bb.24:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	LBB24_93
LBB24_25:
	movq	-16(%rbp), %rax
	cmpl	$12, (%rax)
	jne	LBB24_27
## %bb.26:
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	LBB24_92
LBB24_27:
	movq	-16(%rbp), %rax
	cmpl	$16, (%rax)
	jne	LBB24_31
## %bb.28:
	movl	$1, %edi
	callq	_new_type
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	_add_type
	movq	-24(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	cmpl	$2, (%rax)
	jne	LBB24_30
## %bb.29:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.52(%rip), %rsi
	movb	$0, %al
	callq	_error_token
LBB24_30:
	jmp	LBB24_91
LBB24_31:
	movq	-16(%rbp), %rax
	cmpl	$15, (%rax)
	jne	LBB24_37
## %bb.32:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	_add_type
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	LBB24_34
## %bb.33:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.53(%rip), %rsi
	movb	$0, %al
	callq	_error_token
LBB24_34:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	cmpl	$2, (%rax)
	jne	LBB24_36
## %bb.35:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.54(%rip), %rsi
	movb	$0, %al
	callq	_error_token
LBB24_36:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	LBB24_90
LBB24_37:
	movq	-16(%rbp), %rax
	cmpl	$6, (%rax)
	jne	LBB24_41
## %bb.38:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	_add_type
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$2, (%rax)
	jne	LBB24_40
## %bb.39:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.55(%rip), %rsi
	movb	$0, %al
	callq	_error_token
LBB24_40:
	jmp	LBB24_89
LBB24_41:
	movq	-16(%rbp), %rax
	cmpl	$21, (%rax)
	jne	LBB24_43
## %bb.42:
	movq	-16(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	_add_type
	movq	%rax, -96(%rbp)         ## 8-byte Spill
	jmp	LBB24_88
LBB24_43:
	movq	-16(%rbp), %rax
	cmpl	$4, (%rax)
	jne	LBB24_77
## %bb.44:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movl	(%rax), %ecx
	movl	%ecx, -36(%rbp)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	_add_type
	movq	-16(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rax, -104(%rbp)        ## 8-byte Spill
	callq	_add_type
	movq	-16(%rbp), %rdi
	movq	24(%rdi), %rdi
	movq	136(%rdi), %rdi
	movq	%rdi, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	136(%rdi), %rdi
	movq	%rdi, -56(%rbp)
	movq	-48(%rbp), %rdi
	cmpl	$2, (%rdi)
	movq	%rax, -112(%rbp)        ## 8-byte Spill
	je	LBB24_46
## %bb.45:
	movq	-56(%rbp), %rax
	cmpl	$2, (%rax)
	jne	LBB24_47
LBB24_46:
	leaq	L___func__.add_type(%rip), %rdi
	leaq	L_.str.42(%rip), %rsi
	leaq	L_.str.4(%rip), %rcx
	movl	$341, %edx              ## imm = 0x155
	callq	___assert_rtn
LBB24_47:
	movq	-48(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	LBB24_49
## %bb.48:
	movq	-56(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	LBB24_72
LBB24_49:
	movl	-36(%rbp), %edi
	movl	$42, %esi
	movl	$47, %edx
	movl	$37, %ecx
	movl	$4294967295, %r8d       ## imm = 0xFFFFFFFF
	movb	$0, %al
	callq	_type_match
	cmpl	$0, %eax
	jne	LBB24_59
## %bb.50:
	movq	-48(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	LBB24_52
## %bb.51:
	cmpl	$45, -36(%rbp)
	je	LBB24_59
LBB24_52:
	movq	-48(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	LBB24_55
## %bb.53:
	movq	-56(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	LBB24_55
## %bb.54:
	cmpl	$43, -36(%rbp)
	je	LBB24_59
LBB24_55:
	movq	-48(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	LBB24_60
## %bb.56:
	movq	-56(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	LBB24_60
## %bb.57:
	cmpl	$45, -36(%rbp)
	jne	LBB24_60
## %bb.58:
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	_types_are_equal
	cmpl	$0, %eax
	jne	LBB24_60
LBB24_59:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-48(%rbp), %rax
	movq	%rdi, -120(%rbp)        ## 8-byte Spill
	movq	%rax, %rdi
	callq	_get_type_str
	movq	-56(%rbp), %rdi
	movq	%rax, -128(%rbp)        ## 8-byte Spill
	callq	_get_type_str
	movq	-120(%rbp), %rdi        ## 8-byte Reload
	leaq	L_.str.56(%rip), %rsi
	movq	-128(%rbp), %rdx        ## 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	_error_token
LBB24_60:
	movq	-48(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	LBB24_65
## %bb.61:
	movq	-56(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	LBB24_65
## %bb.62:
	cmpl	$43, -36(%rbp)
	je	LBB24_64
## %bb.63:
	cmpl	$45, -36(%rbp)
	jne	LBB24_65
LBB24_64:
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	LBB24_71
LBB24_65:
	movq	-56(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	LBB24_69
## %bb.66:
	movq	-48(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	LBB24_69
## %bb.67:
	cmpl	$43, -36(%rbp)
	jne	LBB24_69
## %bb.68:
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	LBB24_70
LBB24_69:
	movq	_type_int@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
LBB24_70:
	jmp	LBB24_71
LBB24_71:
	jmp	LBB24_76
LBB24_72:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	136(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	136(%rax), %rsi
	callq	_find_common_type
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	addq	$24, %rax
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	_implicit_cast
	movq	-16(%rbp), %rax
	addq	$32, %rax
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	_implicit_cast
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movl	(%rax), %edi
	movl	$43, %esi
	movl	$45, %edx
	movl	$42, %ecx
	movl	$47, %r8d
	movl	$37, %r9d
	movl	$-1, (%rsp)
	movb	$0, %al
	callq	_type_match
	cmpl	$0, %eax
	je	LBB24_74
## %bb.73:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	136(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	LBB24_75
LBB24_74:
	movq	_type_int@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
LBB24_75:
	jmp	LBB24_76
LBB24_76:
	jmp	LBB24_87
LBB24_77:
	movq	-16(%rbp), %rax
	cmpl	$5, (%rax)
	jne	LBB24_82
## %bb.78:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	_add_type
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$2, (%rax)
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rax
	cmpq	$0, %rax
	je	LBB24_80
## %bb.79:
	leaq	L___func__.add_type(%rip), %rdi
	leaq	L_.str.42(%rip), %rsi
	leaq	L_.str.57(%rip), %rcx
	movl	$370, %edx              ## imm = 0x172
	callq	___assert_rtn
LBB24_80:
	jmp	LBB24_81
LBB24_81:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	_add_type
	movq	-16(%rbp), %rdi
	addq	$32, %rdi
	movq	-24(%rbp), %rsi
	movq	%rax, -136(%rbp)        ## 8-byte Spill
	callq	_implicit_cast
	jmp	LBB24_86
LBB24_82:
	movq	-16(%rbp), %rax
	cmpl	$22, (%rax)
	jne	LBB24_84
## %bb.83:
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdi
	callq	_add_type
	movq	-16(%rbp), %rdi
	movq	24(%rdi), %rdi
	movq	%rax, -144(%rbp)        ## 8-byte Spill
	callq	_add_type
	movq	-16(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rax, -152(%rbp)        ## 8-byte Spill
	callq	_add_type
	movq	-16(%rbp), %rdi
	movq	24(%rdi), %rdi
	movq	136(%rdi), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	136(%rcx), %rsi
	movq	%rax, -160(%rbp)        ## 8-byte Spill
	callq	_find_common_type
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rax
	addq	$24, %rax
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	_implicit_cast
	movq	-16(%rbp), %rax
	addq	$32, %rax
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	_implicit_cast
	movq	-72(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	LBB24_85
LBB24_84:
	leaq	L___func__.add_type(%rip), %rdi
	leaq	L_.str.42(%rip), %rsi
	leaq	L_.str.4(%rip), %rcx
	movl	$385, %edx              ## imm = 0x181
	callq	___assert_rtn
LBB24_85:
	jmp	LBB24_86
LBB24_86:
	jmp	LBB24_87
LBB24_87:
	jmp	LBB24_88
LBB24_88:
	jmp	LBB24_89
LBB24_89:
	jmp	LBB24_90
LBB24_90:
	jmp	LBB24_91
LBB24_91:
	jmp	LBB24_92
LBB24_92:
	jmp	LBB24_93
LBB24_93:
	jmp	LBB24_94
LBB24_94:
	jmp	LBB24_95
LBB24_95:
	jmp	LBB24_96
LBB24_96:
	jmp	LBB24_97
LBB24_97:
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 136(%rcx)
	movq	-16(%rbp), %rax
	movq	104(%rax), %rdi
	callq	_add_type
	movq	-24(%rbp), %rcx
	movq	%rcx, -8(%rbp)
	movq	%rax, -168(%rbp)        ## 8-byte Spill
LBB24_98:
	movq	-8(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_find_common_type       ## -- Begin function find_common_type
	.p2align	4, 0x90
_find_common_type:                      ## @find_common_type
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	cmpq	$0, 8(%rsi)
	je	LBB25_2
## %bb.1:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB25_17
LBB25_2:
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	LBB25_4
## %bb.3:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB25_17
LBB25_4:
	movq	-16(%rbp), %rax
	cmpl	$4, 20(%rax)
	jge	LBB25_6
## %bb.5:
	movq	_type_int@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
LBB25_6:
	movq	-24(%rbp), %rax
	cmpl	$4, 20(%rax)
	jge	LBB25_8
## %bb.7:
	movq	_type_int@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
LBB25_8:
	movq	-16(%rbp), %rax
	movl	20(%rax), %ecx
	movq	-24(%rbp), %rax
	cmpl	20(%rax), %ecx
	je	LBB25_13
## %bb.9:
	movq	-16(%rbp), %rax
	movl	20(%rax), %ecx
	movq	-24(%rbp), %rax
	cmpl	20(%rax), %ecx
	jge	LBB25_11
## %bb.10:
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)         ## 8-byte Spill
	jmp	LBB25_12
LBB25_11:
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         ## 8-byte Spill
LBB25_12:
	movq	-32(%rbp), %rax         ## 8-byte Reload
	movq	%rax, -8(%rbp)
	jmp	LBB25_17
LBB25_13:
	movq	-24(%rbp), %rax
	cmpl	$0, 24(%rax)
	je	LBB25_15
## %bb.14:
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)         ## 8-byte Spill
	jmp	LBB25_16
LBB25_15:
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         ## 8-byte Spill
LBB25_16:
	movq	-40(%rbp), %rax         ## 8-byte Reload
	movq	%rax, -8(%rbp)
LBB25_17:
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_parse                  ## -- Begin function parse
	.p2align	4, 0x90
_parse:                                 ## @parse
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	_type_void@GOTPCREL(%rip), %rax
	movq	%rdi, -8(%rbp)
	movq	(%rax), %rsi
	leaq	L_.str.58(%rip), %rdi
	callq	_add_func
	movq	-8(%rbp), %rdi
	movq	%rax, -128(%rbp)        ## 8-byte Spill
	callq	_tokenize
	movq	_ct@GOTPCREL(%rip), %rsi
	movl	$0, (%rsi)
	movl	$1, %edi
	movq	%rax, -136(%rbp)        ## 8-byte Spill
	callq	_new_node
	movq	%rax, -16(%rbp)
	callq	_new_scope
	movq	_curr_scope@GOTPCREL(%rip), %rsi
	movq	%rax, (%rsi)
	movq	(%rsi), %rax
	movq	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
LBB26_1:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB26_6 Depth 2
                                        ##     Child Loop BB26_20 Depth 2
                                        ##       Child Loop BB26_24 Depth 3
                                        ##     Child Loop BB26_35 Depth 2
                                        ##       Child Loop BB26_37 Depth 3
                                        ##         Child Loop BB26_39 Depth 4
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$0, (%rax)
	je	LBB26_61
## %bb.2:                               ##   in Loop: Header=BB26_1 Depth=1
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movl	(%rcx), %edx
	movl	%edx, -28(%rbp)
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$289, (%rax)            ## imm = 0x121
	jne	LBB26_18
## %bb.3:                               ##   in Loop: Header=BB26_1 Depth=1
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movl	(%rcx), %edx
	addl	$1, %edx
	movl	%edx, (%rcx)
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$257, (%rax)            ## imm = 0x101
	jne	LBB26_5
## %bb.4:                               ##   in Loop: Header=BB26_1 Depth=1
	movq	_ct@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
LBB26_5:                                ##   in Loop: Header=BB26_1 Depth=1
	movl	$123, %edi
	callq	_skip
	movl	$0, -32(%rbp)
LBB26_6:                                ##   Parent Loop BB26_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$125, (%rax)
	je	LBB26_17
## %bb.7:                               ##   in Loop: Header=BB26_6 Depth=2
	movq	_enums@GOTPCREL(%rip), %rax
	movq	_enum_count@GOTPCREL(%rip), %rcx
	movq	_tokens@GOTPCREL(%rip), %rdx
	movq	_ct@GOTPCREL(%rip), %rsi
	movslq	(%rsi), %rsi
	imulq	$40, %rsi, %rsi
	addq	%rsi, %rdx
	movq	16(%rdx), %rdx
	movslq	(%rcx), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	%rdx, (%rax)
	movl	$257, %edi              ## imm = 0x101
	callq	_skip
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$61, (%rax)
	jne	LBB26_11
## %bb.8:                               ##   in Loop: Header=BB26_6 Depth=2
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movl	(%rcx), %edx
	addl	$1, %edx
	movl	%edx, (%rcx)
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$256, (%rax)            ## imm = 0x100
	je	LBB26_10
## %bb.9:                               ##   in Loop: Header=BB26_6 Depth=2
	movl	$256, %edi              ## imm = 0x100
	callq	_skip
LBB26_10:                               ##   in Loop: Header=BB26_6 Depth=2
	movq	_ct@GOTPCREL(%rip), %rax
	movq	_tokens@GOTPCREL(%rip), %rcx
	movslq	(%rax), %rdx
	imulq	$40, %rdx, %rdx
	addq	%rdx, %rcx
	movq	8(%rcx), %rcx
	movl	%ecx, %esi
	movl	%esi, -32(%rbp)
	movl	(%rax), %esi
	addl	$1, %esi
	movl	%esi, (%rax)
LBB26_11:                               ##   in Loop: Header=BB26_6 Depth=2
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$44, (%rax)
	jne	LBB26_13
## %bb.12:                              ##   in Loop: Header=BB26_6 Depth=2
	movq	_ct@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	jmp	LBB26_16
LBB26_13:                               ##   in Loop: Header=BB26_6 Depth=2
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$125, (%rax)
	je	LBB26_15
## %bb.14:                              ##   in Loop: Header=BB26_6 Depth=2
	movl	$125, %edi
	callq	_skip
LBB26_15:                               ##   in Loop: Header=BB26_6 Depth=2
	jmp	LBB26_16
LBB26_16:                               ##   in Loop: Header=BB26_6 Depth=2
	movq	_enum_count@GOTPCREL(%rip), %rax
	movq	_enums@GOTPCREL(%rip), %rcx
	movl	-32(%rbp), %edx
	movslq	(%rax), %rsi
	shlq	$4, %rsi
	addq	%rsi, %rcx
	movl	%edx, 8(%rcx)
	movl	(%rax), %edx
	addl	$1, %edx
	movl	%edx, (%rax)
	movl	-32(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -32(%rbp)
	jmp	LBB26_6
LBB26_17:                               ##   in Loop: Header=BB26_1 Depth=1
	movl	$125, %edi
	callq	_skip
	movl	$59, %edi
	callq	_skip
	jmp	LBB26_60
LBB26_18:                               ##   in Loop: Header=BB26_1 Depth=1
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$286, (%rax)            ## imm = 0x11E
	jne	LBB26_49
## %bb.19:                              ##   in Loop: Header=BB26_1 Depth=1
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
	movl	$7, %edi
	callq	_new_type
	movq	_tokens@GOTPCREL(%rip), %rcx
	movq	_ct@GOTPCREL(%rip), %rdx
	movq	%rax, -48(%rbp)
	movl	(%rdx), %edi
	addl	$1, %edi
	movl	%edi, (%rdx)
	movslq	(%rdx), %rax
	imulq	$40, %rax, %rax
	addq	%rax, %rcx
	movq	16(%rcx), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movl	$257, %edi              ## imm = 0x101
	callq	_skip
	movl	$123, %edi
	callq	_skip
	movl	$0, -52(%rbp)
	movl	$0, -56(%rbp)
LBB26_20:                               ##   Parent Loop BB26_1 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB26_24 Depth 3
	xorl	%eax, %eax
	movb	%al, %cl
	movq	_tokens@GOTPCREL(%rip), %rdx
	movq	_ct@GOTPCREL(%rip), %rsi
	movslq	(%rsi), %rsi
	imulq	$40, %rsi, %rsi
	addq	%rsi, %rdx
	cmpl	$0, (%rdx)
	movb	%cl, -137(%rbp)         ## 1-byte Spill
	je	LBB26_22
## %bb.21:                              ##   in Loop: Header=BB26_20 Depth=2
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$125, (%rax)
	setne	%dl
	movb	%dl, -137(%rbp)         ## 1-byte Spill
LBB26_22:                               ##   in Loop: Header=BB26_20 Depth=2
	movb	-137(%rbp), %al         ## 1-byte Reload
	testb	$1, %al
	jne	LBB26_23
	jmp	LBB26_32
LBB26_23:                               ##   in Loop: Header=BB26_20 Depth=2
	movl	$1, %edi
	callq	_decl
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -64(%rbp)
LBB26_24:                               ##   Parent Loop BB26_1 Depth=1
                                        ##     Parent Loop BB26_20 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	cmpq	$0, -64(%rbp)
	je	LBB26_31
## %bb.25:                              ##   in Loop: Header=BB26_24 Depth=3
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	-48(%rbp), %rcx
	movslq	-52(%rbp), %rdx
	movq	%rax, 840(%rcx,%rdx,8)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rcx
	movslq	-52(%rbp), %rdx
	movq	%rax, 40(%rcx,%rdx,8)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	cmpl	$0, 20(%rax)
	setne	%sil
	xorb	$-1, %sil
	andb	$1, %sil
	movzbl	%sil, %edi
	movslq	%edi, %rax
	cmpq	$0, %rax
	je	LBB26_27
## %bb.26:
	leaq	L___func__.parse(%rip), %rdi
	leaq	L_.str.42(%rip), %rsi
	leaq	L_.str.59(%rip), %rcx
	movl	$460, %edx              ## imm = 0x1CC
	callq	___assert_rtn
LBB26_27:                               ##   in Loop: Header=BB26_24 Depth=3
	jmp	LBB26_28
LBB26_28:                               ##   in Loop: Header=BB26_24 Depth=3
	movl	-56(%rbp), %edi
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movl	20(%rax), %esi
	callq	_align
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	movq	-48(%rbp), %rcx
	movslq	-52(%rbp), %rdx
	movl	%eax, 1640(%rcx,%rdx,4)
	movq	-64(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx), %rcx
	cmpl	$3, (%rcx)
	jne	LBB26_30
## %bb.29:                              ##   in Loop: Header=BB26_24 Depth=3
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movl	20(%rax), %ecx
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	imull	16(%rax), %ecx
	addl	-56(%rbp), %ecx
	movl	%ecx, -56(%rbp)
LBB26_30:                               ##   in Loop: Header=BB26_24 Depth=3
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movl	20(%rax), %ecx
	addl	-56(%rbp), %ecx
	movl	%ecx, -56(%rbp)
	movl	-52(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -52(%rbp)
	movq	-64(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -64(%rbp)
	jmp	LBB26_24
LBB26_31:                               ##   in Loop: Header=BB26_20 Depth=2
	movl	$59, %edi
	callq	_skip
	jmp	LBB26_20
LBB26_32:                               ##   in Loop: Header=BB26_1 Depth=1
	cmpl	$0, -56(%rbp)
	jne	LBB26_34
## %bb.33:                              ##   in Loop: Header=BB26_1 Depth=1
	movq	-40(%rbp), %rdi
	leaq	L_.str.60(%rip), %rsi
	movb	$0, %al
	callq	_error_token
LBB26_34:                               ##   in Loop: Header=BB26_1 Depth=1
	movl	-56(%rbp), %edi
	movq	-48(%rbp), %rax
	movq	40(%rax), %rax
	movl	20(%rax), %esi
	callq	_align
	movq	_types_declared@GOTPCREL(%rip), %rcx
	movq	_types_declared_count@GOTPCREL(%rip), %rdx
	movq	-48(%rbp), %r8
	movl	%eax, 20(%r8)
	movl	-52(%rbp), %eax
	movq	-48(%rbp), %r8
	movl	%eax, 2040(%r8)
	movq	-48(%rbp), %r8
	movl	(%rdx), %eax
	movl	%eax, %esi
	addl	$1, %esi
	movl	%esi, (%rdx)
	movslq	%eax, %rdx
	movq	%r8, (%rcx,%rdx,8)
	movl	$0, -68(%rbp)
LBB26_35:                               ##   Parent Loop BB26_1 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB26_37 Depth 3
                                        ##         Child Loop BB26_39 Depth 4
	movq	_types_declared_count@GOTPCREL(%rip), %rax
	movl	-68(%rbp), %ecx
	cmpl	(%rax), %ecx
	jge	LBB26_48
## %bb.36:                              ##   in Loop: Header=BB26_35 Depth=2
	movq	_types_declared@GOTPCREL(%rip), %rax
	movslq	-68(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, -80(%rbp)
	movl	$0, -84(%rbp)
LBB26_37:                               ##   Parent Loop BB26_1 Depth=1
                                        ##     Parent Loop BB26_35 Depth=2
                                        ## =>    This Loop Header: Depth=3
                                        ##         Child Loop BB26_39 Depth 4
	movl	-84(%rbp), %eax
	movq	-80(%rbp), %rcx
	cmpl	2040(%rcx), %eax
	jge	LBB26_46
## %bb.38:                              ##   in Loop: Header=BB26_37 Depth=3
	movq	-80(%rbp), %rax
	movslq	-84(%rbp), %rcx
	movq	40(%rax,%rcx,8), %rax
	movq	%rax, -96(%rbp)
LBB26_39:                               ##   Parent Loop BB26_1 Depth=1
                                        ##     Parent Loop BB26_35 Depth=2
                                        ##       Parent Loop BB26_37 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	movq	-96(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	LBB26_44
## %bb.40:                              ##   in Loop: Header=BB26_39 Depth=4
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	cmpl	$9, (%rax)
	jne	LBB26_43
## %bb.41:                              ##   in Loop: Header=BB26_39 Depth=4
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movq	2048(%rax), %rax
	movq	16(%rax), %rdi
	movq	-48(%rbp), %rax
	movq	32(%rax), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB26_43
## %bb.42:                              ##   in Loop: Header=BB26_37 Depth=3
	movq	-48(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	%rax, 8(%rcx)
	jmp	LBB26_44
LBB26_43:                               ##   in Loop: Header=BB26_39 Depth=4
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)
	jmp	LBB26_39
LBB26_44:                               ##   in Loop: Header=BB26_37 Depth=3
	jmp	LBB26_45
LBB26_45:                               ##   in Loop: Header=BB26_37 Depth=3
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	LBB26_37
LBB26_46:                               ##   in Loop: Header=BB26_35 Depth=2
	jmp	LBB26_47
LBB26_47:                               ##   in Loop: Header=BB26_35 Depth=2
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	LBB26_35
LBB26_48:                               ##   in Loop: Header=BB26_1 Depth=1
	movl	$125, %edi
	callq	_skip
	movl	$59, %edi
	callq	_skip
	jmp	LBB26_1
LBB26_49:                               ##   in Loop: Header=BB26_1 Depth=1
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, %rdi
	callq	_is_typename
	cmpl	$0, %eax
	jne	LBB26_51
## %bb.50:                              ##   in Loop: Header=BB26_1 Depth=1
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, %rdi
	leaq	L_.str.61(%rip), %rsi
	movb	$0, %al
	callq	_error_token
LBB26_51:                               ##   in Loop: Header=BB26_1 Depth=1
	callq	_parse_type
	movl	$257, %edi              ## imm = 0x101
	movq	%rax, -152(%rbp)        ## 8-byte Spill
	callq	_skip
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movl	$0, -100(%rbp)
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$40, (%rax)
	je	LBB26_53
## %bb.52:                              ##   in Loop: Header=BB26_1 Depth=1
	movl	$1, -100(%rbp)
LBB26_53:                               ##   in Loop: Header=BB26_1 Depth=1
	movq	_ct@GOTPCREL(%rip), %rax
	movl	-28(%rbp), %ecx
	movl	%ecx, (%rax)
	cmpl	$0, -100(%rbp)
	je	LBB26_55
## %bb.54:                              ##   in Loop: Header=BB26_1 Depth=1
	xorl	%edi, %edi
	callq	_decl
	movq	-24(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movl	$59, %edi
	callq	_skip
	jmp	LBB26_56
LBB26_55:                               ##   in Loop: Header=BB26_1 Depth=1
	callq	_function
	movq	-24(%rbp), %rcx
	movq	%rax, 40(%rcx)
LBB26_56:                               ##   in Loop: Header=BB26_1 Depth=1
	movq	-24(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	LBB26_58
## %bb.57:                              ##   in Loop: Header=BB26_1 Depth=1
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -24(%rbp)
LBB26_58:                               ##   in Loop: Header=BB26_1 Depth=1
	jmp	LBB26_59
LBB26_59:                               ##   in Loop: Header=BB26_1 Depth=1
	jmp	LBB26_60
LBB26_60:                               ##   in Loop: Header=BB26_1 Depth=1
	jmp	LBB26_1
LBB26_61:
	movl	$0, -104(%rbp)
LBB26_62:                               ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB26_64 Depth 2
                                        ##     Child Loop BB26_71 Depth 2
	movq	_types_declared_count@GOTPCREL(%rip), %rax
	movl	-104(%rbp), %ecx
	cmpl	(%rax), %ecx
	jge	LBB26_76
## %bb.63:                              ##   in Loop: Header=BB26_62 Depth=1
	movq	_types_declared@GOTPCREL(%rip), %rax
	movslq	-104(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, -112(%rbp)
	movl	$0, -116(%rbp)
LBB26_64:                               ##   Parent Loop BB26_62 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-116(%rbp), %eax
	movq	-112(%rbp), %rcx
	cmpl	2040(%rcx), %eax
	jge	LBB26_70
## %bb.65:                              ##   in Loop: Header=BB26_64 Depth=2
	movq	-112(%rbp), %rax
	movslq	-116(%rbp), %rcx
	movq	40(%rax,%rcx,8), %rax
	cmpq	$0, 8(%rax)
	je	LBB26_68
## %bb.66:                              ##   in Loop: Header=BB26_64 Depth=2
	movq	-112(%rbp), %rax
	movslq	-116(%rbp), %rcx
	movq	40(%rax,%rcx,8), %rax
	movq	8(%rax), %rax
	cmpl	$9, (%rax)
	jne	LBB26_68
## %bb.67:                              ##   in Loop: Header=BB26_64 Depth=2
	movq	-112(%rbp), %rax
	movslq	-116(%rbp), %rcx
	movq	40(%rax,%rcx,8), %rax
	movq	8(%rax), %rax
	movq	2048(%rax), %rdi
	leaq	L_.str.62(%rip), %rsi
	movb	$0, %al
	callq	_error_token
LBB26_68:                               ##   in Loop: Header=BB26_64 Depth=2
	jmp	LBB26_69
LBB26_69:                               ##   in Loop: Header=BB26_64 Depth=2
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	LBB26_64
LBB26_70:                               ##   in Loop: Header=BB26_62 Depth=1
	movq	-112(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-112(%rbp), %rax
	movl	20(%rax), %edx
	leaq	L_.str.63(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	$0, -120(%rbp)
	movl	%eax, -156(%rbp)        ## 4-byte Spill
LBB26_71:                               ##   Parent Loop BB26_62 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-120(%rbp), %eax
	movq	-112(%rbp), %rcx
	cmpl	2040(%rcx), %eax
	jge	LBB26_74
## %bb.72:                              ##   in Loop: Header=BB26_71 Depth=2
	movq	-112(%rbp), %rax
	movslq	-120(%rbp), %rcx
	movq	40(%rax,%rcx,8), %rdi
	callq	_get_type_str
	movq	-112(%rbp), %rcx
	movslq	-120(%rbp), %rdi
	movq	840(%rcx,%rdi,8), %rdx
	leaq	L_.str.64(%rip), %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	_printf
	movl	%eax, -160(%rbp)        ## 4-byte Spill
## %bb.73:                              ##   in Loop: Header=BB26_71 Depth=2
	movl	-120(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -120(%rbp)
	jmp	LBB26_71
LBB26_74:                               ##   in Loop: Header=BB26_62 Depth=1
	jmp	LBB26_75
LBB26_75:                               ##   in Loop: Header=BB26_62 Depth=1
	movl	-104(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -104(%rbp)
	jmp	LBB26_62
LBB26_76:
	movq	-16(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_find_type              ## -- Begin function find_type
	.p2align	4, 0x90
_find_type:                             ## @find_type
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	$0, -20(%rbp)
LBB27_1:                                ## =>This Inner Loop Header: Depth=1
	movq	_types_declared_count@GOTPCREL(%rip), %rax
	movl	-20(%rbp), %ecx
	cmpl	(%rax), %ecx
	jge	LBB27_6
## %bb.2:                               ##   in Loop: Header=BB27_1 Depth=1
	movq	_types_declared@GOTPCREL(%rip), %rax
	movslq	-20(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB27_4
## %bb.3:
	movq	_types_declared@GOTPCREL(%rip), %rax
	movslq	-20(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB27_7
LBB27_4:                                ##   in Loop: Header=BB27_1 Depth=1
	jmp	LBB27_5
LBB27_5:                                ##   in Loop: Header=BB27_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	LBB27_1
LBB27_6:
	movq	$0, -8(%rbp)
LBB27_7:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_parse_base_type        ## -- Begin function parse_base_type
	.p2align	4, 0x90
_parse_base_type:                       ## @parse_base_type
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movl	$0, -12(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
	movl	$0, -36(%rbp)
	movq	$0, -48(%rbp)
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpl	$257, (%rax)            ## imm = 0x101
	jne	LBB28_4
## %bb.1:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdi
	callq	_find_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	LBB28_3
## %bb.2:
	movq	_ct@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB28_69
LBB28_3:
	jmp	LBB28_4
LBB28_4:
	jmp	LBB28_5
LBB28_5:                                ## =>This Inner Loop Header: Depth=1
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$269, (%rax)            ## imm = 0x10D
	jne	LBB28_7
## %bb.6:                               ##   in Loop: Header=BB28_5 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	LBB28_26
LBB28_7:                                ##   in Loop: Header=BB28_5 Depth=1
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$270, (%rax)            ## imm = 0x10E
	jne	LBB28_9
## %bb.8:                               ##   in Loop: Header=BB28_5 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	LBB28_25
LBB28_9:                                ##   in Loop: Header=BB28_5 Depth=1
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$271, (%rax)            ## imm = 0x10F
	jne	LBB28_11
## %bb.10:                              ##   in Loop: Header=BB28_5 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	LBB28_24
LBB28_11:                               ##   in Loop: Header=BB28_5 Depth=1
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$272, (%rax)            ## imm = 0x110
	jne	LBB28_13
## %bb.12:                              ##   in Loop: Header=BB28_5 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	LBB28_23
LBB28_13:                               ##   in Loop: Header=BB28_5 Depth=1
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$273, (%rax)            ## imm = 0x111
	jne	LBB28_15
## %bb.14:                              ##   in Loop: Header=BB28_5 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	LBB28_22
LBB28_15:                               ##   in Loop: Header=BB28_5 Depth=1
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$279, (%rax)            ## imm = 0x117
	jne	LBB28_17
## %bb.16:                              ##   in Loop: Header=BB28_5 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	LBB28_21
LBB28_17:                               ##   in Loop: Header=BB28_5 Depth=1
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$280, (%rax)            ## imm = 0x118
	jne	LBB28_19
## %bb.18:                              ##   in Loop: Header=BB28_5 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	LBB28_20
LBB28_19:
	jmp	LBB28_27
LBB28_20:                               ##   in Loop: Header=BB28_5 Depth=1
	jmp	LBB28_21
LBB28_21:                               ##   in Loop: Header=BB28_5 Depth=1
	jmp	LBB28_22
LBB28_22:                               ##   in Loop: Header=BB28_5 Depth=1
	jmp	LBB28_23
LBB28_23:                               ##   in Loop: Header=BB28_5 Depth=1
	jmp	LBB28_24
LBB28_24:                               ##   in Loop: Header=BB28_5 Depth=1
	jmp	LBB28_25
LBB28_25:                               ##   in Loop: Header=BB28_5 Depth=1
	jmp	LBB28_26
LBB28_26:                               ##   in Loop: Header=BB28_5 Depth=1
	movq	_ct@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	jmp	LBB28_5
LBB28_27:
	movl	$0, -60(%rbp)
	cmpl	$1, -12(%rbp)
	jg	LBB28_34
## %bb.28:
	cmpl	$1, -28(%rbp)
	jg	LBB28_34
## %bb.29:
	cmpl	$1, -20(%rbp)
	jg	LBB28_34
## %bb.30:
	cmpl	$1, -16(%rbp)
	jg	LBB28_34
## %bb.31:
	cmpl	$1, -32(%rbp)
	jg	LBB28_34
## %bb.32:
	cmpl	$1, -36(%rbp)
	jg	LBB28_34
## %bb.33:
	cmpl	$2, -24(%rbp)
	jle	LBB28_35
LBB28_34:
	movl	$1, -60(%rbp)
LBB28_35:
	cmpl	$0, -36(%rbp)
	je	LBB28_38
## %bb.36:
	cmpl	$0, -32(%rbp)
	je	LBB28_38
## %bb.37:
	movl	$1, -60(%rbp)
LBB28_38:
	movl	-12(%rbp), %eax
	addl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	addl	-16(%rbp), %eax
	cmpl	$1, %eax
	jle	LBB28_40
## %bb.39:
	movl	$1, -60(%rbp)
LBB28_40:
	cmpl	$0, -24(%rbp)
	je	LBB28_45
## %bb.41:
	cmpl	$0, -28(%rbp)
	jne	LBB28_44
## %bb.42:
	cmpl	$0, -20(%rbp)
	jne	LBB28_44
## %bb.43:
	cmpl	$0, -16(%rbp)
	je	LBB28_45
LBB28_44:
	movl	$1, -60(%rbp)
LBB28_45:
	cmpl	$0, -24(%rbp)
	je	LBB28_47
## %bb.46:
	movl	$6, %edi
	callq	_new_type
	movq	%rax, -48(%rbp)
	jmp	LBB28_64
LBB28_47:
	cmpl	$0, -12(%rbp)
	je	LBB28_49
## %bb.48:
	xorl	%edi, %edi
	callq	_new_type
	movq	%rax, -48(%rbp)
	jmp	LBB28_63
LBB28_49:
	cmpl	$0, -28(%rbp)
	je	LBB28_51
## %bb.50:
	movl	$2, %edi
	callq	_new_type
	movq	%rax, -48(%rbp)
	jmp	LBB28_62
LBB28_51:
	cmpl	$0, -20(%rbp)
	je	LBB28_53
## %bb.52:
	movl	$5, %edi
	callq	_new_type
	movq	%rax, -48(%rbp)
	jmp	LBB28_61
LBB28_53:
	cmpl	$0, -16(%rbp)
	je	LBB28_55
## %bb.54:
	movl	$4, %edi
	callq	_new_type
	movq	%rax, -48(%rbp)
	jmp	LBB28_60
LBB28_55:
	cmpl	$0, -36(%rbp)
	jne	LBB28_57
## %bb.56:
	cmpl	$0, -32(%rbp)
	je	LBB28_58
LBB28_57:
	xorl	%edi, %edi
	callq	_new_type
	movq	%rax, -48(%rbp)
	jmp	LBB28_59
LBB28_58:
	movl	$9, %edi
	callq	_new_type
	movq	_ct@GOTPCREL(%rip), %rcx
	movq	_tokens@GOTPCREL(%rip), %rdx
	movq	%rax, -48(%rbp)
	movslq	(%rcx), %rax
	imulq	$40, %rax, %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 2048(%rax)
	movl	(%rcx), %edi
	addl	$1, %edi
	movl	%edi, (%rcx)
LBB28_59:
	jmp	LBB28_60
LBB28_60:
	jmp	LBB28_61
LBB28_61:
	jmp	LBB28_62
LBB28_62:
	jmp	LBB28_63
LBB28_63:
	jmp	LBB28_64
LBB28_64:
	cmpq	$0, -48(%rbp)
	je	LBB28_66
## %bb.65:
	movl	-32(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, 24(%rcx)
LBB28_66:
	cmpl	$0, -60(%rbp)
	je	LBB28_68
## %bb.67:
	movq	-56(%rbp), %rdi
	leaq	L_.str.65(%rip), %rsi
	movb	$0, %al
	callq	_error_token
LBB28_68:
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
LBB28_69:
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_parse_type             ## -- Begin function parse_type
	.p2align	4, 0x90
_parse_type:                            ## @parse_type
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	callq	_parse_base_type
	movq	%rax, -8(%rbp)
LBB29_1:                                ## =>This Inner Loop Header: Depth=1
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$42, (%rax)
	jne	LBB29_3
## %bb.2:                               ##   in Loop: Header=BB29_1 Depth=1
	movl	$1, %edi
	callq	_new_type
	movq	_ct@GOTPCREL(%rip), %rcx
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	$1, (%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	(%rcx), %edi
	addl	$1, %edi
	movl	%edi, (%rcx)
	jmp	LBB29_1
LBB29_3:
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_function               ## -- Begin function function
	.p2align	4, 0x90
_function:                              ## @function
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	callq	_enter_scope
	callq	_parse_type
	movq	%rax, -8(%rbp)
	movl	$14, %edi
	callq	_new_node
	movq	_curr_func@GOTPCREL(%rip), %rcx
	movq	_ct@GOTPCREL(%rip), %rdx
	movq	%rax, -16(%rbp)
	movl	(%rdx), %edi
	addl	$1, %edi
	movl	%edi, (%rdx)
	movq	-16(%rbp), %rax
	movq	%rax, (%rcx)
	movl	$40, %edi
	callq	_skip
	movl	$0, -20(%rbp)
LBB30_1:                                ## =>This Inner Loop Header: Depth=1
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$41, (%rax)
	je	LBB30_8
## %bb.2:                               ##   in Loop: Header=BB30_1 Depth=1
	movl	$17, %edi
	callq	_new_node
	movq	-16(%rbp), %rcx
	movslq	-20(%rbp), %rdx
	movq	%rax, 960(%rcx,%rdx,8)
	callq	_parse_type
	movq	_tokens@GOTPCREL(%rip), %rcx
	movq	_ct@GOTPCREL(%rip), %rdx
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movslq	(%rdx), %rax
	imulq	$40, %rax, %rax
	addq	%rax, %rcx
	movq	16(%rcx), %rsi
	callq	_new_var
	movq	-16(%rbp), %rcx
	movslq	-20(%rbp), %rdx
	movq	960(%rcx,%rdx,8), %rcx
	movq	%rax, 8(%rcx)
	movl	$257, %edi              ## imm = 0x101
	callq	_skip
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movl	-20(%rbp), %edi
	addl	$1, %edi
	movl	%edi, -20(%rbp)
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$44, (%rax)
	jne	LBB30_4
## %bb.3:                               ##   in Loop: Header=BB30_1 Depth=1
	movq	_ct@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	jmp	LBB30_7
LBB30_4:                                ##   in Loop: Header=BB30_1 Depth=1
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$41, (%rax)
	je	LBB30_6
## %bb.5:
	jmp	LBB30_8
LBB30_6:                                ##   in Loop: Header=BB30_1 Depth=1
	jmp	LBB30_7
LBB30_7:                                ##   in Loop: Header=BB30_1 Depth=1
	jmp	LBB30_1
LBB30_8:
	movl	$41, %edi
	callq	_skip
	movl	-20(%rbp), %edi
	movq	-16(%rbp), %rax
	movl	%edi, 1764(%rax)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rdi
	movq	-8(%rbp), %rsi
	callq	_add_func
	movq	_tokens@GOTPCREL(%rip), %rsi
	movq	_ct@GOTPCREL(%rip), %rdi
	movq	-16(%rbp), %rcx
	movq	%rax, 144(%rcx)
	movslq	(%rdi), %rax
	imulq	$40, %rax, %rax
	addq	%rax, %rsi
	cmpl	$59, (%rsi)
	je	LBB30_12
## %bb.9:
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$123, (%rax)
	je	LBB30_11
## %bb.10:
	movl	$123, %edi
	callq	_skip
LBB30_11:
	callq	_statement
	movq	-16(%rbp), %rcx
	movq	%rax, 48(%rcx)
	jmp	LBB30_13
LBB30_12:
	movl	$59, %edi
	callq	_skip
LBB30_13:
	callq	_leave_scope
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_statement_or_decl      ## -- Begin function statement_or_decl
	.p2align	4, 0x90
_statement_or_decl:                     ## @statement_or_decl
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, %rdi
	callq	_is_typename
	cmpl	$0, %eax
	je	LBB31_2
## %bb.1:
	xorl	%edi, %edi
	callq	_decl
	movq	%rax, -16(%rbp)
	movl	$59, %edi
	callq	_skip
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB31_3
LBB31_2:
	callq	_statement
	movq	%rax, -8(%rbp)
LBB31_3:
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_decl                   ## -- Begin function decl
	.p2align	4, 0x90
_decl:                                  ## @decl
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movl	%edi, -4(%rbp)
	movl	$17, %edi
	callq	_new_node
	movq	%rax, -16(%rbp)
	callq	_parse_base_type
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
LBB32_1:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB32_2 Depth 2
                                        ##     Child Loop BB32_28 Depth 2
	movl	$17, %edi
	callq	_new_node
	movq	-32(%rbp), %rcx
	movq	%rax, 88(%rcx)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
LBB32_2:                                ##   Parent Loop BB32_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$42, (%rax)
	jne	LBB32_4
## %bb.3:                               ##   in Loop: Header=BB32_2 Depth=2
	movl	$1, %edi
	callq	_new_type
	movq	_ct@GOTPCREL(%rip), %rcx
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	(%rcx), %edi
	addl	$1, %edi
	movl	%edi, (%rcx)
	jmp	LBB32_2
LBB32_4:                                ##   in Loop: Header=BB32_1 Depth=1
	movq	-40(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	LBB32_7
## %bb.5:                               ##   in Loop: Header=BB32_1 Depth=1
	movq	-40(%rbp), %rax
	cmpl	$9, (%rax)
	jne	LBB32_7
## %bb.6:                               ##   in Loop: Header=BB32_1 Depth=1
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, %rdi
	leaq	L_.str.62(%rip), %rsi
	movb	$0, %al
	callq	_error_token
LBB32_7:                                ##   in Loop: Header=BB32_1 Depth=1
	movq	-40(%rbp), %rax
	cmpl	$2, (%rax)
	jne	LBB32_10
## %bb.8:                               ##   in Loop: Header=BB32_1 Depth=1
	movq	-40(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	LBB32_10
## %bb.9:                               ##   in Loop: Header=BB32_1 Depth=1
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, %rdi
	leaq	L_.str.66(%rip), %rsi
	movb	$0, %al
	callq	_error_token
LBB32_10:                               ##   in Loop: Header=BB32_1 Depth=1
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$257, (%rax)            ## imm = 0x101
	je	LBB32_12
## %bb.11:                              ##   in Loop: Header=BB32_1 Depth=1
	movl	$257, %edi              ## imm = 0x101
	callq	_skip
LBB32_12:                               ##   in Loop: Header=BB32_1 Depth=1
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movl	(%rcx), %edx
	addl	$1, %edx
	movslq	%edx, %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$91, (%rax)
	jne	LBB32_17
## %bb.13:                              ##   in Loop: Header=BB32_1 Depth=1
	movl	$3, %edi
	callq	_new_type
	movq	_tokens@GOTPCREL(%rip), %rcx
	movq	_ct@GOTPCREL(%rip), %rdx
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	-64(%rbp), %rsi
	movq	%rax, 8(%rsi)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movl	20(%rax), %edi
	movq	-64(%rbp), %rax
	movl	%edi, 20(%rax)
	movl	(%rdx), %edi
	addl	$2, %edi
	movslq	%edi, %rax
	imulq	$40, %rax, %rax
	addq	%rax, %rcx
	movq	8(%rcx), %rax
	movl	%eax, %edi
	movq	-64(%rbp), %rax
	movl	%edi, 16(%rax)
	movq	-64(%rbp), %rax
	movq	%rax, -40(%rbp)
	cmpl	$0, -4(%rbp)
	je	LBB32_15
## %bb.14:                              ##   in Loop: Header=BB32_1 Depth=1
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movq	_vars@GOTPCREL(%rip), %rdx
	movl	_var_count(%rip), %esi
	movl	%esi, %edi
	addl	$1, %edi
	movl	%edi, _var_count(%rip)
	movslq	%esi, %r8
	imulq	$48, %r8, %r8
	addq	%r8, %rdx
	movq	%rdx, -56(%rbp)
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movq	16(%rax), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	LBB32_16
LBB32_15:                               ##   in Loop: Header=BB32_1 Depth=1
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movq	-40(%rbp), %rdi
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movq	16(%rax), %rsi
	callq	_new_var
	movq	%rax, -56(%rbp)
LBB32_16:                               ##   in Loop: Header=BB32_1 Depth=1
	movq	_ct@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	addl	$2, %ecx
	movl	%ecx, (%rax)
	movl	$256, %edi              ## imm = 0x100
	callq	_skip
	movl	$93, %edi
	callq	_skip
	jmp	LBB32_21
LBB32_17:                               ##   in Loop: Header=BB32_1 Depth=1
	cmpl	$0, -4(%rbp)
	je	LBB32_19
## %bb.18:                              ##   in Loop: Header=BB32_1 Depth=1
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movq	_vars@GOTPCREL(%rip), %rdx
	movl	_var_count(%rip), %esi
	movl	%esi, %edi
	addl	$1, %edi
	movl	%edi, _var_count(%rip)
	movslq	%esi, %r8
	imulq	$48, %r8, %r8
	addq	%r8, %rdx
	movq	%rdx, -56(%rbp)
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movq	16(%rax), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	LBB32_20
LBB32_19:                               ##   in Loop: Header=BB32_1 Depth=1
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movq	-40(%rbp), %rdi
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movq	16(%rax), %rsi
	callq	_new_var
	movq	%rax, -56(%rbp)
LBB32_20:                               ##   in Loop: Header=BB32_1 Depth=1
	movq	_ct@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
LBB32_21:                               ##   in Loop: Header=BB32_1 Depth=1
	movq	_curr_scope@GOTPCREL(%rip), %rax
	movq	-32(%rbp), %rcx
	movq	88(%rcx), %rcx
	movq	-56(%rbp), %rdx
	movq	%rcx, 40(%rdx)
	movq	(%rax), %rax
	cmpq	$0, (%rax)
	jne	LBB32_23
## %bb.22:                              ##   in Loop: Header=BB32_1 Depth=1
	movq	-56(%rbp), %rax
	movl	$1, 32(%rax)
LBB32_23:                               ##   in Loop: Header=BB32_1 Depth=1
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movq	-56(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	88(%rsi), %rsi
	movq	%rdx, 8(%rsi)
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$61, (%rax)
	jne	LBB32_56
## %bb.24:                              ##   in Loop: Header=BB32_1 Depth=1
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movl	(%rcx), %edx
	addl	$1, %edx
	movslq	%edx, %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$123, (%rax)
	jne	LBB32_54
## %bb.25:                              ##   in Loop: Header=BB32_1 Depth=1
	movq	-40(%rbp), %rax
	cmpl	$3, (%rax)
	je	LBB32_27
## %bb.26:                              ##   in Loop: Header=BB32_1 Depth=1
	movq	-56(%rbp), %rax
	movq	24(%rax), %rdi
	leaq	L_.str.67(%rip), %rsi
	movb	$0, %al
	callq	_error_token
LBB32_27:                               ##   in Loop: Header=BB32_1 Depth=1
	movq	_ct@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	addl	$2, %ecx
	movl	%ecx, (%rax)
	movl	$0, -68(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movl	$0, -92(%rbp)
LBB32_28:                               ##   Parent Loop BB32_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$125, (%rax)
	jne	LBB32_30
## %bb.29:                              ##   in Loop: Header=BB32_28 Depth=2
	movl	$1, -68(%rbp)
LBB32_30:                               ##   in Loop: Header=BB32_28 Depth=2
	cmpl	$0, -68(%rbp)
	je	LBB32_33
## %bb.31:                              ##   in Loop: Header=BB32_28 Depth=2
	movl	-92(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	16(%rcx), %eax
	jl	LBB32_33
## %bb.32:                              ##   in Loop: Header=BB32_1 Depth=1
	jmp	LBB32_53
LBB32_33:                               ##   in Loop: Header=BB32_28 Depth=2
	movl	-92(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	16(%rcx), %eax
	jl	LBB32_40
## %bb.34:                              ##   in Loop: Header=BB32_28 Depth=2
	callq	_assign
	movq	_tokens@GOTPCREL(%rip), %rcx
	movq	_ct@GOTPCREL(%rip), %rdx
	movslq	(%rdx), %rdx
	imulq	$40, %rdx, %rdx
	addq	%rdx, %rcx
	cmpl	$44, (%rcx)
	movq	%rax, -136(%rbp)        ## 8-byte Spill
	jne	LBB32_36
## %bb.35:                              ##   in Loop: Header=BB32_28 Depth=2
	movq	_ct@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	jmp	LBB32_39
LBB32_36:                               ##   in Loop: Header=BB32_28 Depth=2
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$125, (%rax)
	je	LBB32_38
## %bb.37:                              ##   in Loop: Header=BB32_28 Depth=2
	movl	$125, %edi
	callq	_skip
LBB32_38:                               ##   in Loop: Header=BB32_28 Depth=2
	jmp	LBB32_39
LBB32_39:                               ##   in Loop: Header=BB32_28 Depth=2
	jmp	LBB32_52
LBB32_40:                               ##   in Loop: Header=BB32_28 Depth=2
	cmpl	$0, -68(%rbp)
	je	LBB32_42
## %bb.41:                              ##   in Loop: Header=BB32_28 Depth=2
	movl	$3, %edi
	callq	_new_node
	movq	%rax, -104(%rbp)
	movl	$256, %edi              ## imm = 0x100
	callq	_new_temp_token
	movq	-104(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-104(%rbp), %rax
	movq	16(%rax), %rax
	movq	$0, 8(%rax)
	jmp	LBB32_43
LBB32_42:                               ##   in Loop: Header=BB32_28 Depth=2
	callq	_assign
	movq	%rax, -104(%rbp)
LBB32_43:                               ##   in Loop: Header=BB32_28 Depth=2
	movl	$4, %edi
	callq	_new_node
	movq	%rax, -112(%rbp)
	movl	$43, %edi
	callq	_new_temp_token
	movq	-112(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movl	$2, %edi
	callq	_new_node
	movq	-112(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-56(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	24(%rcx), %rcx
	movq	%rax, 8(%rcx)
	movl	$3, %edi
	callq	_new_node
	movq	-112(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movl	$269, %edi              ## imm = 0x10D
	callq	_new_temp_token
	movq	-112(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rax, 16(%rcx)
	movslq	-92(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	16(%rcx), %rcx
	movq	%rax, 8(%rcx)
	movl	$15, %edi
	callq	_new_node
	movq	%rax, -120(%rbp)
	movl	$42, %edi
	callq	_new_temp_token
	movq	-120(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-112(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movl	$5, %edi
	callq	_new_node
	movq	%rax, -128(%rbp)
	movl	$61, %edi
	callq	_new_temp_token
	movq	-128(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-120(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-104(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	%rax, 32(%rcx)
	cmpq	$0, -88(%rbp)
	jne	LBB32_45
## %bb.44:                              ##   in Loop: Header=BB32_28 Depth=2
	movq	-128(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -80(%rbp)
	jmp	LBB32_46
LBB32_45:                               ##   in Loop: Header=BB32_28 Depth=2
	movq	-128(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, 104(%rcx)
	movq	-88(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -88(%rbp)
LBB32_46:                               ##   in Loop: Header=BB32_28 Depth=2
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$44, (%rax)
	jne	LBB32_48
## %bb.47:                              ##   in Loop: Header=BB32_28 Depth=2
	movq	_ct@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	jmp	LBB32_51
LBB32_48:                               ##   in Loop: Header=BB32_28 Depth=2
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$125, (%rax)
	je	LBB32_50
## %bb.49:                              ##   in Loop: Header=BB32_28 Depth=2
	movl	$125, %edi
	callq	_skip
LBB32_50:                               ##   in Loop: Header=BB32_28 Depth=2
	jmp	LBB32_51
LBB32_51:                               ##   in Loop: Header=BB32_28 Depth=2
	jmp	LBB32_52
LBB32_52:                               ##   in Loop: Header=BB32_28 Depth=2
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	LBB32_28
LBB32_53:                               ##   in Loop: Header=BB32_1 Depth=1
	movl	$125, %edi
	callq	_skip
	movq	-80(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	88(%rcx), %rcx
	movq	%rax, 24(%rcx)
	jmp	LBB32_55
LBB32_54:                               ##   in Loop: Header=BB32_1 Depth=1
	movq	_ct@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, (%rax)
	callq	_assign
	movq	-32(%rbp), %rdx
	movq	88(%rdx), %rdx
	movq	%rax, 24(%rdx)
LBB32_55:                               ##   in Loop: Header=BB32_1 Depth=1
	movq	-32(%rbp), %rax
	movq	88(%rax), %rax
	movq	24(%rax), %rdi
	callq	_add_type
	movq	%rax, -144(%rbp)        ## 8-byte Spill
LBB32_56:                               ##   in Loop: Header=BB32_1 Depth=1
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$44, (%rax)
	je	LBB32_58
## %bb.57:
	jmp	LBB32_59
LBB32_58:                               ##   in Loop: Header=BB32_1 Depth=1
	movq	_ct@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	movq	-32(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	LBB32_1
LBB32_59:
	movq	-16(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_statement              ## -- Begin function statement
	.p2align	4, 0x90
_statement:                             ## @statement
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movq	$0, -8(%rbp)
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$264, (%rax)            ## imm = 0x108
	jne	LBB33_5
## %bb.1:
	movl	$7, %edi
	callq	_new_node
	movq	_tokens@GOTPCREL(%rip), %rcx
	movq	_ct@GOTPCREL(%rip), %rdx
	movq	%rax, -8(%rbp)
	movl	(%rdx), %edi
	addl	$1, %edi
	movl	%edi, (%rdx)
	movslq	(%rdx), %rax
	imulq	$40, %rax, %rax
	addq	%rax, %rcx
	cmpl	$59, (%rcx)
	je	LBB33_3
## %bb.2:
	callq	_expr
	movq	-8(%rbp), %rcx
	movq	%rax, 24(%rcx)
	jmp	LBB33_4
LBB33_3:
	xorl	%edi, %edi
	callq	_new_node
	movq	-8(%rbp), %rcx
	movq	%rax, 24(%rcx)
LBB33_4:
	movl	$59, %edi
	callq	_skip
	jmp	LBB33_49
LBB33_5:
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$278, (%rax)            ## imm = 0x116
	jne	LBB33_7
## %bb.6:
	movl	$19, %edi
	callq	_new_node
	movq	_ct@GOTPCREL(%rip), %rcx
	movq	%rax, -8(%rbp)
	movl	(%rcx), %edi
	addl	$1, %edi
	movl	%edi, (%rcx)
	movl	$59, %edi
	callq	_skip
	jmp	LBB33_48
LBB33_7:
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$277, (%rax)            ## imm = 0x115
	jne	LBB33_9
## %bb.8:
	movl	$20, %edi
	callq	_new_node
	movq	_ct@GOTPCREL(%rip), %rcx
	movq	%rax, -8(%rbp)
	movl	(%rcx), %edi
	addl	$1, %edi
	movl	%edi, (%rcx)
	movl	$59, %edi
	callq	_skip
	jmp	LBB33_47
LBB33_9:
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$265, (%rax)            ## imm = 0x109
	jne	LBB33_13
## %bb.10:
	movl	$8, %edi
	callq	_new_node
	movq	_ct@GOTPCREL(%rip), %rcx
	movq	%rax, -8(%rbp)
	movl	(%rcx), %edi
	addl	$1, %edi
	movl	%edi, (%rcx)
	movl	$40, %edi
	callq	_skip
	callq	_expr
	movq	-8(%rbp), %rcx
	movq	%rax, 56(%rcx)
	movl	$41, %edi
	callq	_skip
	callq	_statement
	movq	_tokens@GOTPCREL(%rip), %rcx
	movq	_ct@GOTPCREL(%rip), %rdx
	movq	-8(%rbp), %rsi
	movq	%rax, 48(%rsi)
	movslq	(%rdx), %rax
	imulq	$40, %rax, %rax
	addq	%rax, %rcx
	cmpl	$266, (%rcx)            ## imm = 0x10A
	jne	LBB33_12
## %bb.11:
	movq	_ct@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	callq	_statement
	movq	-8(%rbp), %rdx
	movq	%rax, 128(%rdx)
LBB33_12:
	jmp	LBB33_46
LBB33_13:
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$267, (%rax)            ## imm = 0x10B
	jne	LBB33_15
## %bb.14:
	movl	$9, %edi
	callq	_new_node
	movq	_ct@GOTPCREL(%rip), %rcx
	movq	%rax, -8(%rbp)
	movl	(%rcx), %edi
	addl	$1, %edi
	movl	%edi, (%rcx)
	movl	$40, %edi
	callq	_skip
	callq	_expr
	movq	-8(%rbp), %rcx
	movq	%rax, 56(%rcx)
	movl	$41, %edi
	callq	_skip
	callq	_statement
	movq	-8(%rbp), %rcx
	movq	%rax, 48(%rcx)
	jmp	LBB33_45
LBB33_15:
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$268, (%rax)            ## imm = 0x10C
	jne	LBB33_26
## %bb.16:
	callq	_enter_scope
	movl	$10, %edi
	callq	_new_node
	movq	_ct@GOTPCREL(%rip), %rcx
	movq	%rax, -8(%rbp)
	movl	(%rcx), %edi
	addl	$1, %edi
	movl	%edi, (%rcx)
	movl	$40, %edi
	callq	_skip
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$59, (%rax)
	je	LBB33_21
## %bb.17:
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, %rdi
	callq	_is_typename
	cmpl	$0, %eax
	je	LBB33_19
## %bb.18:
	xorl	%edi, %edi
	callq	_decl
	movq	-8(%rbp), %rcx
	movq	%rax, 64(%rcx)
	jmp	LBB33_20
LBB33_19:
	callq	_expr
	movq	-8(%rbp), %rcx
	movq	%rax, 64(%rcx)
LBB33_20:
	jmp	LBB33_21
LBB33_21:
	movl	$59, %edi
	callq	_skip
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$59, (%rax)
	je	LBB33_23
## %bb.22:
	callq	_expr
	movq	-8(%rbp), %rcx
	movq	%rax, 56(%rcx)
LBB33_23:
	movl	$59, %edi
	callq	_skip
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$41, (%rax)
	je	LBB33_25
## %bb.24:
	callq	_expr
	movq	-8(%rbp), %rcx
	movq	%rax, 72(%rcx)
LBB33_25:
	movl	$41, %edi
	callq	_skip
	callq	_statement
	movq	-8(%rbp), %rcx
	movq	%rax, 48(%rcx)
	callq	_leave_scope
	jmp	LBB33_44
LBB33_26:
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$123, (%rax)
	jne	LBB33_39
## %bb.27:
	movl	$11, %edi
	callq	_new_node
	movq	_ct@GOTPCREL(%rip), %rcx
	movq	%rax, -8(%rbp)
	movl	(%rcx), %edi
	addl	$1, %edi
	movl	%edi, (%rcx)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	_enter_scope
LBB33_28:                               ## =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	_tokens@GOTPCREL(%rip), %rdx
	movq	_ct@GOTPCREL(%rip), %rsi
	movslq	(%rsi), %rsi
	imulq	$40, %rsi, %rsi
	addq	%rsi, %rdx
	cmpl	$125, (%rdx)
	movb	%cl, -17(%rbp)          ## 1-byte Spill
	je	LBB33_30
## %bb.29:                              ##   in Loop: Header=BB33_28 Depth=1
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$0, (%rax)
	setne	%dl
	movb	%dl, -17(%rbp)          ## 1-byte Spill
LBB33_30:                               ##   in Loop: Header=BB33_28 Depth=1
	movb	-17(%rbp), %al          ## 1-byte Reload
	testb	$1, %al
	jne	LBB33_31
	jmp	LBB33_38
LBB33_31:                               ##   in Loop: Header=BB33_28 Depth=1
	callq	_statement_or_decl
	movq	-16(%rbp), %rcx
	movq	%rax, 80(%rcx)
	movq	-16(%rbp), %rax
	cmpq	$0, 80(%rax)
	setne	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rax
	cmpq	$0, %rax
	je	LBB33_33
## %bb.32:
	leaq	L___func__.statement(%rip), %rdi
	leaq	L_.str.42(%rip), %rsi
	leaq	L_.str.68(%rip), %rcx
	movl	$913, %edx              ## imm = 0x391
	callq	___assert_rtn
LBB33_33:                               ##   in Loop: Header=BB33_28 Depth=1
	jmp	LBB33_34
LBB33_34:                               ##   in Loop: Header=BB33_28 Depth=1
	movq	-16(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rax
	cmpq	$0, %rax
	je	LBB33_36
## %bb.35:
	leaq	L___func__.statement(%rip), %rdi
	leaq	L_.str.42(%rip), %rsi
	leaq	L_.str.69(%rip), %rcx
	movl	$915, %edx              ## imm = 0x393
	callq	___assert_rtn
LBB33_36:                               ##   in Loop: Header=BB33_28 Depth=1
	jmp	LBB33_37
LBB33_37:                               ##   in Loop: Header=BB33_28 Depth=1
	jmp	LBB33_28
LBB33_38:
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 96(%rcx)
	movq	-8(%rbp), %rax
	movq	$0, 80(%rax)
	callq	_leave_scope
	movq	-16(%rbp), %rax
	movq	$0, 80(%rax)
	movl	$125, %edi
	callq	_skip
	jmp	LBB33_43
LBB33_39:
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$59, (%rax)
	je	LBB33_41
## %bb.40:
	callq	_expr
	movq	%rax, -8(%rbp)
	jmp	LBB33_42
LBB33_41:
	xorl	%edi, %edi
	callq	_new_node
	movq	%rax, -8(%rbp)
LBB33_42:
	movl	$59, %edi
	callq	_skip
LBB33_43:
	jmp	LBB33_44
LBB33_44:
	jmp	LBB33_45
LBB33_45:
	jmp	LBB33_46
LBB33_46:
	jmp	LBB33_47
LBB33_47:
	jmp	LBB33_48
LBB33_48:
	jmp	LBB33_49
LBB33_49:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_expr                   ## -- Begin function expr
	.p2align	4, 0x90
_expr:                                  ## @expr
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	callq	_assign
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
LBB34_1:                                ## =>This Inner Loop Header: Depth=1
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$44, (%rax)
	jne	LBB34_3
## %bb.2:                               ##   in Loop: Header=BB34_1 Depth=1
	movq	_ct@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	callq	_assign
	movq	-16(%rbp), %rdx
	movq	%rax, 104(%rdx)
	movq	-16(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	LBB34_1
LBB34_3:
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_assign                 ## -- Begin function assign
	.p2align	4, 0x90
_assign:                                ## @assign
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	callq	_conditional
	movq	_tokens@GOTPCREL(%rip), %rcx
	movq	_ct@GOTPCREL(%rip), %rdx
	movq	%rax, -16(%rbp)
	movslq	(%rdx), %rax
	imulq	$40, %rax, %rax
	addq	%rax, %rcx
	movl	(%rcx), %edi
	movl	$61, %esi
	movl	$282, %edx              ## imm = 0x11A
	movl	$283, %ecx              ## imm = 0x11B
	movl	$285, %r8d              ## imm = 0x11D
	movl	$284, %r9d              ## imm = 0x11C
	movl	$-1, (%rsp)
	movb	$0, %al
	callq	_type_match
	cmpl	$0, %eax
	je	LBB35_9
## %bb.1:
	movq	-16(%rbp), %rdi
	callq	_add_type
	movq	-16(%rbp), %rdi
	cmpl	$2, (%rdi)
	movq	%rax, -40(%rbp)         ## 8-byte Spill
	je	LBB35_3
## %bb.2:
	movq	-16(%rbp), %rax
	cmpl	$15, (%rax)
	jne	LBB35_5
LBB35_3:
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	cmpl	$3, (%rax)
	je	LBB35_5
## %bb.4:
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	cmpl	$2, (%rax)
	jne	LBB35_6
LBB35_5:
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, %rdi
	leaq	L_.str.70(%rip), %rsi
	movb	$0, %al
	callq	_error_token
LBB35_6:
	movl	$5, %edi
	callq	_new_node
	movq	_ct@GOTPCREL(%rip), %rcx
	movq	%rax, -24(%rbp)
	movl	(%rcx), %edi
	addl	$1, %edi
	movl	%edi, (%rcx)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 24(%rcx)
	callq	_assign
	movq	-24(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	cmpl	$61, (%rax)
	je	LBB35_8
## %bb.7:
	movl	$4, %edi
	callq	_new_node
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	movsbl	(%rax), %edi
	callq	_new_temp_token
	movq	-32(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 32(%rcx)
LBB35_8:
	movq	-24(%rbp), %rdi
	callq	_add_type
	movq	-24(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	movq	%rax, -48(%rbp)         ## 8-byte Spill
	jmp	LBB35_10
LBB35_9:
	movq	-16(%rbp), %rdi
	callq	_add_type
	movq	-16(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	movq	%rax, -56(%rbp)         ## 8-byte Spill
LBB35_10:
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_conditional            ## -- Begin function conditional
	.p2align	4, 0x90
_conditional:                           ## @conditional
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	callq	_logical_or
	movq	_tokens@GOTPCREL(%rip), %rcx
	movq	_ct@GOTPCREL(%rip), %rdx
	movq	%rax, -16(%rbp)
	movslq	(%rdx), %rax
	imulq	$40, %rax, %rax
	addq	%rax, %rcx
	cmpl	$63, (%rcx)
	jne	LBB36_2
## %bb.1:
	movl	$22, %edi
	callq	_new_node
	movq	_ct@GOTPCREL(%rip), %rcx
	movq	%rax, -24(%rbp)
	movl	(%rcx), %edi
	addl	$1, %edi
	movl	%edi, (%rcx)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 56(%rcx)
	callq	_expr
	movq	-24(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movl	$58, %edi
	callq	_skip
	callq	_conditional
	movq	-24(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB36_3
LBB36_2:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
LBB36_3:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_logical_or             ## -- Begin function logical_or
	.p2align	4, 0x90
_logical_or:                            ## @logical_or
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	_logical_and(%rip), %rax
	movq	%rax, %rdi
	movl	$259, %esi              ## imm = 0x103
	movl	$4294967295, %edx       ## imm = 0xFFFFFFFF
	movb	$0, %al
	callq	_binary
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_logical_and            ## -- Begin function logical_and
	.p2align	4, 0x90
_logical_and:                           ## @logical_and
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	_equality(%rip), %rax
	movq	%rax, %rdi
	movl	$258, %esi              ## imm = 0x102
	movl	$4294967295, %edx       ## imm = 0xFFFFFFFF
	movb	$0, %al
	callq	_binary
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_equality               ## -- Begin function equality
	.p2align	4, 0x90
_equality:                              ## @equality
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	_relational(%rip), %rax
	movq	%rax, %rdi
	movl	$260, %esi              ## imm = 0x104
	movl	$261, %edx              ## imm = 0x105
	movl	$4294967295, %ecx       ## imm = 0xFFFFFFFF
	movb	$0, %al
	callq	_binary
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_relational             ## -- Begin function relational
	.p2align	4, 0x90
_relational:                            ## @relational
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	_add(%rip), %rax
	movq	%rax, %rdi
	movl	$60, %esi
	movl	$62, %edx
	movl	$262, %ecx              ## imm = 0x106
	movl	$263, %r8d              ## imm = 0x107
	movl	$4294967295, %r9d       ## imm = 0xFFFFFFFF
	movb	$0, %al
	callq	_binary
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_add                    ## -- Begin function add
	.p2align	4, 0x90
_add:                                   ## @add
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	_mul(%rip), %rax
	movq	%rax, %rdi
	movl	$43, %esi
	movl	$45, %edx
	movl	$4294967295, %ecx       ## imm = 0xFFFFFFFF
	movb	$0, %al
	callq	_binary
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_mul                    ## -- Begin function mul
	.p2align	4, 0x90
_mul:                                   ## @mul
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	_cast(%rip), %rax
	movq	%rax, %rdi
	movl	$42, %esi
	movl	$47, %edx
	movl	$37, %ecx
	movl	$4294967295, %r8d       ## imm = 0xFFFFFFFF
	movb	$0, %al
	callq	_binary
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_cast                   ## -- Begin function cast
	.p2align	4, 0x90
_cast:                                  ## @cast
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$40, (%rax)
	jne	LBB43_3
## %bb.1:
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movl	(%rcx), %edx
	addl	$1, %edx
	movslq	%edx, %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, %rdi
	callq	_is_typename
	cmpl	$0, %eax
	je	LBB43_3
## %bb.2:
	movl	$21, %edi
	callq	_new_node
	movq	_ct@GOTPCREL(%rip), %rcx
	movq	%rax, -16(%rbp)
	movl	(%rcx), %edi
	addl	$1, %edi
	movl	%edi, (%rcx)
	callq	_parse_type
	movq	-16(%rbp), %rcx
	movq	%rax, 112(%rcx)
	movl	$41, %edi
	callq	_skip
	callq	_cast
	movq	-16(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB43_4
LBB43_3:
	callq	_unary
	movq	%rax, -8(%rbp)
LBB43_4:
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_unary                  ## -- Begin function unary
	.p2align	4, 0x90
_unary:                                 ## @unary
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$43, (%rax)
	jne	LBB44_2
## %bb.1:
	movq	_ct@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	callq	_cast
	movq	%rax, -8(%rbp)
	jmp	LBB44_32
LBB44_2:
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$45, (%rax)
	jne	LBB44_4
## %bb.3:
	movl	$6, %edi
	callq	_new_node
	movq	_ct@GOTPCREL(%rip), %rcx
	movq	%rax, -16(%rbp)
	movl	(%rcx), %edi
	addl	$1, %edi
	movl	%edi, (%rcx)
	callq	_cast
	movq	-16(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB44_32
LBB44_4:
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$38, (%rax)
	jne	LBB44_6
## %bb.5:
	movl	$16, %edi
	callq	_new_node
	movq	_ct@GOTPCREL(%rip), %rcx
	movq	%rax, -24(%rbp)
	movl	(%rcx), %edi
	addl	$1, %edi
	movl	%edi, (%rcx)
	callq	_cast
	movq	-24(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB44_32
LBB44_6:
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$42, (%rax)
	jne	LBB44_8
## %bb.7:
	movl	$15, %edi
	callq	_new_node
	movq	_ct@GOTPCREL(%rip), %rcx
	movq	%rax, -32(%rbp)
	movl	(%rcx), %edi
	addl	$1, %edi
	movl	%edi, (%rcx)
	callq	_cast
	movq	-32(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB44_32
LBB44_8:
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$33, (%rax)
	jne	LBB44_10
## %bb.9:
	movl	$13, %edi
	callq	_new_node
	movq	_ct@GOTPCREL(%rip), %rcx
	movq	%rax, -40(%rbp)
	movl	(%rcx), %edi
	addl	$1, %edi
	movl	%edi, (%rcx)
	callq	_cast
	movq	-40(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB44_32
LBB44_10:
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$281, (%rax)            ## imm = 0x119
	jne	LBB44_22
## %bb.11:
	movl	$3, %edi
	callq	_new_node
	movq	%rax, -48(%rbp)
	movl	$256, %edi              ## imm = 0x100
	callq	_new_temp_token
	movq	_tokens@GOTPCREL(%rip), %rcx
	movq	_ct@GOTPCREL(%rip), %rdx
	movq	-48(%rbp), %rsi
	movq	%rax, 16(%rsi)
	movl	(%rdx), %edi
	addl	$1, %edi
	movl	%edi, (%rdx)
	movq	$0, -56(%rbp)
	movslq	(%rdx), %rax
	imulq	$40, %rax, %rax
	addq	%rax, %rcx
	cmpl	$40, (%rcx)
	jne	LBB44_14
## %bb.12:
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movl	(%rcx), %edx
	addl	$1, %edx
	movslq	%edx, %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, %rdi
	callq	_is_typename
	cmpl	$0, %eax
	je	LBB44_14
## %bb.13:
	movq	_ct@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	callq	_parse_type
	movq	%rax, -56(%rbp)
	movl	$41, %edi
	callq	_skip
	jmp	LBB44_15
LBB44_14:
	callq	_unary
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	_add_type
	movq	%rax, -56(%rbp)
LBB44_15:
	cmpq	$0, -56(%rbp)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %ecx
	movslq	%ecx, %rdx
	cmpq	$0, %rdx
	je	LBB44_17
## %bb.16:
	leaq	L___func__.unary(%rip), %rdi
	leaq	L_.str.42(%rip), %rsi
	leaq	L_.str.71(%rip), %rcx
	movl	$1090, %edx             ## imm = 0x442
	callq	___assert_rtn
LBB44_17:
	jmp	LBB44_18
LBB44_18:
	movq	-56(%rbp), %rax
	cmpl	$3, (%rax)
	jne	LBB44_20
## %bb.19:
	movq	-56(%rbp), %rax
	movl	20(%rax), %ecx
	movq	-56(%rbp), %rax
	imull	16(%rax), %ecx
	movslq	%ecx, %rax
	movq	-48(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	%rax, 8(%rdx)
	jmp	LBB44_21
LBB44_20:
	movq	-56(%rbp), %rax
	movslq	20(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rax, 8(%rcx)
LBB44_21:
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB44_32
LBB44_22:
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$275, (%rax)            ## imm = 0x113
	je	LBB44_24
## %bb.23:
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$276, (%rax)            ## imm = 0x114
	jne	LBB44_25
LBB44_24:
	movl	$4, %edi
	callq	_new_node
	movq	_ct@GOTPCREL(%rip), %rcx
	movq	_tokens@GOTPCREL(%rip), %rdx
	movq	%rax, -72(%rbp)
	movslq	(%rcx), %rax
	imulq	$40, %rax, %rax
	addq	%rax, %rdx
	movl	(%rdx), %edi
	cmpl	$275, %edi              ## imm = 0x113
	movl	$43, %edi
	movl	$45, %esi
	cmovel	%edi, %esi
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movl	%esi, (%rax)
	movl	(%rcx), %esi
	addl	$1, %esi
	movl	%esi, (%rcx)
	callq	_unary
	movq	-72(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movl	$3, %edi
	callq	_new_node
	movq	-72(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movl	$256, %edi              ## imm = 0x100
	callq	_new_temp_token
	movq	-72(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rax, 16(%rcx)
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rax
	movq	$1, 8(%rax)
	movl	$5, %edi
	callq	_new_node
	movq	%rax, -80(%rbp)
	movl	$61, %edi
	callq	_new_temp_token
	movq	-80(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-72(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-80(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB44_32
LBB44_25:
	jmp	LBB44_26
LBB44_26:
	jmp	LBB44_27
LBB44_27:
	jmp	LBB44_28
LBB44_28:
	jmp	LBB44_29
LBB44_29:
	jmp	LBB44_30
LBB44_30:
	jmp	LBB44_31
LBB44_31:
	callq	_postfix
	movq	%rax, -8(%rbp)
LBB44_32:
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_postfix                ## -- Begin function postfix
	.p2align	4, 0x90
_postfix:                               ## @postfix
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	callq	_primary
	movq	%rax, -8(%rbp)
LBB45_1:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB45_26 Depth 2
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$91, (%rax)
	jne	LBB45_3
## %bb.2:                               ##   in Loop: Header=BB45_1 Depth=1
	movq	_ct@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	callq	_expr
	movq	%rax, -16(%rbp)
	movl	$93, %edi
	callq	_skip
	movl	$4, %edi
	callq	_new_node
	movq	%rax, -24(%rbp)
	movl	$43, %edi
	callq	_new_temp_token
	movq	-24(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movl	$15, %edi
	callq	_new_node
	movq	%rax, -32(%rbp)
	movl	$42, %edi
	callq	_new_temp_token
	movq	-32(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB45_42
LBB45_3:                                ##   in Loop: Header=BB45_1 Depth=1
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$275, (%rax)            ## imm = 0x113
	je	LBB45_5
## %bb.4:                               ##   in Loop: Header=BB45_1 Depth=1
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$276, (%rax)            ## imm = 0x114
	jne	LBB45_6
LBB45_5:                                ##   in Loop: Header=BB45_1 Depth=1
	movl	$13, %edi
	callq	_new_node
	movq	_ct@GOTPCREL(%rip), %rcx
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	(%rcx), %edi
	addl	$1, %edi
	movl	%edi, (%rcx)
	jmp	LBB45_41
LBB45_6:                                ##   in Loop: Header=BB45_1 Depth=1
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$46, (%rax)
	je	LBB45_8
## %bb.7:                               ##   in Loop: Header=BB45_1 Depth=1
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$288, (%rax)            ## imm = 0x120
	jne	LBB45_39
LBB45_8:                                ##   in Loop: Header=BB45_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	_add_type
	movq	_tokens@GOTPCREL(%rip), %rdi
	movq	_ct@GOTPCREL(%rip), %rcx
	movq	%rax, -48(%rbp)
	movslq	(%rcx), %rax
	imulq	$40, %rax, %rax
	addq	%rax, %rdi
	cmpl	$288, (%rdi)            ## imm = 0x120
	jne	LBB45_21
## %bb.9:                               ##   in Loop: Header=BB45_1 Depth=1
	movq	-48(%rbp), %rax
	cmpl	$1, (%rax)
	jne	LBB45_11
## %bb.10:                              ##   in Loop: Header=BB45_1 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	cmpl	$7, (%rax)
	je	LBB45_21
LBB45_11:                               ##   in Loop: Header=BB45_1 Depth=1
	movq	-48(%rbp), %rax
	cmpl	$1, (%rax)
	sete	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rax
	cmpq	$0, %rax
	je	LBB45_13
## %bb.12:
	leaq	L___func__.postfix(%rip), %rdi
	leaq	L_.str.42(%rip), %rsi
	leaq	L_.str.72(%rip), %rcx
	movl	$1148, %edx             ## imm = 0x47C
	callq	___assert_rtn
LBB45_13:                               ##   in Loop: Header=BB45_1 Depth=1
	jmp	LBB45_14
LBB45_14:                               ##   in Loop: Header=BB45_1 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	cmpl	$9, (%rax)
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rax
	cmpq	$0, %rax
	je	LBB45_16
## %bb.15:
	leaq	L___func__.postfix(%rip), %rdi
	leaq	L_.str.42(%rip), %rsi
	leaq	L_.str.73(%rip), %rcx
	movl	$1149, %edx             ## imm = 0x47D
	callq	___assert_rtn
LBB45_16:                               ##   in Loop: Header=BB45_1 Depth=1
	jmp	LBB45_17
LBB45_17:                               ##   in Loop: Header=BB45_1 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	cmpl	$7, (%rax)
	sete	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rax
	cmpq	$0, %rax
	je	LBB45_19
## %bb.18:
	leaq	L___func__.postfix(%rip), %rdi
	leaq	L_.str.42(%rip), %rsi
	leaq	L_.str.74(%rip), %rcx
	movl	$1150, %edx             ## imm = 0x47E
	callq	___assert_rtn
LBB45_19:                               ##   in Loop: Header=BB45_1 Depth=1
	jmp	LBB45_20
LBB45_20:                               ##   in Loop: Header=BB45_1 Depth=1
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, %rdi
	leaq	L_.str.75(%rip), %rsi
	movb	$0, %al
	callq	_error_token
LBB45_21:                               ##   in Loop: Header=BB45_1 Depth=1
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$288, (%rax)            ## imm = 0x120
	jne	LBB45_23
## %bb.22:                              ##   in Loop: Header=BB45_1 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
LBB45_23:                               ##   in Loop: Header=BB45_1 Depth=1
	movq	-48(%rbp), %rax
	cmpl	$7, (%rax)
	je	LBB45_25
## %bb.24:                              ##   in Loop: Header=BB45_1 Depth=1
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, %rdi
	leaq	L_.str.76(%rip), %rsi
	movb	$0, %al
	callq	_error_token
LBB45_25:                               ##   in Loop: Header=BB45_1 Depth=1
	movq	_ct@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	movl	$0, -52(%rbp)
LBB45_26:                               ##   Parent Loop BB45_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-52(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	2040(%rcx), %eax
	jge	LBB45_31
## %bb.27:                              ##   in Loop: Header=BB45_26 Depth=2
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movq	-48(%rbp), %rdx
	movslq	-52(%rbp), %rsi
	movq	840(%rdx,%rsi,8), %rdi
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movq	16(%rax), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB45_29
## %bb.28:                              ##   in Loop: Header=BB45_1 Depth=1
	jmp	LBB45_31
LBB45_29:                               ##   in Loop: Header=BB45_26 Depth=2
	jmp	LBB45_30
LBB45_30:                               ##   in Loop: Header=BB45_26 Depth=2
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	LBB45_26
LBB45_31:                               ##   in Loop: Header=BB45_1 Depth=1
	movl	-52(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	2040(%rcx), %eax
	jne	LBB45_33
## %bb.32:                              ##   in Loop: Header=BB45_1 Depth=1
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, %rdi
	leaq	L_.str.77(%rip), %rsi
	movb	$0, %al
	callq	_error_token
LBB45_33:                               ##   in Loop: Header=BB45_1 Depth=1
	movl	$1, %edi
	callq	_new_type
	movq	_tokens@GOTPCREL(%rip), %rcx
	movq	_ct@GOTPCREL(%rip), %rdx
	movq	_type_char@GOTPCREL(%rip), %rsi
	movq	%rax, -64(%rbp)
	movq	(%rsi), %rax
	movq	-64(%rbp), %rsi
	movq	%rax, 8(%rsi)
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)
	movl	(%rdx), %edi
	subl	$1, %edi
	movslq	%edi, %rax
	imulq	$40, %rax, %rax
	addq	%rax, %rcx
	cmpl	$46, (%rcx)
	jne	LBB45_35
## %bb.34:                              ##   in Loop: Header=BB45_1 Depth=1
	movl	$16, %edi
	callq	_new_node
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, 24(%rcx)
LBB45_35:                               ##   in Loop: Header=BB45_1 Depth=1
	movq	-64(%rbp), %rsi
	leaq	-72(%rbp), %rdi
	callq	_implicit_cast
	movl	$4, %edi
	callq	_new_node
	movq	%rax, -80(%rbp)
	movl	$43, %edi
	callq	_new_temp_token
	movq	-80(%rbp), %rsi
	movq	%rax, 16(%rsi)
	movq	-72(%rbp), %rax
	movq	-80(%rbp), %rsi
	movq	%rax, 24(%rsi)
	movl	$3, %edi
	callq	_new_node
	movq	-80(%rbp), %rsi
	movq	%rax, 32(%rsi)
	movl	$256, %edi              ## imm = 0x100
	callq	_new_temp_token
	movq	-80(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	%rax, 16(%rsi)
	movq	-48(%rbp), %rax
	movslq	-52(%rbp), %rsi
	movslq	1640(%rax,%rsi,4), %rax
	movq	-80(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	16(%rsi), %rsi
	movq	%rax, 8(%rsi)
	movl	$1, %edi
	callq	_new_type
	movq	%rax, -88(%rbp)
	movq	-48(%rbp), %rax
	movslq	-52(%rbp), %rsi
	movq	40(%rax,%rsi,8), %rax
	cmpl	$3, (%rax)
	jne	LBB45_37
## %bb.36:                              ##   in Loop: Header=BB45_1 Depth=1
	movq	-48(%rbp), %rax
	movslq	-52(%rbp), %rcx
	movq	40(%rax,%rcx,8), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rsi
	leaq	-80(%rbp), %rdi
	callq	_implicit_cast
	movq	-80(%rbp), %rax
	movq	%rax, -96(%rbp)
	jmp	LBB45_38
LBB45_37:                               ##   in Loop: Header=BB45_1 Depth=1
	movq	-48(%rbp), %rax
	movslq	-52(%rbp), %rcx
	movq	40(%rax,%rcx,8), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-88(%rbp), %rsi
	leaq	-80(%rbp), %rdi
	callq	_implicit_cast
	movl	$15, %edi
	callq	_new_node
	movq	%rax, -96(%rbp)
	movq	-80(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	%rax, 24(%rcx)
LBB45_38:                               ##   in Loop: Header=BB45_1 Depth=1
	movl	$257, %edi              ## imm = 0x101
	callq	_skip
	movq	-96(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB45_40
LBB45_39:
	jmp	LBB45_43
LBB45_40:                               ##   in Loop: Header=BB45_1 Depth=1
	jmp	LBB45_41
LBB45_41:                               ##   in Loop: Header=BB45_1 Depth=1
	jmp	LBB45_42
LBB45_42:                               ##   in Loop: Header=BB45_1 Depth=1
	jmp	LBB45_1
LBB45_43:
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_primary                ## -- Begin function primary
	.p2align	4, 0x90
_primary:                               ## @primary
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movq	$0, -16(%rbp)
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$256, (%rax)            ## imm = 0x100
	jne	LBB46_2
## %bb.1:
	movl	$3, %edi
	callq	_new_node
	movq	_ct@GOTPCREL(%rip), %rcx
	movq	%rax, -16(%rbp)
	movl	(%rcx), %edi
	addl	$1, %edi
	movl	%edi, (%rcx)
	jmp	LBB46_38
LBB46_2:
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$274, (%rax)            ## imm = 0x112
	jne	LBB46_4
## %bb.3:
	movl	$18, %edi
	callq	_new_node
	movq	_ct@GOTPCREL(%rip), %rcx
	movq	%rax, -16(%rbp)
	movl	(%rcx), %edi
	addl	$1, %edi
	movl	%edi, (%rcx)
	jmp	LBB46_37
LBB46_4:
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$40, (%rax)
	jne	LBB46_6
## %bb.5:
	movq	_ct@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	callq	_expr
	movq	%rax, -16(%rbp)
	movl	$41, %edi
	callq	_skip
	jmp	LBB46_36
LBB46_6:
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$257, (%rax)            ## imm = 0x101
	jne	LBB46_23
## %bb.7:
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movl	(%rcx), %edx
	addl	$1, %edx
	movslq	%edx, %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$40, (%rax)
	jne	LBB46_23
## %bb.8:
	movl	$12, %edi
	callq	_new_node
	movq	_tokens@GOTPCREL(%rip), %rcx
	movq	_ct@GOTPCREL(%rip), %rdx
	movq	%rax, -16(%rbp)
	movslq	(%rdx), %rax
	imulq	$40, %rax, %rax
	addq	%rax, %rcx
	movq	16(%rcx), %rdi
	callq	_find_func
	movq	-16(%rbp), %rcx
	movq	%rax, 144(%rcx)
	movq	-16(%rbp), %rax
	cmpq	$0, 144(%rax)
	jne	LBB46_10
## %bb.9:
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movq	-16(%rbp), %rdx
	movq	16(%rdx), %rdi
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movq	16(%rax), %rdx
	leaq	L_.str.78(%rip), %rsi
	movb	$0, %al
	callq	_error_token
LBB46_10:
	movq	_ct@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	addl	$2, %ecx
	movl	%ecx, (%rax)
	movl	$0, -20(%rbp)
LBB46_11:                               ## =>This Inner Loop Header: Depth=1
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$41, (%rax)
	je	LBB46_22
## %bb.12:                              ##   in Loop: Header=BB46_11 Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.58(%rip), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB46_15
## %bb.13:                              ##   in Loop: Header=BB46_11 Depth=1
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$123, (%rax)
	jne	LBB46_15
## %bb.14:                              ##   in Loop: Header=BB46_11 Depth=1
	callq	_statement
	movq	-16(%rbp), %rcx
	movslq	-20(%rbp), %rdx
	movq	%rax, 160(%rcx,%rdx,8)
	jmp	LBB46_16
LBB46_15:                               ##   in Loop: Header=BB46_11 Depth=1
	callq	_assign
	movq	-16(%rbp), %rcx
	movslq	-20(%rbp), %rdx
	movq	%rax, 160(%rcx,%rdx,8)
LBB46_16:                               ##   in Loop: Header=BB46_11 Depth=1
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movl	-20(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -20(%rbp)
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$44, (%rax)
	jne	LBB46_18
## %bb.17:                              ##   in Loop: Header=BB46_11 Depth=1
	movq	_ct@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	jmp	LBB46_21
LBB46_18:                               ##   in Loop: Header=BB46_11 Depth=1
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$41, (%rax)
	je	LBB46_20
## %bb.19:                              ##   in Loop: Header=BB46_11 Depth=1
	movl	$41, %edi
	callq	_skip
LBB46_20:                               ##   in Loop: Header=BB46_11 Depth=1
	jmp	LBB46_21
LBB46_21:                               ##   in Loop: Header=BB46_11 Depth=1
	jmp	LBB46_11
LBB46_22:
	movq	_ct@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	movl	-20(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 1760(%rax)
	jmp	LBB46_35
LBB46_23:
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$257, (%rax)            ## imm = 0x101
	jne	LBB46_33
## %bb.24:
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movq	16(%rax), %rdi
	callq	_find_var
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	LBB46_32
## %bb.25:
	movl	$0, -36(%rbp)
LBB46_26:                               ## =>This Inner Loop Header: Depth=1
	movq	_enum_count@GOTPCREL(%rip), %rax
	movl	-36(%rbp), %ecx
	cmpl	(%rax), %ecx
	jge	LBB46_31
## %bb.27:                              ##   in Loop: Header=BB46_26 Depth=1
	movq	_enums@GOTPCREL(%rip), %rax
	movq	_tokens@GOTPCREL(%rip), %rcx
	movq	_ct@GOTPCREL(%rip), %rdx
	movslq	(%rdx), %rdx
	imulq	$40, %rdx, %rdx
	addq	%rdx, %rcx
	movq	16(%rcx), %rdi
	movslq	-36(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB46_29
## %bb.28:
	movl	$3, %edi
	callq	_new_node
	movq	_ct@GOTPCREL(%rip), %rcx
	movq	%rax, -16(%rbp)
	movl	(%rcx), %edi
	addl	$1, %edi
	movl	%edi, (%rcx)
	movl	$256, %edi              ## imm = 0x100
	callq	_new_temp_token
	movq	_enums@GOTPCREL(%rip), %rcx
	movq	-16(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movslq	-36(%rbp), %rax
	shlq	$4, %rax
	addq	%rax, %rcx
	movslq	8(%rcx), %rax
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rax, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB46_39
LBB46_29:                               ##   in Loop: Header=BB46_26 Depth=1
	jmp	LBB46_30
LBB46_30:                               ##   in Loop: Header=BB46_26 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	LBB46_26
LBB46_31:
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rdx
	imulq	$40, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movq	16(%rax), %rdx
	movq	%rsi, %rdi
	leaq	L_.str.79(%rip), %rsi
	movb	$0, %al
	callq	_error_token
LBB46_32:
	movl	$2, %edi
	callq	_new_node
	movq	_ct@GOTPCREL(%rip), %rcx
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movl	(%rcx), %edi
	addl	$1, %edi
	movl	%edi, (%rcx)
	jmp	LBB46_34
LBB46_33:
	movq	_tokens@GOTPCREL(%rip), %rax
	movq	_ct@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, %rdi
	leaq	L_.str.80(%rip), %rsi
	movb	$0, %al
	callq	_error_token
LBB46_34:
	jmp	LBB46_35
LBB46_35:
	jmp	LBB46_36
LBB46_36:
	jmp	LBB46_37
LBB46_37:
	jmp	LBB46_38
LBB46_38:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
LBB46_39:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_get_inst_suffix        ## -- Begin function get_inst_suffix
	.p2align	4, 0x90
_get_inst_suffix:                       ## @get_inst_suffix
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -12(%rbp)
	cmpl	$1, -12(%rbp)
	jne	LBB47_2
## %bb.1:
	leaq	L_.str.81(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB47_12
LBB47_2:
	cmpl	$2, -12(%rbp)
	jne	LBB47_4
## %bb.3:
	leaq	L_.str.82(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB47_12
LBB47_4:
	cmpl	$4, -12(%rbp)
	jne	LBB47_6
## %bb.5:
	leaq	L_.str.83(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB47_12
LBB47_6:
	cmpl	$8, -12(%rbp)
	jne	LBB47_8
## %bb.7:
	leaq	L_.str.84(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB47_12
LBB47_8:
	jmp	LBB47_9
LBB47_9:
	jmp	LBB47_10
LBB47_10:
	jmp	LBB47_11
LBB47_11:
	leaq	L___func__.get_inst_suffix(%rip), %rdi
	leaq	L_.str.85(%rip), %rsi
	leaq	L_.str.4(%rip), %rcx
	movl	$23, %edx
	callq	___assert_rtn
LBB47_12:
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_get_size_name          ## -- Begin function get_size_name
	.p2align	4, 0x90
_get_size_name:                         ## @get_size_name
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -12(%rbp)
	cmpl	$1, -12(%rbp)
	jne	LBB48_2
## %bb.1:
	leaq	L_.str.86(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB48_12
LBB48_2:
	cmpl	$2, -12(%rbp)
	jne	LBB48_4
## %bb.3:
	leaq	L_.str.25(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB48_12
LBB48_4:
	cmpl	$4, -12(%rbp)
	jne	LBB48_6
## %bb.5:
	leaq	L_.str.26(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB48_12
LBB48_6:
	cmpl	$8, -12(%rbp)
	jne	LBB48_8
## %bb.7:
	leaq	L_.str.87(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB48_12
LBB48_8:
	jmp	LBB48_9
LBB48_9:
	jmp	LBB48_10
LBB48_10:
	jmp	LBB48_11
LBB48_11:
	leaq	L___func__.get_size_name(%rip), %rdi
	leaq	L_.str.85(%rip), %rsi
	leaq	L_.str.4(%rip), %rcx
	movl	$36, %edx
	callq	___assert_rtn
LBB48_12:
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_log2_int               ## -- Begin function log2_int
	.p2align	4, 0x90
_log2_int:                              ## @log2_int
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	$0, -8(%rbp)
LBB49_1:                                ## =>This Inner Loop Header: Depth=1
	cmpl	$1, -4(%rbp)
	jle	LBB49_3
## %bb.2:                               ##   in Loop: Header=BB49_1 Depth=1
	movl	-4(%rbp), %eax
	cltd
	movl	$2, %ecx
	idivl	%ecx
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	LBB49_1
LBB49_3:
	movl	-8(%rbp), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_get_register_by_size   ## -- Begin function get_register_by_size
	.p2align	4, 0x90
_get_register_by_size:                  ## @get_register_by_size
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$336, %rsp              ## imm = 0x150
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -320(%rbp)
	movl	%esi, -324(%rbp)
	movq	l___const.get_register_by_size.rax(%rip), %rax
	movq	%rax, -48(%rbp)
	movq	l___const.get_register_by_size.rax+8(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	l___const.get_register_by_size.rax+16(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	l___const.get_register_by_size.rax+24(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	l___const.get_register_by_size.rdx(%rip), %rax
	movq	%rax, -80(%rbp)
	movq	l___const.get_register_by_size.rdx+8(%rip), %rax
	movq	%rax, -72(%rbp)
	movq	l___const.get_register_by_size.rdx+16(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	l___const.get_register_by_size.rdx+24(%rip), %rax
	movq	%rax, -56(%rbp)
	movq	l___const.get_register_by_size.rcx(%rip), %rax
	movq	%rax, -112(%rbp)
	movq	l___const.get_register_by_size.rcx+8(%rip), %rax
	movq	%rax, -104(%rbp)
	movq	l___const.get_register_by_size.rcx+16(%rip), %rax
	movq	%rax, -96(%rbp)
	movq	l___const.get_register_by_size.rcx+24(%rip), %rax
	movq	%rax, -88(%rbp)
	movq	l___const.get_register_by_size.rdi(%rip), %rax
	movq	%rax, -144(%rbp)
	movq	l___const.get_register_by_size.rdi+8(%rip), %rax
	movq	%rax, -136(%rbp)
	movq	l___const.get_register_by_size.rdi+16(%rip), %rax
	movq	%rax, -128(%rbp)
	movq	l___const.get_register_by_size.rdi+24(%rip), %rax
	movq	%rax, -120(%rbp)
	movq	l___const.get_register_by_size.rsi(%rip), %rax
	movq	%rax, -176(%rbp)
	movq	l___const.get_register_by_size.rsi+8(%rip), %rax
	movq	%rax, -168(%rbp)
	movq	l___const.get_register_by_size.rsi+16(%rip), %rax
	movq	%rax, -160(%rbp)
	movq	l___const.get_register_by_size.rsi+24(%rip), %rax
	movq	%rax, -152(%rbp)
	movq	l___const.get_register_by_size.r8(%rip), %rax
	movq	%rax, -208(%rbp)
	movq	l___const.get_register_by_size.r8+8(%rip), %rax
	movq	%rax, -200(%rbp)
	movq	l___const.get_register_by_size.r8+16(%rip), %rax
	movq	%rax, -192(%rbp)
	movq	l___const.get_register_by_size.r8+24(%rip), %rax
	movq	%rax, -184(%rbp)
	movq	l___const.get_register_by_size.r9(%rip), %rax
	movq	%rax, -240(%rbp)
	movq	l___const.get_register_by_size.r9+8(%rip), %rax
	movq	%rax, -232(%rbp)
	movq	l___const.get_register_by_size.r9+16(%rip), %rax
	movq	%rax, -224(%rbp)
	movq	l___const.get_register_by_size.r9+24(%rip), %rax
	movq	%rax, -216(%rbp)
	movq	l___const.get_register_by_size.r10(%rip), %rax
	movq	%rax, -272(%rbp)
	movq	l___const.get_register_by_size.r10+8(%rip), %rax
	movq	%rax, -264(%rbp)
	movq	l___const.get_register_by_size.r10+16(%rip), %rax
	movq	%rax, -256(%rbp)
	movq	l___const.get_register_by_size.r10+24(%rip), %rax
	movq	%rax, -248(%rbp)
	movq	l___const.get_register_by_size.r11(%rip), %rax
	movq	%rax, -304(%rbp)
	movq	l___const.get_register_by_size.r11+8(%rip), %rax
	movq	%rax, -296(%rbp)
	movq	l___const.get_register_by_size.r11+16(%rip), %rax
	movq	%rax, -288(%rbp)
	movq	l___const.get_register_by_size.r11+24(%rip), %rax
	movq	%rax, -280(%rbp)
	movl	-324(%rbp), %edi
	callq	_log2_int
	movl	%eax, -324(%rbp)
	movq	-320(%rbp), %rdi
	leaq	L_.str.91(%rip), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB50_2
## %bb.1:
	movslq	-324(%rbp), %rax
	movq	-48(%rbp,%rax,8), %rax
	movq	%rax, -312(%rbp)
	jmp	LBB50_19
LBB50_2:
	movq	-320(%rbp), %rdi
	leaq	L_.str.95(%rip), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB50_4
## %bb.3:
	movslq	-324(%rbp), %rax
	movq	-80(%rbp,%rax,8), %rax
	movq	%rax, -312(%rbp)
	jmp	LBB50_19
LBB50_4:
	movq	-320(%rbp), %rdi
	leaq	L_.str.99(%rip), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB50_6
## %bb.5:
	movslq	-324(%rbp), %rax
	movq	-112(%rbp,%rax,8), %rax
	movq	%rax, -312(%rbp)
	jmp	LBB50_19
LBB50_6:
	movq	-320(%rbp), %rdi
	leaq	L_.str.103(%rip), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB50_8
## %bb.7:
	movslq	-324(%rbp), %rax
	movq	-144(%rbp,%rax,8), %rax
	movq	%rax, -312(%rbp)
	jmp	LBB50_19
LBB50_8:
	movq	-320(%rbp), %rdi
	leaq	L_.str.107(%rip), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB50_10
## %bb.9:
	movslq	-324(%rbp), %rax
	movq	-176(%rbp,%rax,8), %rax
	movq	%rax, -312(%rbp)
	jmp	LBB50_19
LBB50_10:
	movq	-320(%rbp), %rdi
	leaq	L_.str.111(%rip), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB50_12
## %bb.11:
	movslq	-324(%rbp), %rax
	movq	-208(%rbp,%rax,8), %rax
	movq	%rax, -312(%rbp)
	jmp	LBB50_19
LBB50_12:
	movq	-320(%rbp), %rdi
	leaq	L_.str.115(%rip), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB50_14
## %bb.13:
	movslq	-324(%rbp), %rax
	movq	-240(%rbp,%rax,8), %rax
	movq	%rax, -312(%rbp)
	jmp	LBB50_19
LBB50_14:
	movq	-320(%rbp), %rdi
	leaq	L_.str.119(%rip), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB50_16
## %bb.15:
	movslq	-324(%rbp), %rax
	movq	-272(%rbp,%rax,8), %rax
	movq	%rax, -312(%rbp)
	jmp	LBB50_19
LBB50_16:
	movq	-320(%rbp), %rdi
	leaq	L_.str.123(%rip), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB50_18
## %bb.17:
	movslq	-324(%rbp), %rax
	movq	-304(%rbp,%rax,8), %rax
	movq	%rax, -312(%rbp)
	jmp	LBB50_19
LBB50_18:
	leaq	L___func__.get_register_by_size(%rip), %rdi
	leaq	L_.str.85(%rip), %rsi
	leaq	L_.str.4(%rip), %rcx
	movl	$81, %edx
	callq	___assert_rtn
LBB50_19:
	movq	-312(%rbp), %rax
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movq	%rax, -336(%rbp)        ## 8-byte Spill
	jne	LBB50_21
## %bb.20:
	movq	-336(%rbp), %rax        ## 8-byte Reload
	addq	$336, %rsp              ## imm = 0x150
	popq	%rbp
	retq
LBB50_21:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_add_string_lit         ## -- Begin function add_string_lit
	.p2align	4, 0x90
_add_string_lit:                        ## @add_string_lit
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	$0, -20(%rbp)
LBB51_1:                                ## =>This Inner Loop Header: Depth=1
	movq	_strings_literal_count@GOTPCREL(%rip), %rax
	movl	-20(%rbp), %ecx
	cmpl	(%rax), %ecx
	jge	LBB51_6
## %bb.2:                               ##   in Loop: Header=BB51_1 Depth=1
	movq	_strings_literal@GOTPCREL(%rip), %rax
	movq	-16(%rbp), %rdi
	movslq	-20(%rbp), %rcx
	movq	(%rax,%rcx,8), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB51_4
## %bb.3:
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	LBB51_7
LBB51_4:                                ##   in Loop: Header=BB51_1 Depth=1
	jmp	LBB51_5
LBB51_5:                                ##   in Loop: Header=BB51_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	LBB51_1
LBB51_6:
	movq	_strings_literal_count@GOTPCREL(%rip), %rax
	movq	_strings_literal@GOTPCREL(%rip), %rcx
	movq	-16(%rbp), %rdx
	movslq	(%rax), %rsi
	movq	%rdx, (%rcx,%rsi,8)
	movl	(%rax), %edi
	movl	%edi, %r8d
	addl	$1, %r8d
	movl	%r8d, (%rax)
	movl	%edi, -4(%rbp)
LBB51_7:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_gen                    ## -- Begin function gen
	.p2align	4, 0x90
_gen:                                   ## @gen
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$512, %rsp              ## imm = 0x200
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -120(%rbp)
	cmpq	$0, -120(%rbp)
	je	LBB52_2
## %bb.1:
	movq	-120(%rbp), %rax
	cmpl	$0, (%rax)
	jne	LBB52_3
LBB52_2:
	jmp	LBB52_299
LBB52_3:
	movq	-120(%rbp), %rax
	cmpl	$1, (%rax)
	jne	LBB52_8
## %bb.4:
	movq	-120(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -128(%rbp)
LBB52_5:                                ## =>This Inner Loop Header: Depth=1
	cmpq	$0, -128(%rbp)
	je	LBB52_7
## %bb.6:                               ##   in Loop: Header=BB52_5 Depth=1
	movq	-128(%rbp), %rdi
	callq	_gen
	movq	-128(%rbp), %rdi
	movq	40(%rdi), %rdi
	movq	%rdi, -128(%rbp)
	jmp	LBB52_5
LBB52_7:
	jmp	LBB52_297
LBB52_8:
	movq	-120(%rbp), %rax
	cmpl	$14, (%rax)
	jne	LBB52_26
## %bb.9:
	movq	-120(%rbp), %rax
	cmpq	$0, 48(%rax)
	jne	LBB52_11
## %bb.10:
	jmp	LBB52_299
LBB52_11:
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.124(%rip), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB52_13
## %bb.12:
	movq	_f@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	leaq	L_.str.125(%rip), %rsi
	movb	$0, %al
	callq	_fprintf
	movl	%eax, -304(%rbp)        ## 4-byte Spill
LBB52_13:
	movq	_f@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rdx
	leaq	L_.str.126(%rip), %rsi
	movb	$0, %al
	callq	_fprintf
	leaq	L_.str.127(%rip), %rdi
	movl	%eax, -308(%rbp)        ## 4-byte Spill
	movb	$0, %al
	callq	_out
	leaq	L_.str.128(%rip), %rdi
	movb	$0, %al
	callq	_out
	movq	-120(%rbp), %rdx
	movl	1768(%rdx), %edi
	movl	$16, %esi
	callq	_align
	movq	-120(%rbp), %rdx
	movl	%eax, 1768(%rdx)
	movq	-120(%rbp), %rdx
	movl	1768(%rdx), %esi
	leaq	L_.str.129(%rip), %rdi
	movb	$0, %al
	callq	_out
	xorl	%esi, %esi
	leaq	-64(%rbp), %rdx
	movq	%rdx, %rdi
	movl	$48, %edx
	callq	_memset
	leaq	L_.str.103(%rip), %rdx
	movq	%rdx, -64(%rbp)
	leaq	L_.str.107(%rip), %rdx
	movq	%rdx, -56(%rbp)
	leaq	L_.str.95(%rip), %rdx
	movq	%rdx, -48(%rbp)
	leaq	L_.str.99(%rip), %rdx
	movq	%rdx, -40(%rbp)
	leaq	L_.str.111(%rip), %rdx
	movq	%rdx, -32(%rbp)
	leaq	L_.str.115(%rip), %rdx
	movq	%rdx, -24(%rbp)
	movl	$0, -132(%rbp)
LBB52_14:                               ## =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-132(%rbp), %eax
	movq	-120(%rbp), %rdx
	cmpl	1764(%rdx), %eax
	movb	%cl, -309(%rbp)         ## 1-byte Spill
	jge	LBB52_16
## %bb.15:                              ##   in Loop: Header=BB52_14 Depth=1
	cmpl	$6, -132(%rbp)
	setl	%al
	movb	%al, -309(%rbp)         ## 1-byte Spill
LBB52_16:                               ##   in Loop: Header=BB52_14 Depth=1
	movb	-309(%rbp), %al         ## 1-byte Reload
	testb	$1, %al
	jne	LBB52_17
	jmp	LBB52_19
LBB52_17:                               ##   in Loop: Header=BB52_14 Depth=1
	movq	-120(%rbp), %rax
	movslq	-132(%rbp), %rcx
	movq	960(%rax,%rcx,8), %rax
	movq	8(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movl	20(%rax), %edi
	callq	_get_inst_suffix
	movslq	-132(%rbp), %rcx
	movq	-64(%rbp,%rcx,8), %rdi
	movq	-144(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	20(%rcx), %esi
	movq	%rax, -320(%rbp)        ## 8-byte Spill
	callq	_get_register_by_size
	movq	-144(%rbp), %rcx
	movl	16(%rcx), %ecx
	leaq	L_.str.130(%rip), %rdi
	movq	-320(%rbp), %rsi        ## 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	_out
## %bb.18:                              ##   in Loop: Header=BB52_14 Depth=1
	movl	-132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	jmp	LBB52_14
LBB52_19:
	movq	-120(%rbp), %rax
	cmpl	$6, 1764(%rax)
	jle	LBB52_25
## %bb.20:
	movq	-120(%rbp), %rax
	movq	1000(%rax), %rax
	movq	8(%rax), %rax
	movl	16(%rax), %ecx
	addl	$8, %ecx
	movl	%ecx, -148(%rbp)
	movl	$16, -152(%rbp)
	movl	$6, -156(%rbp)
LBB52_21:                               ## =>This Inner Loop Header: Depth=1
	movl	-156(%rbp), %eax
	movq	-120(%rbp), %rcx
	cmpl	1764(%rcx), %eax
	jge	LBB52_24
## %bb.22:                              ##   in Loop: Header=BB52_21 Depth=1
	movl	-152(%rbp), %esi
	leaq	L_.str.131(%rip), %rdi
	movb	$0, %al
	callq	_out
	movl	-148(%rbp), %esi
	leaq	L_.str.132(%rip), %rdi
	movb	$0, %al
	callq	_out
	movl	-148(%rbp), %esi
	addl	$8, %esi
	movl	%esi, -148(%rbp)
	movl	-152(%rbp), %esi
	addl	$8, %esi
	movl	%esi, -152(%rbp)
## %bb.23:                              ##   in Loop: Header=BB52_21 Depth=1
	movl	-156(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -156(%rbp)
	jmp	LBB52_21
LBB52_24:
	jmp	LBB52_25
LBB52_25:
	movq	-120(%rbp), %rax
	movq	48(%rax), %rdi
	callq	_gen
	leaq	L_.str.133(%rip), %rdi
	movb	$0, %al
	callq	_out
	leaq	L_.str.134(%rip), %rdi
	movb	$0, %al
	callq	_out
	leaq	L_.str.135(%rip), %rdi
	movb	$0, %al
	callq	_out
	leaq	L_.str.136(%rip), %rdi
	movb	$0, %al
	callq	_out
	jmp	LBB52_296
LBB52_26:
	movq	-120(%rbp), %rax
	cmpl	$11, (%rax)
	jne	LBB52_31
## %bb.27:
	movq	_f@GOTPCREL(%rip), %rax
	movq	-120(%rbp), %rcx
	movq	96(%rcx), %rcx
	movq	%rcx, -168(%rbp)
	movq	(%rax), %rdi
	leaq	L_.str.137(%rip), %rsi
	movb	$0, %al
	callq	_fprintf
	movl	%eax, -324(%rbp)        ## 4-byte Spill
LBB52_28:                               ## =>This Inner Loop Header: Depth=1
	cmpq	$0, -168(%rbp)
	je	LBB52_30
## %bb.29:                              ##   in Loop: Header=BB52_28 Depth=1
	movq	-168(%rbp), %rdi
	callq	_gen
	movq	-168(%rbp), %rdi
	movq	80(%rdi), %rdi
	movq	%rdi, -168(%rbp)
	jmp	LBB52_28
LBB52_30:
	movq	_f@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	leaq	L_.str.138(%rip), %rsi
	movb	$0, %al
	callq	_fprintf
	movl	%eax, -328(%rbp)        ## 4-byte Spill
	jmp	LBB52_295
LBB52_31:
	movq	-120(%rbp), %rax
	cmpl	$17, (%rax)
	jne	LBB52_42
## %bb.32:
	movq	-120(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -176(%rbp)
LBB52_33:                               ## =>This Inner Loop Header: Depth=1
	cmpq	$0, -176(%rbp)
	je	LBB52_41
## %bb.34:                              ##   in Loop: Header=BB52_33 Depth=1
	movq	-176(%rbp), %rax
	movq	8(%rax), %rax
	cmpl	$0, 32(%rax)
	je	LBB52_36
## %bb.35:                              ##   in Loop: Header=BB52_33 Depth=1
	jmp	LBB52_40
LBB52_36:                               ##   in Loop: Header=BB52_33 Depth=1
	movq	-176(%rbp), %rax
	movq	8(%rax), %rax
	cmpl	$0, 32(%rax)
	jne	LBB52_39
## %bb.37:                              ##   in Loop: Header=BB52_33 Depth=1
	movq	-176(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	LBB52_39
## %bb.38:                              ##   in Loop: Header=BB52_33 Depth=1
	movq	-176(%rbp), %rax
	movq	24(%rax), %rdi
	callq	_gen
LBB52_39:                               ##   in Loop: Header=BB52_33 Depth=1
	jmp	LBB52_40
LBB52_40:                               ##   in Loop: Header=BB52_33 Depth=1
	movq	-176(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -176(%rbp)
	jmp	LBB52_33
LBB52_41:
	jmp	LBB52_294
LBB52_42:
	movq	-120(%rbp), %rax
	cmpl	$7, (%rax)
	jne	LBB52_44
## %bb.43:
	movq	-120(%rbp), %rax
	movq	24(%rax), %rdi
	callq	_gen
	leaq	L_.str.134(%rip), %rdi
	movb	$0, %al
	callq	_out
	leaq	L_.str.135(%rip), %rdi
	movb	$0, %al
	callq	_out
	leaq	L_.str.139(%rip), %rdi
	movb	$0, %al
	callq	_out
	jmp	LBB52_293
LBB52_44:
	movq	-120(%rbp), %rax
	cmpl	$8, (%rax)
	jne	LBB52_48
## %bb.45:
	movq	_f@GOTPCREL(%rip), %rax
	movl	_curr_label(%rip), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, _curr_label(%rip)
	movl	%ecx, -180(%rbp)
	movq	(%rax), %rdi
	leaq	L_.str.140(%rip), %rsi
	movb	$0, %al
	callq	_fprintf
	movq	-120(%rbp), %rsi
	movq	56(%rsi), %rdi
	movl	%eax, -332(%rbp)        ## 4-byte Spill
	callq	_gen
	leaq	L_.str.141(%rip), %rdi
	movb	$0, %al
	callq	_out
	movl	-180(%rbp), %esi
	leaq	L_.str.142(%rip), %rdi
	movb	$0, %al
	callq	_out
	movq	-120(%rbp), %rdi
	movq	48(%rdi), %rdi
	callq	_gen
	movl	-180(%rbp), %esi
	leaq	L_.str.143(%rip), %rdi
	movb	$0, %al
	callq	_out
	movq	_f@GOTPCREL(%rip), %rdi
	movq	(%rdi), %rdi
	movl	-180(%rbp), %edx
	leaq	L_.str.144(%rip), %rsi
	movb	$0, %al
	callq	_fprintf
	movq	-120(%rbp), %rsi
	cmpq	$0, 128(%rsi)
	movl	%eax, -336(%rbp)        ## 4-byte Spill
	je	LBB52_47
## %bb.46:
	movq	-120(%rbp), %rax
	movq	128(%rax), %rdi
	callq	_gen
LBB52_47:
	movq	_f@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movl	-180(%rbp), %edx
	leaq	L_.str.145(%rip), %rsi
	movb	$0, %al
	callq	_fprintf
	movl	%eax, -340(%rbp)        ## 4-byte Spill
	jmp	LBB52_292
LBB52_48:
	movq	-120(%rbp), %rax
	cmpl	$9, (%rax)
	jne	LBB52_50
## %bb.49:
	movq	_f@GOTPCREL(%rip), %rax
	movl	_curr_label(%rip), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, _curr_label(%rip)
	movl	%ecx, -184(%rbp)
	movq	(%rax), %rdi
	movl	-184(%rbp), %edx
	leaq	L_.str.146(%rip), %rsi
	movb	$0, %al
	callq	_fprintf
	movq	-120(%rbp), %rsi
	movq	56(%rsi), %rdi
	movl	%eax, -344(%rbp)        ## 4-byte Spill
	callq	_gen
	leaq	L_.str.141(%rip), %rdi
	movb	$0, %al
	callq	_out
	movl	-184(%rbp), %esi
	leaq	L_.str.147(%rip), %rdi
	movb	$0, %al
	callq	_out
	movq	_curr_loop_is_for@GOTPCREL(%rip), %rdi
	movq	_curr_loop_label@GOTPCREL(%rip), %r8
	movl	_loop_counter(%rip), %ecx
	addl	$1, %ecx
	movl	%ecx, _loop_counter(%rip)
	movl	(%r8), %ecx
	movl	%ecx, -188(%rbp)
	movl	(%rdi), %ecx
	movl	%ecx, -192(%rbp)
	movl	-184(%rbp), %ecx
	movl	%ecx, (%r8)
	movl	$0, (%rdi)
	movq	-120(%rbp), %rdi
	movq	48(%rdi), %rdi
	callq	_gen
	movq	_curr_loop_is_for@GOTPCREL(%rip), %rdi
	movq	_curr_loop_label@GOTPCREL(%rip), %r8
	movl	-188(%rbp), %ecx
	movl	%ecx, (%r8)
	movl	-192(%rbp), %ecx
	movl	%ecx, (%rdi)
	movl	_loop_counter(%rip), %ecx
	addl	$-1, %ecx
	movl	%ecx, _loop_counter(%rip)
	movl	-184(%rbp), %esi
	leaq	L_.str.148(%rip), %rdi
	movb	$0, %al
	callq	_out
	movq	_f@GOTPCREL(%rip), %rdi
	movq	(%rdi), %rdi
	movl	-184(%rbp), %edx
	leaq	L_.str.149(%rip), %rsi
	movb	$0, %al
	callq	_fprintf
	movl	%eax, -348(%rbp)        ## 4-byte Spill
	jmp	LBB52_291
LBB52_50:
	movq	-120(%rbp), %rax
	cmpl	$10, (%rax)
	jne	LBB52_54
## %bb.51:
	movq	_f@GOTPCREL(%rip), %rax
	movl	_curr_label(%rip), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, _curr_label(%rip)
	movl	%ecx, -196(%rbp)
	movq	(%rax), %rdi
	leaq	L_.str.150(%rip), %rsi
	movb	$0, %al
	callq	_fprintf
	movq	-120(%rbp), %rsi
	movq	64(%rsi), %rdi
	movl	%eax, -352(%rbp)        ## 4-byte Spill
	callq	_gen
	movq	_f@GOTPCREL(%rip), %rsi
	movq	(%rsi), %rdi
	movl	-196(%rbp), %edx
	leaq	L_.str.151(%rip), %rsi
	movb	$0, %al
	callq	_fprintf
	movq	-120(%rbp), %rsi
	cmpq	$0, 56(%rsi)
	movl	%eax, -356(%rbp)        ## 4-byte Spill
	je	LBB52_53
## %bb.52:
	movq	-120(%rbp), %rax
	movq	56(%rax), %rdi
	callq	_gen
	leaq	L_.str.141(%rip), %rdi
	movb	$0, %al
	callq	_out
	movl	-196(%rbp), %esi
	leaq	L_.str.152(%rip), %rdi
	movb	$0, %al
	callq	_out
LBB52_53:
	movq	_curr_loop_is_for@GOTPCREL(%rip), %rax
	movq	_curr_loop_label@GOTPCREL(%rip), %rcx
	movl	_loop_counter(%rip), %edx
	addl	$1, %edx
	movl	%edx, _loop_counter(%rip)
	movl	(%rcx), %edx
	movl	%edx, -200(%rbp)
	movl	(%rax), %edx
	movl	%edx, -204(%rbp)
	movl	-196(%rbp), %edx
	movl	%edx, (%rcx)
	movl	$1, (%rax)
	movq	-120(%rbp), %rax
	movq	48(%rax), %rdi
	callq	_gen
	movq	_f@GOTPCREL(%rip), %rax
	movq	_curr_loop_is_for@GOTPCREL(%rip), %rcx
	movq	_curr_loop_label@GOTPCREL(%rip), %rdi
	movl	_loop_counter(%rip), %edx
	addl	$-1, %edx
	movl	%edx, _loop_counter(%rip)
	movl	-200(%rbp), %edx
	movl	%edx, (%rdi)
	movl	-204(%rbp), %edx
	movl	%edx, (%rcx)
	movq	(%rax), %rdi
	movl	-196(%rbp), %edx
	leaq	L_.str.153(%rip), %rsi
	movb	$0, %al
	callq	_fprintf
	movq	-120(%rbp), %rcx
	movq	72(%rcx), %rdi
	movl	%eax, -360(%rbp)        ## 4-byte Spill
	callq	_gen
	movl	-196(%rbp), %esi
	leaq	L_.str.154(%rip), %rdi
	movb	$0, %al
	callq	_out
	movq	_f@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rdi
	movl	-196(%rbp), %edx
	leaq	L_.str.155(%rip), %rsi
	movb	$0, %al
	callq	_fprintf
	movl	%eax, -364(%rbp)        ## 4-byte Spill
	jmp	LBB52_290
LBB52_54:
	movq	-120(%rbp), %rax
	cmpl	$3, (%rax)
	jne	LBB52_59
## %bb.55:
	movq	-120(%rbp), %rax
	movq	136(%rax), %rax
	cmpl	$6, (%rax)
	jne	LBB52_57
## %bb.56:
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rsi
	leaq	L_.str.156(%rip), %rdi
	movb	$0, %al
	callq	_out
	jmp	LBB52_58
LBB52_57:
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rsi
	leaq	L_.str.157(%rip), %rdi
	movb	$0, %al
	callq	_out
LBB52_58:
	jmp	LBB52_289
LBB52_59:
	movq	-120(%rbp), %rax
	cmpl	$18, (%rax)
	jne	LBB52_61
## %bb.60:
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rdi
	callq	_add_string_lit
	movl	%eax, -208(%rbp)
	movl	-208(%rbp), %esi
	leaq	L_.str.158(%rip), %rdi
	movb	$0, %al
	callq	_out
	jmp	LBB52_288
LBB52_61:
	movq	-120(%rbp), %rax
	cmpl	$2, (%rax)
	jne	LBB52_88
## %bb.62:
	movq	-120(%rbp), %rax
	movq	136(%rax), %rax
	cmpl	$3, (%rax)
	je	LBB52_64
## %bb.63:
	movq	-120(%rbp), %rax
	movq	136(%rax), %rax
	cmpl	$7, (%rax)
	jne	LBB52_68
LBB52_64:
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	cmpl	$0, 32(%rax)
	je	LBB52_66
## %bb.65:
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rsi
	leaq	L_.str.159(%rip), %rdi
	movb	$0, %al
	callq	_out
	jmp	LBB52_67
LBB52_66:
	leaq	L_.str.160(%rip), %rdi
	movb	$0, %al
	callq	_out
	movq	-120(%rbp), %rdi
	movq	8(%rdi), %rdi
	movl	16(%rdi), %esi
	leaq	L_.str.161(%rip), %rdi
	movb	$0, %al
	callq	_out
LBB52_67:
	jmp	LBB52_87
LBB52_68:
	movq	-120(%rbp), %rax
	movq	136(%rax), %rax
	cmpl	$8, (%rax)
	jne	LBB52_70
## %bb.69:
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rsi
	leaq	L_.str.162(%rip), %rdi
	movb	$0, %al
	callq	_out
	jmp	LBB52_86
LBB52_70:
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	cmpl	$0, 32(%rax)
	je	LBB52_75
## %bb.71:
	movq	-120(%rbp), %rax
	movq	136(%rax), %rax
	cmpl	$8, 20(%rax)
	jge	LBB52_73
## %bb.72:
	movq	-120(%rbp), %rax
	movq	136(%rax), %rax
	movl	20(%rax), %edi
	callq	_get_inst_suffix
	movq	-120(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	8(%rcx), %rdx
	leaq	L_.str.163(%rip), %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	_out
	jmp	LBB52_74
LBB52_73:
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rsi
	leaq	L_.str.164(%rip), %rdi
	movb	$0, %al
	callq	_out
LBB52_74:
	jmp	LBB52_85
LBB52_75:
	movq	-120(%rbp), %rax
	movq	136(%rax), %rax
	cmpl	$0, 24(%rax)
	je	LBB52_80
## %bb.76:
	movq	-120(%rbp), %rax
	movq	136(%rax), %rax
	cmpl	$4, 20(%rax)
	jge	LBB52_78
## %bb.77:
	movq	-120(%rbp), %rax
	movq	136(%rax), %rax
	movl	20(%rax), %edi
	callq	_get_inst_suffix
	movq	-120(%rbp), %rcx
	movq	8(%rcx), %rcx
	movl	16(%rcx), %edx
	leaq	L_.str.165(%rip), %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	_out
	jmp	LBB52_79
LBB52_78:
	movq	-120(%rbp), %rax
	movq	136(%rax), %rax
	movl	20(%rax), %edi
	callq	_get_inst_suffix
	movq	-120(%rbp), %rcx
	movq	8(%rcx), %rcx
	movl	16(%rcx), %edx
	movq	-120(%rbp), %rcx
	movq	136(%rcx), %rcx
	movl	20(%rcx), %esi
	leaq	L_.str.91(%rip), %rdi
	movq	%rax, -376(%rbp)        ## 8-byte Spill
	movl	%edx, -380(%rbp)        ## 4-byte Spill
	callq	_get_register_by_size
	leaq	L_.str.166(%rip), %rdi
	movq	-376(%rbp), %rsi        ## 8-byte Reload
	movl	-380(%rbp), %edx        ## 4-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	_out
LBB52_79:
	jmp	LBB52_84
LBB52_80:
	movq	-120(%rbp), %rax
	movq	136(%rax), %rax
	cmpl	$8, 20(%rax)
	jge	LBB52_82
## %bb.81:
	movq	-120(%rbp), %rax
	movq	136(%rax), %rax
	movl	20(%rax), %edi
	callq	_get_inst_suffix
	movq	-120(%rbp), %rcx
	movq	8(%rcx), %rcx
	movl	16(%rcx), %edx
	leaq	L_.str.167(%rip), %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	_out
	jmp	LBB52_83
LBB52_82:
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movl	16(%rax), %esi
	leaq	L_.str.168(%rip), %rdi
	movb	$0, %al
	callq	_out
LBB52_83:
	jmp	LBB52_84
LBB52_84:
	jmp	LBB52_85
LBB52_85:
	jmp	LBB52_86
LBB52_86:
	jmp	LBB52_87
LBB52_87:
	jmp	LBB52_287
LBB52_88:
	movq	-120(%rbp), %rax
	cmpl	$12, (%rax)
	jne	LBB52_118
## %bb.89:
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.58(%rip), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB52_94
## %bb.90:
	movl	_curr_label(%rip), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, _curr_label(%rip)
	movl	%eax, -212(%rbp)
	movq	-120(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, -224(%rbp)
LBB52_91:                               ## =>This Inner Loop Header: Depth=1
	movq	-224(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$10, %ecx
	je	LBB52_93
## %bb.92:                              ##   in Loop: Header=BB52_91 Depth=1
	movq	-224(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -224(%rbp)
	jmp	LBB52_91
LBB52_93:
	movq	_f@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	-224(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	32(%rcx), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movl	%eax, %edx
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rcx
	leaq	L_.str.169(%rip), %rsi
	movb	$0, %al
	callq	_fprintf
	movq	-120(%rbp), %rcx
	movq	160(%rcx), %rdi
	movl	%eax, -384(%rbp)        ## 4-byte Spill
	callq	_gen
	leaq	L_.str.170(%rip), %rdi
	movb	$0, %al
	callq	_out
	movq	-120(%rbp), %rcx
	movq	168(%rcx), %rdi
	callq	_gen
	leaq	L_.str.171(%rip), %rdi
	movb	$0, %al
	callq	_out
	movl	-212(%rbp), %esi
	leaq	L_.str.172(%rip), %rdi
	movb	$0, %al
	callq	_out
	movq	-120(%rbp), %rcx
	movq	16(%rcx), %rcx
	movl	24(%rcx), %esi
	leaq	L_.str.173(%rip), %rdi
	movb	$0, %al
	callq	_out
	movq	-120(%rbp), %rcx
	movq	16(%rcx), %rcx
	movl	24(%rcx), %esi
	leaq	L_.str.174(%rip), %rdi
	movb	$0, %al
	callq	_out
	movq	-120(%rbp), %rcx
	movq	16(%rcx), %rcx
	movl	24(%rcx), %esi
	leaq	L_.str.175(%rip), %rdi
	movb	$0, %al
	callq	_out
	leaq	L_.str.176(%rip), %rdi
	movb	$0, %al
	callq	_out
	movq	_f@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rdi
	movl	-212(%rbp), %edx
	leaq	L_.str.177(%rip), %rsi
	movb	$0, %al
	callq	_fprintf
	movl	%eax, -388(%rbp)        ## 4-byte Spill
	jmp	LBB52_117
LBB52_94:
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rdi
	callq	_find_func
	movq	%rax, -232(%rbp)
	cmpq	$0, -232(%rbp)
	jne	LBB52_96
## %bb.95:
	movq	-120(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.178(%rip), %rsi
	movb	$0, %al
	callq	_error_token
LBB52_96:
	xorl	%esi, %esi
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	movl	$48, %edx
	callq	_memset
	leaq	L_.str.103(%rip), %rax
	movq	%rax, -112(%rbp)
	leaq	L_.str.107(%rip), %rax
	movq	%rax, -104(%rbp)
	leaq	L_.str.95(%rip), %rax
	movq	%rax, -96(%rbp)
	leaq	L_.str.99(%rip), %rax
	movq	%rax, -88(%rbp)
	leaq	L_.str.111(%rip), %rax
	movq	%rax, -80(%rbp)
	leaq	L_.str.115(%rip), %rax
	movq	%rax, -72(%rbp)
	movl	$0, -236(%rbp)
LBB52_97:                               ## =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-236(%rbp), %eax
	movq	-120(%rbp), %rdx
	cmpl	1760(%rdx), %eax
	movb	%cl, -389(%rbp)         ## 1-byte Spill
	jge	LBB52_99
## %bb.98:                              ##   in Loop: Header=BB52_97 Depth=1
	cmpl	$6, -236(%rbp)
	setl	%al
	movb	%al, -389(%rbp)         ## 1-byte Spill
LBB52_99:                               ##   in Loop: Header=BB52_97 Depth=1
	movb	-389(%rbp), %al         ## 1-byte Reload
	testb	$1, %al
	jne	LBB52_100
	jmp	LBB52_102
LBB52_100:                              ##   in Loop: Header=BB52_97 Depth=1
	movq	-120(%rbp), %rax
	movslq	-236(%rbp), %rcx
	movq	160(%rax,%rcx,8), %rdi
	callq	_gen
	leaq	L_.str.179(%rip), %rdi
	movb	$0, %al
	callq	_out
## %bb.101:                             ##   in Loop: Header=BB52_97 Depth=1
	movl	-236(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -236(%rbp)
	jmp	LBB52_97
LBB52_102:
	movl	$0, -240(%rbp)
LBB52_103:                              ## =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-240(%rbp), %eax
	movq	-120(%rbp), %rdx
	cmpl	1760(%rdx), %eax
	movb	%cl, -390(%rbp)         ## 1-byte Spill
	jge	LBB52_105
## %bb.104:                             ##   in Loop: Header=BB52_103 Depth=1
	cmpl	$6, -240(%rbp)
	setl	%al
	movb	%al, -390(%rbp)         ## 1-byte Spill
LBB52_105:                              ##   in Loop: Header=BB52_103 Depth=1
	movb	-390(%rbp), %al         ## 1-byte Reload
	testb	$1, %al
	jne	LBB52_106
	jmp	LBB52_110
LBB52_106:                              ##   in Loop: Header=BB52_103 Depth=1
	movq	-120(%rbp), %rax
	movl	1760(%rax), %ecx
	movl	%ecx, -244(%rbp)
	cmpl	$6, -244(%rbp)
	jle	LBB52_108
## %bb.107:                             ##   in Loop: Header=BB52_103 Depth=1
	movl	$6, -244(%rbp)
LBB52_108:                              ##   in Loop: Header=BB52_103 Depth=1
	movl	-244(%rbp), %eax
	subl	-240(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-112(%rbp,%rcx,8), %rsi
	leaq	L_.str.180(%rip), %rdi
	movb	$0, %al
	callq	_out
## %bb.109:                             ##   in Loop: Header=BB52_103 Depth=1
	movl	-240(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -240(%rbp)
	jmp	LBB52_103
LBB52_110:
	movq	-120(%rbp), %rax
	movl	1760(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -248(%rbp)
LBB52_111:                              ## =>This Inner Loop Header: Depth=1
	cmpl	$6, -248(%rbp)
	jl	LBB52_114
## %bb.112:                             ##   in Loop: Header=BB52_111 Depth=1
	movq	-120(%rbp), %rax
	movslq	-248(%rbp), %rcx
	movq	160(%rax,%rcx,8), %rdi
	callq	_gen
	leaq	L_.str.179(%rip), %rdi
	movb	$0, %al
	callq	_out
## %bb.113:                             ##   in Loop: Header=BB52_111 Depth=1
	movl	-248(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -248(%rbp)
	jmp	LBB52_111
LBB52_114:
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rsi
	leaq	L_.str.181(%rip), %rdi
	movb	$0, %al
	callq	_out
	movq	-120(%rbp), %rsi
	cmpl	$6, 1760(%rsi)
	jle	LBB52_116
## %bb.115:
	movq	-120(%rbp), %rax
	movl	1760(%rax), %ecx
	subl	$6, %ecx
	shll	$3, %ecx
	leaq	L_.str.182(%rip), %rdi
	movl	%ecx, %esi
	movb	$0, %al
	callq	_out
LBB52_116:
	jmp	LBB52_117
LBB52_117:
	jmp	LBB52_286
LBB52_118:
	movq	-120(%rbp), %rax
	cmpl	$16, (%rax)
	jne	LBB52_132
## %bb.119:
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	cmpl	$15, (%rax)
	jne	LBB52_121
## %bb.120:
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	movq	24(%rax), %rdi
	callq	_gen
	jmp	LBB52_131
LBB52_121:
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	cmpl	$2, (%rax)
	jne	LBB52_126
## %bb.122:
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rax
	cmpl	$0, 32(%rax)
	je	LBB52_124
## %bb.123:
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rsi
	leaq	L_.str.159(%rip), %rdi
	movb	$0, %al
	callq	_out
	jmp	LBB52_125
LBB52_124:
	leaq	L_.str.160(%rip), %rdi
	movb	$0, %al
	callq	_out
	movq	-120(%rbp), %rdi
	movq	24(%rdi), %rdi
	movq	8(%rdi), %rdi
	movl	16(%rdi), %esi
	leaq	L_.str.161(%rip), %rdi
	movb	$0, %al
	callq	_out
LBB52_125:
	jmp	LBB52_130
LBB52_126:
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	cmpl	$21, (%rax)
	jne	LBB52_128
## %bb.127:
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	movq	24(%rax), %rax
	movq	-120(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-120(%rbp), %rdi
	callq	_gen
	jmp	LBB52_129
LBB52_128:
	leaq	L___func__.gen(%rip), %rdi
	leaq	L_.str.85(%rip), %rsi
	leaq	L_.str.4(%rip), %rcx
	movl	$429, %edx              ## imm = 0x1AD
	callq	___assert_rtn
LBB52_129:
	jmp	LBB52_130
LBB52_130:
	jmp	LBB52_131
LBB52_131:
	jmp	LBB52_285
LBB52_132:
	movq	-120(%rbp), %rax
	cmpl	$15, (%rax)
	jne	LBB52_142
## %bb.133:
	movq	-120(%rbp), %rax
	movq	24(%rax), %rdi
	callq	_gen
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	movq	136(%rax), %rax
	cmpq	$0, 8(%rax)
	jne	LBB52_135
## %bb.134:
	movq	-120(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.183(%rip), %rsi
	movb	$0, %al
	callq	_error_token
LBB52_135:
	movq	-120(%rbp), %rax
	movq	136(%rax), %rax
	cmpl	$7, (%rax)
	jne	LBB52_137
## %bb.136:
	jmp	LBB52_141
LBB52_137:
	movq	-120(%rbp), %rax
	movq	136(%rax), %rax
	cmpl	$8, 20(%rax)
	jge	LBB52_139
## %bb.138:
	movq	-120(%rbp), %rax
	movq	136(%rax), %rax
	movl	20(%rax), %edi
	callq	_get_inst_suffix
	leaq	L_.str.184(%rip), %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	_out
	jmp	LBB52_140
LBB52_139:
	leaq	L_.str.185(%rip), %rdi
	movb	$0, %al
	callq	_out
LBB52_140:
	jmp	LBB52_141
LBB52_141:
	jmp	LBB52_284
LBB52_142:
	movq	-120(%rbp), %rax
	cmpl	$6, (%rax)
	jne	LBB52_146
## %bb.143:
	movq	-120(%rbp), %rax
	movq	24(%rax), %rdi
	callq	_gen
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	movq	136(%rax), %rax
	cmpq	$0, 8(%rax)
	je	LBB52_145
## %bb.144:
	movq	-120(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.186(%rip), %rsi
	movb	$0, %al
	callq	_error_token
LBB52_145:
	leaq	L_.str.187(%rip), %rdi
	movb	$0, %al
	callq	_out
	leaq	L_.str.188(%rip), %rdi
	movb	$0, %al
	callq	_out
	leaq	L_.str.189(%rip), %rdi
	movb	$0, %al
	callq	_out
	jmp	LBB52_283
LBB52_146:
	movq	-120(%rbp), %rax
	cmpl	$21, (%rax)
	jne	LBB52_162
## %bb.147:
	movq	-120(%rbp), %rax
	movq	24(%rax), %rdi
	callq	_gen
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	movq	136(%rax), %rax
	movq	%rax, -256(%rbp)
	movq	-120(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -264(%rbp)
	movq	-120(%rbp), %rax
	movq	136(%rax), %rax
	cmpl	$3, (%rax)
	jne	LBB52_149
## %bb.148:
	movl	$1, %edi
	callq	_new_type
	movq	%rax, -264(%rbp)
	movq	-120(%rbp), %rax
	movq	136(%rax), %rax
	movq	8(%rax), %rax
	movq	-264(%rbp), %rcx
	movq	%rax, 8(%rcx)
LBB52_149:
	movq	-256(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	LBB52_155
## %bb.150:
	movq	-264(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	LBB52_155
## %bb.151:
	movq	-264(%rbp), %rax
	movl	20(%rax), %ecx
	movq	-256(%rbp), %rax
	cmpl	20(%rax), %ecx
	jge	LBB52_153
## %bb.152:
	movq	-264(%rbp), %rax
	movl	20(%rax), %edi
	callq	_get_inst_suffix
	movq	-264(%rbp), %rcx
	movl	20(%rcx), %esi
	leaq	L_.str.91(%rip), %rdi
	movq	%rax, -400(%rbp)        ## 8-byte Spill
	callq	_get_register_by_size
	leaq	L_.str.190(%rip), %rdi
	movq	-400(%rbp), %rsi        ## 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	_out
	leaq	L_.str.189(%rip), %rdi
	movb	$0, %al
	callq	_out
	jmp	LBB52_154
LBB52_153:
	jmp	LBB52_154
LBB52_154:
	jmp	LBB52_161
LBB52_155:
	movq	-264(%rbp), %rax
	cmpl	$0, 24(%rax)
	je	LBB52_157
## %bb.156:
	leaq	L_.str.187(%rip), %rdi
	movb	$0, %al
	callq	_out
	movq	-264(%rbp), %rdi
	movl	20(%rdi), %edi
	callq	_get_inst_suffix
	movq	-264(%rbp), %rcx
	movl	20(%rcx), %esi
	leaq	L_.str.91(%rip), %rdi
	movq	%rax, -408(%rbp)        ## 8-byte Spill
	callq	_get_register_by_size
	movq	-264(%rbp), %rcx
	movl	20(%rcx), %esi
	leaq	L_.str.119(%rip), %rdi
	movq	%rax, -416(%rbp)        ## 8-byte Spill
	callq	_get_register_by_size
	leaq	L_.str.191(%rip), %rdi
	movq	-408(%rbp), %rsi        ## 8-byte Reload
	movq	-416(%rbp), %rdx        ## 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	_out
	leaq	L_.str.189(%rip), %rdi
	movb	$0, %al
	callq	_out
	jmp	LBB52_160
LBB52_157:
	movq	-264(%rbp), %rax
	cmpl	$8, 20(%rax)
	jge	LBB52_159
## %bb.158:
	leaq	L_.str.187(%rip), %rdi
	movb	$0, %al
	callq	_out
	movq	-264(%rbp), %rdi
	movl	20(%rdi), %edi
	callq	_get_inst_suffix
	movq	-264(%rbp), %rcx
	movl	20(%rcx), %esi
	leaq	L_.str.91(%rip), %rdi
	movq	%rax, -424(%rbp)        ## 8-byte Spill
	callq	_get_register_by_size
	movq	-264(%rbp), %rcx
	movl	20(%rcx), %esi
	leaq	L_.str.119(%rip), %rdi
	movq	%rax, -432(%rbp)        ## 8-byte Spill
	callq	_get_register_by_size
	leaq	L_.str.191(%rip), %rdi
	movq	-424(%rbp), %rsi        ## 8-byte Reload
	movq	-432(%rbp), %rdx        ## 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	_out
	movq	-264(%rbp), %rcx
	movl	20(%rcx), %edi
	callq	_get_inst_suffix
	movq	-264(%rbp), %rcx
	movl	20(%rcx), %esi
	leaq	L_.str.119(%rip), %rdi
	movq	%rax, -440(%rbp)        ## 8-byte Spill
	callq	_get_register_by_size
	leaq	L_.str.192(%rip), %rdi
	movq	-440(%rbp), %rsi        ## 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	_out
LBB52_159:
	jmp	LBB52_160
LBB52_160:
	jmp	LBB52_161
LBB52_161:
	jmp	LBB52_282
LBB52_162:
	movq	-120(%rbp), %rax
	cmpl	$4, (%rax)
	jne	LBB52_226
## %bb.163:
	movq	-120(%rbp), %rax
	movq	24(%rax), %rdi
	callq	_gen
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	movl	(%rax), %edi
	movl	$258, %esi              ## imm = 0x102
	movl	$259, %edx              ## imm = 0x103
	movl	$4294967295, %ecx       ## imm = 0xFFFFFFFF
	movb	$0, %al
	callq	_type_match
	cmpl	$0, %eax
	je	LBB52_165
## %bb.164:
	movl	_curr_label(%rip), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, _curr_label(%rip)
	movl	%eax, -268(%rbp)
	movq	-120(%rbp), %rdx
	movq	16(%rdx), %rdx
	cmpl	$258, (%rdx)            ## imm = 0x102
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movl	%eax, -272(%rbp)
	leaq	L_.str.141(%rip), %rdi
	movb	$0, %al
	callq	_out
	cmpl	$0, -272(%rbp)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %esi
	leaq	L_.str.193(%rip), %rdi
	movb	$0, %al
	callq	_out
	movl	-272(%rbp), %ecx
	cmpl	$0, %ecx
	leaq	L_.str.195(%rip), %rdx
	leaq	L_.str.196(%rip), %rdi
	cmovneq	%rdx, %rdi
	movl	-268(%rbp), %edx
	leaq	L_.str.194(%rip), %r8
	movq	%rdi, -448(%rbp)        ## 8-byte Spill
	movq	%r8, %rdi
	movq	-448(%rbp), %rsi        ## 8-byte Reload
	movb	$0, %al
	callq	_out
	movq	-120(%rbp), %rsi
	movq	32(%rsi), %rdi
	callq	_gen
	leaq	L_.str.141(%rip), %rdi
	movb	$0, %al
	callq	_out
	leaq	L_.str.197(%rip), %rdi
	movb	$0, %al
	callq	_out
	leaq	L_.str.198(%rip), %rdi
	movb	$0, %al
	callq	_out
	movq	_f@GOTPCREL(%rip), %rsi
	movq	(%rsi), %rdi
	movl	-268(%rbp), %edx
	leaq	L_.str.199(%rip), %rsi
	movb	$0, %al
	callq	_fprintf
	movl	%eax, -452(%rbp)        ## 4-byte Spill
	jmp	LBB52_225
LBB52_165:
	leaq	L_.str.179(%rip), %rdi
	movb	$0, %al
	callq	_out
	movq	-120(%rbp), %rdi
	movq	32(%rdi), %rdi
	callq	_gen
	leaq	L_.str.200(%rip), %rdi
	movb	$0, %al
	callq	_out
	leaq	L_.str.201(%rip), %rdi
	movb	$0, %al
	callq	_out
	movq	-120(%rbp), %rdi
	movq	24(%rdi), %rdi
	cmpq	$0, 136(%rdi)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %ecx
	movslq	%ecx, %rdi
	cmpq	$0, %rdi
	je	LBB52_167
## %bb.166:
	leaq	L___func__.gen(%rip), %rdi
	leaq	L_.str.85(%rip), %rsi
	leaq	L_.str.202(%rip), %rcx
	movl	$533, %edx              ## imm = 0x215
	callq	___assert_rtn
LBB52_167:
	jmp	LBB52_168
LBB52_168:
	movq	-120(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$0, 136(%rax)
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rax
	cmpq	$0, %rax
	je	LBB52_170
## %bb.169:
	leaq	L___func__.gen(%rip), %rdi
	leaq	L_.str.85(%rip), %rsi
	leaq	L_.str.203(%rip), %rcx
	movl	$534, %edx              ## imm = 0x216
	callq	___assert_rtn
LBB52_170:
	jmp	LBB52_171
LBB52_171:
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	cmpl	$43, (%rax)
	je	LBB52_173
## %bb.172:
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	cmpl	$45, (%rax)
	jne	LBB52_182
LBB52_173:
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	movq	136(%rax), %rax
	cmpq	$0, 8(%rax)
	je	LBB52_176
## %bb.174:
	movq	-120(%rbp), %rax
	movq	32(%rax), %rax
	movq	136(%rax), %rax
	cmpq	$0, 8(%rax)
	jne	LBB52_176
## %bb.175:
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	movq	136(%rax), %rax
	movq	8(%rax), %rax
	movl	20(%rax), %esi
	leaq	L_.str.204(%rip), %rdi
	movb	$0, %al
	callq	_out
	jmp	LBB52_181
LBB52_176:
	movq	-120(%rbp), %rax
	movq	32(%rax), %rax
	movq	136(%rax), %rax
	cmpq	$0, 8(%rax)
	je	LBB52_180
## %bb.177:
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	movq	136(%rax), %rax
	cmpq	$0, 8(%rax)
	jne	LBB52_180
## %bb.178:
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	cmpl	$43, (%rax)
	jne	LBB52_180
## %bb.179:
	movq	-120(%rbp), %rax
	movq	32(%rax), %rax
	movq	136(%rax), %rax
	movq	8(%rax), %rax
	movl	20(%rax), %esi
	leaq	L_.str.205(%rip), %rdi
	movb	$0, %al
	callq	_out
LBB52_180:
	jmp	LBB52_181
LBB52_181:
	jmp	LBB52_182
LBB52_182:
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	cmpl	$43, (%rax)
	jne	LBB52_184
## %bb.183:
	leaq	L_.str.206(%rip), %rdi
	movb	$0, %al
	callq	_out
	jmp	LBB52_220
LBB52_184:
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	cmpl	$45, (%rax)
	jne	LBB52_186
## %bb.185:
	leaq	L_.str.207(%rip), %rdi
	movb	$0, %al
	callq	_out
	jmp	LBB52_219
LBB52_186:
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	cmpl	$42, (%rax)
	jne	LBB52_188
## %bb.187:
	leaq	L_.str.208(%rip), %rdi
	movb	$0, %al
	callq	_out
	jmp	LBB52_218
LBB52_188:
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	cmpl	$47, (%rax)
	je	LBB52_190
## %bb.189:
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	cmpl	$37, (%rax)
	jne	LBB52_196
LBB52_190:
	movq	-120(%rbp), %rax
	movq	136(%rax), %rax
	cmpl	$0, 24(%rax)
	jne	LBB52_192
## %bb.191:
	leaq	L_.str.209(%rip), %rdi
	movb	$0, %al
	callq	_out
	leaq	L_.str.210(%rip), %rdi
	movb	$0, %al
	callq	_out
	jmp	LBB52_193
LBB52_192:
	leaq	L_.str.211(%rip), %rdi
	movb	$0, %al
	callq	_out
	leaq	L_.str.212(%rip), %rdi
	movb	$0, %al
	callq	_out
LBB52_193:
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	cmpl	$37, (%rax)
	jne	LBB52_195
## %bb.194:
	leaq	L_.str.213(%rip), %rdi
	movb	$0, %al
	callq	_out
LBB52_195:
	jmp	LBB52_217
LBB52_196:
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	movl	(%rax), %edi
	movl	$260, %esi              ## imm = 0x104
	movl	$261, %edx              ## imm = 0x105
	movl	$262, %ecx              ## imm = 0x106
	movl	$263, %r8d              ## imm = 0x107
	movl	$60, %r9d
	movl	$62, (%rsp)
	movl	$-1, 8(%rsp)
	movb	$0, %al
	callq	_type_match
	cmpl	$0, %eax
	je	LBB52_216
## %bb.197:
	leaq	L_.str.195(%rip), %rax
	movq	%rax, -280(%rbp)
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	cmpl	$260, (%rax)            ## imm = 0x104
	jne	LBB52_199
## %bb.198:
	leaq	L_.str.214(%rip), %rax
	movq	%rax, -280(%rbp)
	jmp	LBB52_215
LBB52_199:
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	cmpl	$261, (%rax)            ## imm = 0x105
	jne	LBB52_201
## %bb.200:
	leaq	L_.str.215(%rip), %rax
	movq	%rax, -280(%rbp)
	jmp	LBB52_214
LBB52_201:
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	cmpl	$60, (%rax)
	jne	LBB52_203
## %bb.202:
	leaq	L_.str.83(%rip), %rax
	movq	%rax, -280(%rbp)
	jmp	LBB52_213
LBB52_203:
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	cmpl	$62, (%rax)
	jne	LBB52_205
## %bb.204:
	leaq	L_.str.216(%rip), %rax
	movq	%rax, -280(%rbp)
	jmp	LBB52_212
LBB52_205:
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	cmpl	$262, (%rax)            ## imm = 0x106
	jne	LBB52_207
## %bb.206:
	leaq	L_.str.217(%rip), %rax
	movq	%rax, -280(%rbp)
	jmp	LBB52_211
LBB52_207:
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	cmpl	$263, (%rax)            ## imm = 0x107
	jne	LBB52_209
## %bb.208:
	leaq	L_.str.218(%rip), %rax
	movq	%rax, -280(%rbp)
	jmp	LBB52_210
LBB52_209:
	leaq	L___func__.gen(%rip), %rdi
	leaq	L_.str.85(%rip), %rsi
	leaq	L_.str.4(%rip), %rcx
	movl	$584, %edx              ## imm = 0x248
	callq	___assert_rtn
LBB52_210:
	jmp	LBB52_211
LBB52_211:
	jmp	LBB52_212
LBB52_212:
	jmp	LBB52_213
LBB52_213:
	jmp	LBB52_214
LBB52_214:
	jmp	LBB52_215
LBB52_215:
	leaq	L_.str.219(%rip), %rdi
	movb	$0, %al
	callq	_out
	movq	-280(%rbp), %rsi
	leaq	L_.str.220(%rip), %rdi
	movb	$0, %al
	callq	_out
	leaq	L_.str.221(%rip), %rdi
	movb	$0, %al
	callq	_out
	leaq	L_.str.198(%rip), %rdi
	movb	$0, %al
	callq	_out
LBB52_216:
	jmp	LBB52_217
LBB52_217:
	jmp	LBB52_218
LBB52_218:
	jmp	LBB52_219
LBB52_219:
	jmp	LBB52_220
LBB52_220:
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	movq	136(%rax), %rax
	cmpq	$0, 8(%rax)
	je	LBB52_224
## %bb.221:
	movq	-120(%rbp), %rax
	movq	32(%rax), %rax
	movq	136(%rax), %rax
	cmpq	$0, 8(%rax)
	je	LBB52_224
## %bb.222:
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	cmpl	$45, (%rax)
	jne	LBB52_224
## %bb.223:
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	movq	136(%rax), %rax
	movq	8(%rax), %rax
	movl	20(%rax), %esi
	leaq	L_.str.222(%rip), %rdi
	movb	$0, %al
	callq	_out
	leaq	L_.str.211(%rip), %rdi
	movb	$0, %al
	callq	_out
	leaq	L_.str.212(%rip), %rdi
	movb	$0, %al
	callq	_out
LBB52_224:
	jmp	LBB52_225
LBB52_225:
	jmp	LBB52_281
LBB52_226:
	movq	-120(%rbp), %rax
	cmpl	$5, (%rax)
	jne	LBB52_250
## %bb.227:
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	cmpl	$15, (%rax)
	jne	LBB52_234
## %bb.228:
	movq	-120(%rbp), %rax
	movq	32(%rax), %rdi
	callq	_gen
	movq	-120(%rbp), %rax
	movq	136(%rax), %rax
	cmpl	$7, (%rax)
	jne	LBB52_230
## %bb.229:
	leaq	L_.str.223(%rip), %rdi
	movb	$0, %al
	callq	_out
	movq	-120(%rbp), %rdi
	movq	24(%rdi), %rdi
	callq	_gen
	leaq	L_.str.224(%rip), %rdi
	movb	$0, %al
	callq	_out
	movq	-120(%rbp), %rdi
	movq	136(%rdi), %rdi
	movl	20(%rdi), %esi
	leaq	L_.str.225(%rip), %rdi
	movb	$0, %al
	callq	_out
	leaq	L_.str.226(%rip), %rdi
	movb	$0, %al
	callq	_out
	jmp	LBB52_233
LBB52_230:
	leaq	L_.str.179(%rip), %rdi
	movb	$0, %al
	callq	_out
	movq	-120(%rbp), %rdi
	movq	24(%rdi), %rdi
	movq	24(%rdi), %rdi
	callq	_gen
	movq	-120(%rbp), %rdi
	movq	24(%rdi), %rdi
	movq	24(%rdi), %rdi
	movq	136(%rdi), %rdi
	cmpq	$0, 8(%rdi)
	jne	LBB52_232
## %bb.231:
	movq	-120(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.183(%rip), %rsi
	movb	$0, %al
	callq	_error_token
LBB52_232:
	leaq	L_.str.227(%rip), %rdi
	movb	$0, %al
	callq	_out
	movq	-120(%rbp), %rdi
	movq	136(%rdi), %rdi
	movl	20(%rdi), %edi
	callq	_get_inst_suffix
	movq	-120(%rbp), %rcx
	movq	136(%rcx), %rcx
	movl	20(%rcx), %esi
	leaq	L_.str.119(%rip), %rdi
	movq	%rax, -464(%rbp)        ## 8-byte Spill
	callq	_get_register_by_size
	leaq	L_.str.228(%rip), %rdi
	movq	-464(%rbp), %rsi        ## 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	_out
LBB52_233:
	jmp	LBB52_249
LBB52_234:
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	cmpl	$2, (%rax)
	jne	LBB52_247
## %bb.235:
	movq	-120(%rbp), %rax
	movq	32(%rax), %rdi
	callq	_gen
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	-120(%rbp), %rdi
	movq	24(%rdi), %rdi
	movq	%rax, 136(%rdi)
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$0, 136(%rax)
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rax
	cmpq	$0, %rax
	je	LBB52_237
## %bb.236:
	leaq	L___func__.gen(%rip), %rdi
	leaq	L_.str.85(%rip), %rsi
	leaq	L_.str.202(%rip), %rcx
	movl	$630, %edx              ## imm = 0x276
	callq	___assert_rtn
LBB52_237:
	jmp	LBB52_238
LBB52_238:
	movq	-120(%rbp), %rax
	movq	136(%rax), %rax
	cmpl	$3, (%rax)
	jne	LBB52_240
## %bb.239:
	movq	-120(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.229(%rip), %rsi
	movb	$0, %al
	callq	_error_token
LBB52_240:
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rax
	cmpl	$0, 32(%rax)
	je	LBB52_242
## %bb.241:
	movq	-120(%rbp), %rax
	movq	136(%rax), %rax
	movl	20(%rax), %edi
	callq	_get_inst_suffix
	movq	-120(%rbp), %rcx
	movq	136(%rcx), %rcx
	movl	20(%rcx), %esi
	leaq	L_.str.91(%rip), %rdi
	movq	%rax, -472(%rbp)        ## 8-byte Spill
	callq	_get_register_by_size
	movq	-120(%rbp), %rcx
	movq	24(%rcx), %rcx
	movq	8(%rcx), %rcx
	movq	8(%rcx), %rcx
	leaq	L_.str.230(%rip), %rdi
	movq	-472(%rbp), %rsi        ## 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	_out
	jmp	LBB52_246
LBB52_242:
	movq	-120(%rbp), %rax
	movq	136(%rax), %rax
	cmpl	$7, (%rax)
	jne	LBB52_244
## %bb.243:
	leaq	L_.str.231(%rip), %rdi
	movb	$0, %al
	callq	_out
	movq	-120(%rbp), %rdi
	movq	24(%rdi), %rdi
	movq	8(%rdi), %rdi
	movl	16(%rdi), %esi
	leaq	L_.str.232(%rip), %rdi
	movb	$0, %al
	callq	_out
	leaq	L_.str.223(%rip), %rdi
	movb	$0, %al
	callq	_out
	movq	-120(%rbp), %rdi
	movq	24(%rdi), %rdi
	movq	8(%rdi), %rdi
	movq	(%rdi), %rdi
	movl	20(%rdi), %esi
	leaq	L_.str.225(%rip), %rdi
	movb	$0, %al
	callq	_out
	leaq	L_.str.226(%rip), %rdi
	movb	$0, %al
	callq	_out
	jmp	LBB52_245
LBB52_244:
	movq	-120(%rbp), %rax
	movq	136(%rax), %rax
	movl	20(%rax), %edi
	callq	_get_inst_suffix
	movq	-120(%rbp), %rcx
	movq	136(%rcx), %rcx
	movl	20(%rcx), %esi
	leaq	L_.str.91(%rip), %rdi
	movq	%rax, -480(%rbp)        ## 8-byte Spill
	callq	_get_register_by_size
	movq	-120(%rbp), %rcx
	movq	24(%rcx), %rcx
	movq	8(%rcx), %rcx
	movl	16(%rcx), %ecx
	leaq	L_.str.130(%rip), %rdi
	movq	-480(%rbp), %rsi        ## 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	_out
LBB52_245:
	jmp	LBB52_246
LBB52_246:
	jmp	LBB52_248
LBB52_247:
	leaq	L___func__.gen(%rip), %rdi
	leaq	L_.str.85(%rip), %rsi
	leaq	L_.str.4(%rip), %rcx
	movl	$660, %edx              ## imm = 0x294
	callq	___assert_rtn
LBB52_248:
	jmp	LBB52_249
LBB52_249:
	jmp	LBB52_280
LBB52_250:
	movq	-120(%rbp), %rax
	cmpl	$19, (%rax)
	jne	LBB52_257
## %bb.251:
	cmpl	$0, _loop_counter(%rip)
	jne	LBB52_253
## %bb.252:
	movq	-120(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.233(%rip), %rsi
	movb	$0, %al
	callq	_error_token
LBB52_253:
	movq	_curr_loop_is_for@GOTPCREL(%rip), %rax
	cmpl	$0, (%rax)
	je	LBB52_255
## %bb.254:
	movq	_curr_loop_label@GOTPCREL(%rip), %rax
	movl	(%rax), %esi
	leaq	L_.str.234(%rip), %rdi
	movb	$0, %al
	callq	_out
	jmp	LBB52_256
LBB52_255:
	movq	_curr_loop_label@GOTPCREL(%rip), %rax
	movl	(%rax), %esi
	leaq	L_.str.148(%rip), %rdi
	movb	$0, %al
	callq	_out
LBB52_256:
	jmp	LBB52_279
LBB52_257:
	movq	-120(%rbp), %rax
	cmpl	$20, (%rax)
	jne	LBB52_264
## %bb.258:
	cmpl	$0, _loop_counter(%rip)
	jne	LBB52_260
## %bb.259:
	movq	-120(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.235(%rip), %rsi
	movb	$0, %al
	callq	_error_token
LBB52_260:
	movq	_curr_loop_is_for@GOTPCREL(%rip), %rax
	cmpl	$0, (%rax)
	je	LBB52_262
## %bb.261:
	movq	_curr_loop_label@GOTPCREL(%rip), %rax
	movl	(%rax), %esi
	leaq	L_.str.236(%rip), %rdi
	movb	$0, %al
	callq	_out
	jmp	LBB52_263
LBB52_262:
	movq	_curr_loop_label@GOTPCREL(%rip), %rax
	movl	(%rax), %esi
	leaq	L_.str.237(%rip), %rdi
	movb	$0, %al
	callq	_out
LBB52_263:
	jmp	LBB52_278
LBB52_264:
	movq	-120(%rbp), %rax
	cmpl	$13, (%rax)
	jne	LBB52_273
## %bb.265:
	movq	-120(%rbp), %rax
	movq	24(%rax), %rdi
	callq	_gen
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	cmpl	$33, (%rax)
	jne	LBB52_267
## %bb.266:
	leaq	L_.str.141(%rip), %rdi
	movb	$0, %al
	callq	_out
	leaq	L_.str.197(%rip), %rdi
	movb	$0, %al
	callq	_out
	leaq	L_.str.238(%rip), %rdi
	movb	$0, %al
	callq	_out
	leaq	L_.str.221(%rip), %rdi
	movb	$0, %al
	callq	_out
	leaq	L_.str.198(%rip), %rdi
	movb	$0, %al
	callq	_out
	jmp	LBB52_272
LBB52_267:
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	cmpl	$275, (%rax)            ## imm = 0x113
	je	LBB52_269
## %bb.268:
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	cmpl	$276, (%rax)            ## imm = 0x114
	jne	LBB52_270
LBB52_269:
	leaq	L_.str.179(%rip), %rdi
	movb	$0, %al
	callq	_out
	movl	$3, %edi
	callq	_new_node
	movq	%rax, -288(%rbp)
	movl	$256, %edi              ## imm = 0x100
	callq	_new_temp_token
	movq	-288(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	movl	(%rax), %edi
	cmpl	$275, %edi              ## imm = 0x113
	movl	$1, %edi
	movl	$4294967295, %edx       ## imm = 0xFFFFFFFF
	cmovel	%edi, %edx
	movslq	%edx, %rax
	movq	-288(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rax, 8(%rcx)
	movl	$5, %edi
	callq	_new_node
	movq	%rax, -296(%rbp)
	movl	$61, %edi
	callq	_new_temp_token
	movq	-296(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	movq	-296(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movl	$4, %edi
	callq	_new_node
	movq	-296(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movl	$43, %edi
	callq	_new_temp_token
	movq	-296(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rax, 16(%rcx)
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	movq	-296(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rax, 24(%rcx)
	movq	-288(%rbp), %rax
	movq	-296(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rax, 32(%rcx)
	movq	-296(%rbp), %rdi
	callq	_add_type
	movq	-296(%rbp), %rdi
	movq	%rax, -488(%rbp)        ## 8-byte Spill
	callq	_gen
	leaq	L_.str.201(%rip), %rdi
	movb	$0, %al
	callq	_out
	jmp	LBB52_271
LBB52_270:
	leaq	L___func__.gen(%rip), %rdi
	leaq	L_.str.85(%rip), %rsi
	leaq	L_.str.4(%rip), %rcx
	movl	$709, %edx              ## imm = 0x2C5
	callq	___assert_rtn
LBB52_271:
	jmp	LBB52_272
LBB52_272:
	jmp	LBB52_277
LBB52_273:
	movq	-120(%rbp), %rax
	cmpl	$22, (%rax)
	jne	LBB52_275
## %bb.274:
	movl	_curr_label(%rip), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, _curr_label(%rip)
	movl	%eax, -300(%rbp)
	movq	-120(%rbp), %rdx
	movq	56(%rdx), %rdi
	callq	_gen
	leaq	L_.str.141(%rip), %rdi
	movb	$0, %al
	callq	_out
	movl	-300(%rbp), %esi
	leaq	L_.str.239(%rip), %rdi
	movb	$0, %al
	callq	_out
	movq	-120(%rbp), %rdx
	movq	24(%rdx), %rdi
	callq	_gen
	movl	-300(%rbp), %esi
	leaq	L_.str.240(%rip), %rdi
	movb	$0, %al
	callq	_out
	movq	_f@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdi
	movl	-300(%rbp), %edx
	leaq	L_.str.241(%rip), %rsi
	movb	$0, %al
	callq	_fprintf
	movq	-120(%rbp), %rsi
	movq	32(%rsi), %rdi
	movl	%eax, -492(%rbp)        ## 4-byte Spill
	callq	_gen
	movq	_f@GOTPCREL(%rip), %rsi
	movq	(%rsi), %rdi
	movl	-300(%rbp), %edx
	leaq	L_.str.242(%rip), %rsi
	movb	$0, %al
	callq	_fprintf
	movl	%eax, -496(%rbp)        ## 4-byte Spill
	jmp	LBB52_276
LBB52_275:
	leaq	L___func__.gen(%rip), %rdi
	leaq	L_.str.85(%rip), %rsi
	leaq	L_.str.4(%rip), %rcx
	movl	$725, %edx              ## imm = 0x2D5
	callq	___assert_rtn
LBB52_276:
	jmp	LBB52_277
LBB52_277:
	jmp	LBB52_278
LBB52_278:
	jmp	LBB52_279
LBB52_279:
	jmp	LBB52_280
LBB52_280:
	jmp	LBB52_281
LBB52_281:
	jmp	LBB52_282
LBB52_282:
	jmp	LBB52_283
LBB52_283:
	jmp	LBB52_284
LBB52_284:
	jmp	LBB52_285
LBB52_285:
	jmp	LBB52_286
LBB52_286:
	jmp	LBB52_287
LBB52_287:
	jmp	LBB52_288
LBB52_288:
	jmp	LBB52_289
LBB52_289:
	jmp	LBB52_290
LBB52_290:
	jmp	LBB52_291
LBB52_291:
	jmp	LBB52_292
LBB52_292:
	jmp	LBB52_293
LBB52_293:
	jmp	LBB52_294
LBB52_294:
	jmp	LBB52_295
LBB52_295:
	jmp	LBB52_296
LBB52_296:
	jmp	LBB52_297
LBB52_297:
	movq	-120(%rbp), %rax
	cmpq	$0, 104(%rax)
	je	LBB52_299
## %bb.298:
	movq	-120(%rbp), %rax
	movq	104(%rax), %rdi
	callq	_gen
LBB52_299:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB52_301
## %bb.300:
	addq	$512, %rsp              ## imm = 0x200
	popq	%rbp
	retq
LBB52_301:
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
	subq	$96, %rsp
	movq	_filename@GOTPCREL(%rip), %rax
	movl	$0, -4(%rbp)
	leaq	L_.str.243(%rip), %rcx
	movq	%rcx, (%rax)
	movl	$6, %edi
	callq	_new_type
	xorl	%edi, %edi
	movq	_type_long@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	callq	_new_type
	movq	_type_int@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movl	$4, %edi
	callq	_new_type
	movq	_type_short@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movl	$5, %edi
	callq	_new_type
	movq	_type_char@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movl	$2, %edi
	callq	_new_type
	movq	_filename@GOTPCREL(%rip), %rcx
	movq	_type_void@GOTPCREL(%rip), %rdx
	movq	%rax, (%rdx)
	movq	(%rcx), %rdi
	callq	_read_entire_file
	movq	_program_str@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	(%rcx), %rdi
	callq	_parse
	movq	_filename@GOTPCREL(%rip), %rcx
	movq	%rax, -16(%rbp)
	movq	(%rcx), %rdi
	callq	_strdup
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	callq	_strlen
	subq	$1, %rax
	movq	-56(%rbp), %rcx         ## 8-byte Reload
	movb	$115, (%rcx,%rax)
	movq	-24(%rbp), %rdi
	leaq	L_.str.82(%rip), %rsi
	callq	_fopen
	movq	_f@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	cmpq	$0, (%rcx)
	setne	%r8b
	xorb	$-1, %r8b
	andb	$1, %r8b
	movzbl	%r8b, %r9d
	movslq	%r9d, %rax
	cmpq	$0, %rax
	je	LBB53_2
## %bb.1:
	leaq	L_.str.124(%rip), %rdi
	leaq	L_.str.244(%rip), %rsi
	leaq	L_.str.245(%rip), %rcx
	movl	$120, %edx
	callq	___assert_rtn
LBB53_2:
	jmp	LBB53_3
LBB53_3:
	movq	-16(%rbp), %rdi
	callq	_gen
	leaq	L_.str.246(%rip), %rdi
	movb	$0, %al
	callq	_out
	movl	$0, -28(%rbp)
LBB53_4:                                ## =>This Inner Loop Header: Depth=1
	movq	_curr_scope@GOTPCREL(%rip), %rax
	movl	-28(%rbp), %ecx
	movq	(%rax), %rax
	cmpl	832(%rax), %ecx
	jge	LBB53_18
## %bb.5:                               ##   in Loop: Header=BB53_4 Depth=1
	movq	_curr_scope@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movslq	-28(%rbp), %rcx
	movq	32(%rax,%rcx,8), %rax
	movq	40(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	LBB53_8
## %bb.6:                               ##   in Loop: Header=BB53_4 Depth=1
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	32(%rax), %rax
	cmpl	$3, (%rax)
	je	LBB53_8
## %bb.7:                               ##   in Loop: Header=BB53_4 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	16(%rax), %rax
	movl	(%rax), %edx
	leaq	L_.str.247(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movq	-40(%rbp), %rsi
	movq	24(%rsi), %rsi
	movq	16(%rsi), %rdi
	leaq	L_.str.248(%rip), %rsi
	movl	%eax, -60(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_error_token
LBB53_8:                                ##   in Loop: Header=BB53_4 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	cmpl	$3, (%rax)
	jne	LBB53_10
## %bb.9:                               ##   in Loop: Header=BB53_4 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movl	16(%rax), %ecx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	imull	20(%rax), %ecx
	leaq	L_.str.249(%rip), %rdi
	movl	%ecx, %edx
	movl	$16, %ecx
	movb	$0, %al
	callq	_out
	jmp	LBB53_16
LBB53_10:                               ##   in Loop: Header=BB53_4 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rsi
	leaq	L_.str.250(%rip), %rdi
	movb	$0, %al
	callq	_out
	movq	-40(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	(%rsi), %rsi
	movl	20(%rsi), %edi
	callq	_log2_int
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	je	LBB53_12
## %bb.11:                              ##   in Loop: Header=BB53_4 Depth=1
	movl	-44(%rbp), %esi
	leaq	L_.str.251(%rip), %rdi
	movb	$0, %al
	callq	_out
LBB53_12:                               ##   in Loop: Header=BB53_4 Depth=1
	movq	_curr_scope@GOTPCREL(%rip), %rax
	movq	_f@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rdi
	movq	(%rax), %rax
	movslq	-28(%rbp), %rcx
	movq	32(%rax,%rcx,8), %rax
	movq	8(%rax), %rdx
	leaq	L_.str.126(%rip), %rsi
	movb	$0, %al
	callq	_fprintf
	movq	_curr_scope@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movslq	-28(%rbp), %rdx
	movq	32(%rcx,%rdx,8), %rcx
	movq	(%rcx), %rcx
	movl	20(%rcx), %edi
	movl	%eax, -64(%rbp)         ## 4-byte Spill
	callq	_get_size_name
	movq	-40(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -72(%rbp)         ## 8-byte Spill
	jne	LBB53_14
## %bb.13:                              ##   in Loop: Header=BB53_4 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         ## 8-byte Spill
	jmp	LBB53_15
LBB53_14:                               ##   in Loop: Header=BB53_4 Depth=1
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)         ## 8-byte Spill
LBB53_15:                               ##   in Loop: Header=BB53_4 Depth=1
	movq	-80(%rbp), %rax         ## 8-byte Reload
	leaq	L_.str.252(%rip), %rdi
	movq	-72(%rbp), %rsi         ## 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	_out
LBB53_16:                               ##   in Loop: Header=BB53_4 Depth=1
	jmp	LBB53_17
LBB53_17:                               ##   in Loop: Header=BB53_4 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	LBB53_4
LBB53_18:
	movl	$0, -48(%rbp)
LBB53_19:                               ## =>This Inner Loop Header: Depth=1
	movq	_strings_literal_count@GOTPCREL(%rip), %rax
	movl	-48(%rbp), %ecx
	cmpl	(%rax), %ecx
	jge	LBB53_22
## %bb.20:                              ##   in Loop: Header=BB53_19 Depth=1
	movq	_f@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movl	-48(%rbp), %edx
	leaq	L_.str.253(%rip), %rsi
	movb	$0, %al
	callq	_fprintf
	movq	_strings_literal@GOTPCREL(%rip), %rsi
	movslq	-48(%rbp), %rdi
	movq	(%rsi,%rdi,8), %rsi
	leaq	L_.str.254(%rip), %rdi
	movl	%eax, -84(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_out
## %bb.21:                              ##   in Loop: Header=BB53_19 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	LBB53_19
LBB53_22:
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_scope_count            ## @scope_count
.zerofill __DATA,__common,_scope_count,4,2
	.globl	_var_count              ## @var_count
.zerofill __DATA,__common,_var_count,4,2
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"int"

L_.str.1:                               ## @.str.1
	.asciz	"identifier"

L_.str.2:                               ## @.str.2
	.asciz	"string"

	.comm	_token_type_name_c,2040,4 ## @token_type_name_c
	.comm	_multi_char_tokens_type,320,4 ## @multi_char_tokens_type
	.comm	_keywords,480,4         ## @keywords
L___func__.token_type_name:             ## @__func__.token_type_name
	.asciz	"token_type_name"

L_.str.3:                               ## @.str.3
	.asciz	"./tokenize.c"

L_.str.4:                               ## @.str.4
	.asciz	"0"

	.globl	_multi_char_token_count ## @multi_char_token_count
.zerofill __DATA,__common,_multi_char_token_count,4,2
	.globl	_keyword_count          ## @keyword_count
.zerofill __DATA,__common,_keyword_count,4,2
L_.str.5:                               ## @.str.5
	.asciz	"=="

L_.str.6:                               ## @.str.6
	.asciz	"!="

L_.str.7:                               ## @.str.7
	.asciz	"<="

L_.str.8:                               ## @.str.8
	.asciz	">="

L_.str.9:                               ## @.str.9
	.asciz	"&&"

L_.str.10:                              ## @.str.10
	.asciz	"||"

L_.str.11:                              ## @.str.11
	.asciz	"++"

L_.str.12:                              ## @.str.12
	.asciz	"--"

L_.str.13:                              ## @.str.13
	.asciz	"+="

L_.str.14:                              ## @.str.14
	.asciz	"-="

L_.str.15:                              ## @.str.15
	.asciz	"*="

L_.str.16:                              ## @.str.16
	.asciz	"/="

L_.str.17:                              ## @.str.17
	.asciz	"->"

L_.str.18:                              ## @.str.18
	.asciz	"return"

L_.str.19:                              ## @.str.19
	.asciz	"for"

L_.str.20:                              ## @.str.20
	.asciz	"while"

L_.str.21:                              ## @.str.21
	.asciz	"if"

L_.str.22:                              ## @.str.22
	.asciz	"else"

L_.str.23:                              ## @.str.23
	.asciz	"void"

L_.str.24:                              ## @.str.24
	.asciz	"char"

L_.str.25:                              ## @.str.25
	.asciz	"short"

L_.str.26:                              ## @.str.26
	.asciz	"long"

L_.str.27:                              ## @.str.27
	.asciz	"unsigned"

L_.str.28:                              ## @.str.28
	.asciz	"signed"

L_.str.29:                              ## @.str.29
	.asciz	"break"

L_.str.30:                              ## @.str.30
	.asciz	"continue"

L_.str.31:                              ## @.str.31
	.asciz	"sizeof"

L_.str.32:                              ## @.str.32
	.asciz	"struct"

L_.str.33:                              ## @.str.33
	.asciz	"union"

L_.str.34:                              ## @.str.34
	.asciz	"enum"

L___func__.tokenize:                    ## @__func__.tokenize
	.asciz	"tokenize"

L_.str.35:                              ## @.str.35
	.asciz	"s"

	.comm	_tokens,4000000,4       ## @tokens
L_.str.36:                              ## @.str.36
	.asciz	"unclosed comment"

L_.str.37:                              ## @.str.37
	.asciz	"missing terminating ' character"

L_.str.38:                              ## @.str.38
	.asciz	"missing terminating \" character"

L_.str.39:                              ## @.str.39
	.asciz	"+-*/%()=;,<>{}&[]?:.!"

L_.str.40:                              ## @.str.40
	.asciz	"unknown token `%c`"

	.comm	_scopes,84000000,4      ## @scopes
	.comm	_curr_scope,8,3         ## @curr_scope
	.comm	_types,20560000,4       ## @types
	.comm	_type_count,4,2         ## @type_count
	.comm	_funcs,160000,4         ## @funcs
	.comm	_func_count,4,2         ## @func_count
	.comm	__nodes,177600000,4     ## @_nodes
	.comm	__curr_node,4,2         ## @_curr_node
	.comm	_ct,4,2                 ## @ct
	.comm	_vars,480000,4          ## @vars
L_.str.41:                              ## @.str.41
	.asciz	"redeclaration of variable \"%s\"\n"

L___func__.new_var:                     ## @__func__.new_var
	.asciz	"new_var"

L_.str.42:                              ## @.str.42
	.asciz	"./parse.c"

L_.str.43:                              ## @.str.43
	.asciz	"v->token->type == TOKEN_IDENTIFIER && v->token->name == v->name"

L_.str.44:                              ## @.str.44
	.asciz	"type with size 0?"

	.comm	_curr_func,8,3          ## @curr_func
L_.str.45:                              ## @.str.45
	.asciz	"v->offset % v->type->size == 0"

L_.str.46:                              ## @.str.46
	.asciz	"expected `%s`"

	.comm	_types_declared_count,4,2 ## @types_declared_count
	.comm	_types_declared,8000,4  ## @types_declared
L_.str.47:                              ## @.str.47
	.asciz	"struct "

L_.str.48:                              ## @.str.48
	.asciz	"*"

L_.str.49:                              ## @.str.49
	.asciz	"[]"

L_.str.50:                              ## @.str.50
	.asciz	"unknown"

L___func__.get_type_str:                ## @__func__.get_type_str
	.asciz	"get_type_str"

	.comm	_type_int,8,3           ## @type_int
	.comm	_type_void,8,3          ## @type_void
	.comm	_type_long,8,3          ## @type_long
L_.str.51:                              ## @.str.51
	.asciz	"invalid operand for '%s' operator"

L___func__.add_type:                    ## @__func__.add_type
	.asciz	"add_type"

	.comm	_type_char,8,3          ## @type_char
L_.str.52:                              ## @.str.52
	.asciz	"invalid operand for '&'"

L_.str.53:                              ## @.str.53
	.asciz	"derefrencing a non-pointer"

L_.str.54:                              ## @.str.54
	.asciz	"derefrencing a void pointer"

L_.str.55:                              ## @.str.55
	.asciz	"invalid operand for '-'"

L_.str.56:                              ## @.str.56
	.asciz	"invalid operands to binary expression ('%s' and '%s')"

L_.str.57:                              ## @.str.57
	.asciz	"t->t != VOID"

L_.str.58:                              ## @.str.58
	.asciz	"ASSERT"

	.comm	_enums,160000,4         ## @enums
	.comm	_enum_count,4,2         ## @enum_count
L___func__.parse:                       ## @__func__.parse
	.asciz	"parse"

L_.str.59:                              ## @.str.59
	.asciz	"node->var->type->size"

L_.str.60:                              ## @.str.60
	.asciz	"empty structs are not handled yet"

L_.str.61:                              ## @.str.61
	.asciz	"expected a function or variable declaration"

L_.str.62:                              ## @.str.62
	.asciz	"unknown type"

L_.str.63:                              ## @.str.63
	.asciz	"declared struct '%s': (size=%d)\n"

L_.str.64:                              ## @.str.64
	.asciz	"\t%s %s\n"

L_.str.65:                              ## @.str.65
	.asciz	"invalid type"

L_.str.66:                              ## @.str.66
	.asciz	"variable type can't be void"

L_.str.67:                              ## @.str.67
	.asciz	"invalid initiliazer"

L___func__.statement:                   ## @__func__.statement
	.asciz	"statement"

L_.str.68:                              ## @.str.68
	.asciz	"curr->next_in_block"

L_.str.69:                              ## @.str.69
	.asciz	"curr"

L_.str.70:                              ## @.str.70
	.asciz	"expression is not assignable"

L___func__.unary:                       ## @__func__.unary
	.asciz	"unary"

L_.str.71:                              ## @.str.71
	.asciz	"t"

L___func__.postfix:                     ## @__func__.postfix
	.asciz	"postfix"

L_.str.72:                              ## @.str.72
	.asciz	"type->t == PTR"

L_.str.73:                              ## @.str.73
	.asciz	"type->ptr_to->t != UNKNOWN"

L_.str.74:                              ## @.str.74
	.asciz	"type->ptr_to->t == STRUCT"

L_.str.75:                              ## @.str.75
	.asciz	"expected struct pointer"

L_.str.76:                              ## @.str.76
	.asciz	"expected struct type"

L_.str.77:                              ## @.str.77
	.asciz	"undeclared struct member"

L_.str.78:                              ## @.str.78
	.asciz	"undeclared function \"%s\""

L_.str.79:                              ## @.str.79
	.asciz	"undeclared variable `%s`\n"

L_.str.80:                              ## @.str.80
	.asciz	"expected an expression"

L_.str.81:                              ## @.str.81
	.asciz	"b"

L_.str.82:                              ## @.str.82
	.asciz	"w"

L_.str.83:                              ## @.str.83
	.asciz	"l"

L_.str.84:                              ## @.str.84
	.asciz	"q"

L___func__.get_inst_suffix:             ## @__func__.get_inst_suffix
	.asciz	"get_inst_suffix"

L_.str.85:                              ## @.str.85
	.asciz	"./gen.c"

L_.str.86:                              ## @.str.86
	.asciz	"byte"

L_.str.87:                              ## @.str.87
	.asciz	"quad"

L___func__.get_size_name:               ## @__func__.get_size_name
	.asciz	"get_size_name"

L_.str.88:                              ## @.str.88
	.asciz	"al"

L_.str.89:                              ## @.str.89
	.asciz	"ax"

L_.str.90:                              ## @.str.90
	.asciz	"eax"

L_.str.91:                              ## @.str.91
	.asciz	"rax"

	.section	__DATA,__const
	.p2align	4               ## @__const.get_register_by_size.rax
l___const.get_register_by_size.rax:
	.quad	L_.str.88
	.quad	L_.str.89
	.quad	L_.str.90
	.quad	L_.str.91

	.section	__TEXT,__cstring,cstring_literals
L_.str.92:                              ## @.str.92
	.asciz	"dh"

L_.str.93:                              ## @.str.93
	.asciz	"dx"

L_.str.94:                              ## @.str.94
	.asciz	"edx"

L_.str.95:                              ## @.str.95
	.asciz	"rdx"

	.section	__DATA,__const
	.p2align	4               ## @__const.get_register_by_size.rdx
l___const.get_register_by_size.rdx:
	.quad	L_.str.92
	.quad	L_.str.93
	.quad	L_.str.94
	.quad	L_.str.95

	.section	__TEXT,__cstring,cstring_literals
L_.str.96:                              ## @.str.96
	.asciz	"ch"

L_.str.97:                              ## @.str.97
	.asciz	"cx"

L_.str.98:                              ## @.str.98
	.asciz	"ecx"

L_.str.99:                              ## @.str.99
	.asciz	"rcx"

	.section	__DATA,__const
	.p2align	4               ## @__const.get_register_by_size.rcx
l___const.get_register_by_size.rcx:
	.quad	L_.str.96
	.quad	L_.str.97
	.quad	L_.str.98
	.quad	L_.str.99

	.section	__TEXT,__cstring,cstring_literals
L_.str.100:                             ## @.str.100
	.asciz	"dil"

L_.str.101:                             ## @.str.101
	.asciz	"di"

L_.str.102:                             ## @.str.102
	.asciz	"edi"

L_.str.103:                             ## @.str.103
	.asciz	"rdi"

	.section	__DATA,__const
	.p2align	4               ## @__const.get_register_by_size.rdi
l___const.get_register_by_size.rdi:
	.quad	L_.str.100
	.quad	L_.str.101
	.quad	L_.str.102
	.quad	L_.str.103

	.section	__TEXT,__cstring,cstring_literals
L_.str.104:                             ## @.str.104
	.asciz	"sil"

L_.str.105:                             ## @.str.105
	.asciz	"si"

L_.str.106:                             ## @.str.106
	.asciz	"esi"

L_.str.107:                             ## @.str.107
	.asciz	"rsi"

	.section	__DATA,__const
	.p2align	4               ## @__const.get_register_by_size.rsi
l___const.get_register_by_size.rsi:
	.quad	L_.str.104
	.quad	L_.str.105
	.quad	L_.str.106
	.quad	L_.str.107

	.section	__TEXT,__cstring,cstring_literals
L_.str.108:                             ## @.str.108
	.asciz	"r8b"

L_.str.109:                             ## @.str.109
	.asciz	"r8w"

L_.str.110:                             ## @.str.110
	.asciz	"r8d"

L_.str.111:                             ## @.str.111
	.asciz	"r8"

	.section	__DATA,__const
	.p2align	4               ## @__const.get_register_by_size.r8
l___const.get_register_by_size.r8:
	.quad	L_.str.108
	.quad	L_.str.109
	.quad	L_.str.110
	.quad	L_.str.111

	.section	__TEXT,__cstring,cstring_literals
L_.str.112:                             ## @.str.112
	.asciz	"r9b"

L_.str.113:                             ## @.str.113
	.asciz	"r9w"

L_.str.114:                             ## @.str.114
	.asciz	"r9d"

L_.str.115:                             ## @.str.115
	.asciz	"r9"

	.section	__DATA,__const
	.p2align	4               ## @__const.get_register_by_size.r9
l___const.get_register_by_size.r9:
	.quad	L_.str.112
	.quad	L_.str.113
	.quad	L_.str.114
	.quad	L_.str.115

	.section	__TEXT,__cstring,cstring_literals
L_.str.116:                             ## @.str.116
	.asciz	"r10b"

L_.str.117:                             ## @.str.117
	.asciz	"r10w"

L_.str.118:                             ## @.str.118
	.asciz	"r10d"

L_.str.119:                             ## @.str.119
	.asciz	"r10"

	.section	__DATA,__const
	.p2align	4               ## @__const.get_register_by_size.r10
l___const.get_register_by_size.r10:
	.quad	L_.str.116
	.quad	L_.str.117
	.quad	L_.str.118
	.quad	L_.str.119

	.section	__TEXT,__cstring,cstring_literals
L_.str.120:                             ## @.str.120
	.asciz	"r11b"

L_.str.121:                             ## @.str.121
	.asciz	"r11w"

L_.str.122:                             ## @.str.122
	.asciz	"r11d"

L_.str.123:                             ## @.str.123
	.asciz	"r11"

	.section	__DATA,__const
	.p2align	4               ## @__const.get_register_by_size.r11
l___const.get_register_by_size.r11:
	.quad	L_.str.120
	.quad	L_.str.121
	.quad	L_.str.122
	.quad	L_.str.123

	.section	__TEXT,__cstring,cstring_literals
L___func__.get_register_by_size:        ## @__func__.get_register_by_size
	.asciz	"get_register_by_size"

	.comm	_strings_literal_count,4,2 ## @strings_literal_count
	.comm	_strings_literal,80000,4 ## @strings_literal
	.globl	_curr_label             ## @curr_label
.zerofill __DATA,__common,_curr_label,4,2
	.globl	_loop_counter           ## @loop_counter
.zerofill __DATA,__common,_loop_counter,4,2
L_.str.124:                             ## @.str.124
	.asciz	"main"

	.comm	_f,8,3                  ## @f
L_.str.125:                             ## @.str.125
	.asciz	".globl\t_main\n"

L_.str.126:                             ## @.str.126
	.asciz	"_%s:\n"

L_.str.127:                             ## @.str.127
	.asciz	"pushq %%rbp"

L_.str.128:                             ## @.str.128
	.asciz	"movq %%rsp, %%rbp"

L_.str.129:                             ## @.str.129
	.asciz	"subq $%d, %%rsp"

L_.str.130:                             ## @.str.130
	.asciz	"mov%s %%%s, -%d(%%rbp)"

L_.str.131:                             ## @.str.131
	.asciz	"movq %d(%%rbp), %%rax"

L_.str.132:                             ## @.str.132
	.asciz	"movq %%rax, -%d(%%rbp)"

L_.str.133:                             ## @.str.133
	.asciz	"movq $0, %%rax"

L_.str.134:                             ## @.str.134
	.asciz	"movq %%rbp, %%rsp"

L_.str.135:                             ## @.str.135
	.asciz	"popq %%rbp"

L_.str.136:                             ## @.str.136
	.asciz	"ret\n"

L_.str.137:                             ## @.str.137
	.asciz	"//begin block\n"

L_.str.138:                             ## @.str.138
	.asciz	"//end block\n"

L_.str.139:                             ## @.str.139
	.asciz	"ret"

L_.str.140:                             ## @.str.140
	.asciz	"//if begin\n"

L_.str.141:                             ## @.str.141
	.asciz	"cmpq $0, %%rax"

L_.str.142:                             ## @.str.142
	.asciz	"je ELSE%d"

L_.str.143:                             ## @.str.143
	.asciz	"jmp END_IF%d"

L_.str.144:                             ## @.str.144
	.asciz	"ELSE%d:\n"

L_.str.145:                             ## @.str.145
	.asciz	"END_IF%d:\n"

L_.str.146:                             ## @.str.146
	.asciz	"WHILE%d:\n"

L_.str.147:                             ## @.str.147
	.asciz	"je WHILE_END%d"

	.comm	_curr_loop_label,4,2    ## @curr_loop_label
	.comm	_curr_loop_is_for,4,2   ## @curr_loop_is_for
L_.str.148:                             ## @.str.148
	.asciz	"jmp WHILE%d"

L_.str.149:                             ## @.str.149
	.asciz	"WHILE_END%d:\n"

L_.str.150:                             ## @.str.150
	.asciz	"//for init\n"

L_.str.151:                             ## @.str.151
	.asciz	"FOR%d:\n"

L_.str.152:                             ## @.str.152
	.asciz	"je FOR_END%d"

L_.str.153:                             ## @.str.153
	.asciz	"FOR_INC%d:\n"

L_.str.154:                             ## @.str.154
	.asciz	"jmp FOR%d"

L_.str.155:                             ## @.str.155
	.asciz	"FOR_END%d:\n"

L_.str.156:                             ## @.str.156
	.asciz	"movabsq $%lld, %%rax"

L_.str.157:                             ## @.str.157
	.asciz	"movq $%lld, %%rax"

L_.str.158:                             ## @.str.158
	.asciz	"leaq L_.str.%d(%%rip), %%rax"

L_.str.159:                             ## @.str.159
	.asciz	"movq _%s@GOTPCREL(%%rip), %%rax"

L_.str.160:                             ## @.str.160
	.asciz	"movq %%rbp, %%rax"

L_.str.161:                             ## @.str.161
	.asciz	"subq $%d, %%rax"

L_.str.162:                             ## @.str.162
	.asciz	"leaq _%s(%%rip), %%rax"

L_.str.163:                             ## @.str.163
	.asciz	"movs%sq _%s(%%rip), %%rax"

L_.str.164:                             ## @.str.164
	.asciz	"movq _%s(%%rip), %%rax"

L_.str.165:                             ## @.str.165
	.asciz	"movz%sq -%d(%%rbp), %%rax"

L_.str.166:                             ## @.str.166
	.asciz	"mov%s -%d(%%rbp), %%%s"

L_.str.167:                             ## @.str.167
	.asciz	"movs%sq -%d(%%rbp), %%rax"

L_.str.168:                             ## @.str.168
	.asciz	"movq -%d(%%rbp), %%rax"

L_.str.169:                             ## @.str.169
	.asciz	"//%.*s"

L_.str.170:                             ## @.str.170
	.asciz	"movq %%rax, %%r12"

L_.str.171:                             ## @.str.171
	.asciz	"cmpq %%r12, %%rax"

L_.str.172:                             ## @.str.172
	.asciz	"je ASSERT_OK%d"

L_.str.173:                             ## @.str.173
	.asciz	"movq $%d, %%rdi"

L_.str.174:                             ## @.str.174
	.asciz	"movq %%r12, %%rsi"

L_.str.175:                             ## @.str.175
	.asciz	"movq %%rax, %%rdx"

L_.str.176:                             ## @.str.176
	.asciz	"callq _error"

L_.str.177:                             ## @.str.177
	.asciz	"ASSERT_OK%d:\n"

L_.str.178:                             ## @.str.178
	.asciz	"underclared function"

L_.str.179:                             ## @.str.179
	.asciz	"pushq %%rax"

L_.str.180:                             ## @.str.180
	.asciz	"popq %%%s"

L_.str.181:                             ## @.str.181
	.asciz	"callq _%s"

L_.str.182:                             ## @.str.182
	.asciz	"addq $%d, %%rsp"

L___func__.gen:                         ## @__func__.gen
	.asciz	"gen"

L_.str.183:                             ## @.str.183
	.asciz	"dereferencing a non-pointer lvalue"

L_.str.184:                             ## @.str.184
	.asciz	"movs%sq (%%rax), %%rax"

L_.str.185:                             ## @.str.185
	.asciz	"movq (%%rax), %%rax"

L_.str.186:                             ## @.str.186
	.asciz	"negating a pointer"

L_.str.187:                             ## @.str.187
	.asciz	"xorq %%r10, %%r10"

L_.str.188:                             ## @.str.188
	.asciz	"subq %%rax, %%r10"

L_.str.189:                             ## @.str.189
	.asciz	"movq %%r10, %%rax"

L_.str.190:                             ## @.str.190
	.asciz	"movs%sq %%%s, %%r10"

L_.str.191:                             ## @.str.191
	.asciz	"mov%s %%%s, %%%s"

L_.str.192:                             ## @.str.192
	.asciz	"movs%sq %%%s, %%rax"

L_.str.193:                             ## @.str.193
	.asciz	"movq $%d, %%rax"

L_.str.194:                             ## @.str.194
	.asciz	"j%se AND_OR%d"

L_.str.195:                             ## @.str.195
	.space	1

L_.str.196:                             ## @.str.196
	.asciz	"n"

L_.str.197:                             ## @.str.197
	.asciz	"setne %%al"

L_.str.198:                             ## @.str.198
	.asciz	"movzbq %%al, %%rax"

L_.str.199:                             ## @.str.199
	.asciz	"AND_OR%d:\n"

L_.str.200:                             ## @.str.200
	.asciz	"movq %%rax, %%r10"

L_.str.201:                             ## @.str.201
	.asciz	"popq %%rax"

L_.str.202:                             ## @.str.202
	.asciz	"node->left->t"

L_.str.203:                             ## @.str.203
	.asciz	"node->right->t"

L_.str.204:                             ## @.str.204
	.asciz	"imulq $%d, %%r10"

L_.str.205:                             ## @.str.205
	.asciz	"imulq $%d, %%rax"

L_.str.206:                             ## @.str.206
	.asciz	"addq %%r10, %%rax"

L_.str.207:                             ## @.str.207
	.asciz	"subq %%r10, %%rax"

L_.str.208:                             ## @.str.208
	.asciz	"imulq %%r10, %%rax"

L_.str.209:                             ## @.str.209
	.asciz	"cqto"

L_.str.210:                             ## @.str.210
	.asciz	"idivq %%r10"

L_.str.211:                             ## @.str.211
	.asciz	"xorq %%rdx, %%rdx"

L_.str.212:                             ## @.str.212
	.asciz	"divq %%r10"

L_.str.213:                             ## @.str.213
	.asciz	"movq %%rdx, %%rax"

L_.str.214:                             ## @.str.214
	.asciz	"e"

L_.str.215:                             ## @.str.215
	.asciz	"ne"

L_.str.216:                             ## @.str.216
	.asciz	"g"

L_.str.217:                             ## @.str.217
	.asciz	"le"

L_.str.218:                             ## @.str.218
	.asciz	"ge"

L_.str.219:                             ## @.str.219
	.asciz	"cmpq %%r10, %%rax"

L_.str.220:                             ## @.str.220
	.asciz	"set%s %%al"

L_.str.221:                             ## @.str.221
	.asciz	"andb $1, %%al"

L_.str.222:                             ## @.str.222
	.asciz	"movq $%d, %%r10"

L_.str.223:                             ## @.str.223
	.asciz	"movq %%rax, %%rsi"

L_.str.224:                             ## @.str.224
	.asciz	"movq %%rax, %%rdi"

L_.str.225:                             ## @.str.225
	.asciz	"movq $%d, %%rdx"

L_.str.226:                             ## @.str.226
	.asciz	"callq _memcpy"

L_.str.227:                             ## @.str.227
	.asciz	"popq %%r10"

L_.str.228:                             ## @.str.228
	.asciz	"mov%s %%%s, (%%rax)"

L_.str.229:                             ## @.str.229
	.asciz	"array is constant"

L_.str.230:                             ## @.str.230
	.asciz	"mov%s %%%s, _%s(%%rip)"

L_.str.231:                             ## @.str.231
	.asciz	"movq %%rbp, %%rdi"

L_.str.232:                             ## @.str.232
	.asciz	"subq $%d, %%rdi"

L_.str.233:                             ## @.str.233
	.asciz	"'continue' statement not in loop statement"

L_.str.234:                             ## @.str.234
	.asciz	"jmp FOR_INC%d"

L_.str.235:                             ## @.str.235
	.asciz	"'break' statement not in loop statement"

L_.str.236:                             ## @.str.236
	.asciz	"jmp FOR_END%d"

L_.str.237:                             ## @.str.237
	.asciz	"jmp WHILE_END%d"

L_.str.238:                             ## @.str.238
	.asciz	"xorb $-1, %%al"

L_.str.239:                             ## @.str.239
	.asciz	"je QUES%d"

L_.str.240:                             ## @.str.240
	.asciz	"jmp QUES_END%d"

L_.str.241:                             ## @.str.241
	.asciz	"QUES%d:\n"

L_.str.242:                             ## @.str.242
	.asciz	"QUES_END%d:\n"

L_.str.243:                             ## @.str.243
	.asciz	"final.c"

	.comm	_filename,8,3           ## @filename
	.comm	_type_short,8,3         ## @type_short
	.comm	_program_str,8,3        ## @program_str
L_.str.244:                             ## @.str.244
	.asciz	"main.c"

L_.str.245:                             ## @.str.245
	.asciz	"f"

L_.str.246:                             ## @.str.246
	.asciz	".section\t__DATA,__data"

L_.str.247:                             ## @.str.247
	.asciz	"error name: %s %c\n"

L_.str.248:                             ## @.str.248
	.asciz	"todo: evaluate constant expressions\n"

L_.str.249:                             ## @.str.249
	.asciz	".comm _%s,%d,%d\n"

L_.str.250:                             ## @.str.250
	.asciz	".globl _%s"

L_.str.251:                             ## @.str.251
	.asciz	".p2align %d"

L_.str.252:                             ## @.str.252
	.asciz	".%s %d\n"

L_.str.253:                             ## @.str.253
	.asciz	"L_.str.%d:\n"

L_.str.254:                             ## @.str.254
	.asciz	".asciz \"%s\""


.subsections_via_symbols
