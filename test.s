_error:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movl %edi, -4(%rbp)
	movl %esi, -8(%rbp)
	movl %edx, -12(%rbp)
//begin block
	leaq L_.str.0(%rip), %rax
	pushq %rax
	movslq -4(%rbp), %rax
	pushq %rax
	movslq -8(%rbp), %rax
	pushq %rax
	movslq -12(%rbp), %rax
	pushq %rax
	popq %rcx
	popq %rdx
	popq %rsi
	popq %rdi
	callq _printf
	movq $1, %rax
	pushq %rax
	popq %rdi
	callq _exit
//end block
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

.globl	_main
_main:
	pushq %rbp
	movq %rsp, %rbp
	subq $432, %rsp
//begin block
//ASSERT(3, { int a; a=3; a; });
	movq $3, %rax
	movq %rax, %r12
//begin block
	movq $3, %rax
	movl %eax, -4(%rbp)
	movslq -4(%rbp), %rax
//end block
	cmpq %r12, %rax
	je ASSERT_OK0
	movq $13, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK0:
//ASSERT(3, { int a=3; a; });
	movq $3, %rax
	movq %rax, %r12
//begin block
	movq $3, %rax
	movl %eax, -8(%rbp)
	movslq -8(%rbp), %rax
//end block
	cmpq %r12, %rax
	je ASSERT_OK1
	movq $14, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK1:
//ASSERT(8, { int a=3; int z=5; a+z; });
	movq $8, %rax
	movq %rax, %r12
//begin block
	movq $3, %rax
	movl %eax, -12(%rbp)
	movq $5, %rax
	movl %eax, -16(%rbp)
	movslq -12(%rbp), %rax
	pushq %rax
	movslq -16(%rbp), %rax
	movq %rax, %r10
	popq %rax
	addq %r10, %rax
//end block
	cmpq %r12, %rax
	je ASSERT_OK2
	movq $15, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK2:
//ASSERT(3, { int a=3; a; });
	movq $3, %rax
	movq %rax, %r12
//begin block
	movq $3, %rax
	movl %eax, -20(%rbp)
	movslq -20(%rbp), %rax
//end block
	cmpq %r12, %rax
	je ASSERT_OK3
	movq $16, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK3:
//ASSERT(8, { int a=3; int z=5; a+z; });
	movq $8, %rax
	movq %rax, %r12
//begin block
	movq $3, %rax
	movl %eax, -24(%rbp)
	movq $5, %rax
	movl %eax, -28(%rbp)
	movslq -24(%rbp), %rax
	pushq %rax
	movslq -28(%rbp), %rax
	movq %rax, %r10
	popq %rax
	addq %r10, %rax
//end block
	cmpq %r12, %rax
	je ASSERT_OK4
	movq $17, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK4:
//ASSERT(6, { int a; int b; a=b=3; a+b; });
	movq $6, %rax
	movq %rax, %r12
//begin block
	movq $3, %rax
	movl %eax, -36(%rbp)
	movl %eax, -32(%rbp)
	movslq -32(%rbp), %rax
	pushq %rax
	movslq -36(%rbp), %rax
	movq %rax, %r10
	popq %rax
	addq %r10, %rax
//end block
	cmpq %r12, %rax
	je ASSERT_OK5
	movq $18, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK5:
//ASSERT(3, { int foo=3; foo; });
	movq $3, %rax
	movq %rax, %r12
//begin block
	movq $3, %rax
	movl %eax, -40(%rbp)
	movslq -40(%rbp), %rax
//end block
	cmpq %r12, %rax
	je ASSERT_OK6
	movq $19, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK6:
//ASSERT(8, { int foo123=3; int bar=5; foo123+bar; });
	movq $8, %rax
	movq %rax, %r12
//begin block
	movq $3, %rax
	movl %eax, -44(%rbp)
	movq $5, %rax
	movl %eax, -48(%rbp)
	movslq -44(%rbp), %rax
	pushq %rax
	movslq -48(%rbp), %rax
	movq %rax, %r10
	popq %rax
	addq %r10, %rax
//end block
	cmpq %r12, %rax
	je ASSERT_OK7
	movq $20, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK7:
//ASSERT(2, { int x=2; { int x=3; } x; });
	movq $2, %rax
	movq %rax, %r12
//begin block
	movq $2, %rax
	movl %eax, -52(%rbp)
//begin block
	movq $3, %rax
	movl %eax, -56(%rbp)
//end block
	movslq -52(%rbp), %rax
//end block
	cmpq %r12, %rax
	je ASSERT_OK8
	movq $21, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK8:
//ASSERT(2, { int x=2; { int x=3; } int y=4; x; });
	movq $2, %rax
	movq %rax, %r12
//begin block
	movq $2, %rax
	movl %eax, -60(%rbp)
//begin block
	movq $3, %rax
	movl %eax, -64(%rbp)
//end block
	movq $4, %rax
	movl %eax, -68(%rbp)
	movslq -60(%rbp), %rax
//end block
	cmpq %r12, %rax
	je ASSERT_OK9
	movq $22, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK9:
//ASSERT(3, { int x=2; { x=3; } x; });
	movq $3, %rax
	movq %rax, %r12
//begin block
	movq $2, %rax
	movl %eax, -72(%rbp)
//begin block
	movq $3, %rax
	movl %eax, -72(%rbp)
//end block
	movslq -72(%rbp), %rax
//end block
	cmpq %r12, %rax
	je ASSERT_OK10
	movq $23, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK10:
//ASSERT(3, { int x; if (0) x=2; else x=3; x; });
	movq $3, %rax
	movq %rax, %r12
//begin block
//if begin
	movq $0, %rax
	cmpq $0, %rax
	je ELSE12
	movq $2, %rax
	movl %eax, -76(%rbp)
	jmp END_IF12
ELSE12:
	movq $3, %rax
	movl %eax, -76(%rbp)
END_IF12:
	movslq -76(%rbp), %rax
//end block
	cmpq %r12, %rax
	je ASSERT_OK11
	movq $24, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK11:
//ASSERT(3, { int x; if (1-1) x=2; else x=3; x; });
	movq $3, %rax
	movq %rax, %r12
//begin block
//if begin
	movq $1, %rax
	pushq %rax
	movq $1, %rax
	movq %rax, %r10
	popq %rax
	subq %r10, %rax
	cmpq $0, %rax
	je ELSE14
	movq $2, %rax
	movl %eax, -80(%rbp)
	jmp END_IF14
ELSE14:
	movq $3, %rax
	movl %eax, -80(%rbp)
END_IF14:
	movslq -80(%rbp), %rax
//end block
	cmpq %r12, %rax
	je ASSERT_OK13
	movq $25, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK13:
//ASSERT(2, { int x; if (1) x=2; else x=3; x; });
	movq $2, %rax
	movq %rax, %r12
//begin block
//if begin
	movq $1, %rax
	cmpq $0, %rax
	je ELSE16
	movq $2, %rax
	movl %eax, -84(%rbp)
	jmp END_IF16
ELSE16:
	movq $3, %rax
	movl %eax, -84(%rbp)
END_IF16:
	movslq -84(%rbp), %rax
//end block
	cmpq %r12, %rax
	je ASSERT_OK15
	movq $26, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK15:
//ASSERT(2, { int x; if (2-1) x=2; else x=3; x; });
	movq $2, %rax
	movq %rax, %r12
//begin block
//if begin
	movq $2, %rax
	pushq %rax
	movq $1, %rax
	movq %rax, %r10
	popq %rax
	subq %r10, %rax
	cmpq $0, %rax
	je ELSE18
	movq $2, %rax
	movl %eax, -88(%rbp)
	jmp END_IF18
ELSE18:
	movq $3, %rax
	movl %eax, -88(%rbp)
END_IF18:
	movslq -88(%rbp), %rax
//end block
	cmpq %r12, %rax
	je ASSERT_OK17
	movq $27, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK17:
//ASSERT(55, { int i=0; int j=0; for (i=0; i<=10; i=i+1) j=i+j; j; });
	movq $55, %rax
	movq %rax, %r12
//begin block
	movq $0, %rax
	movl %eax, -92(%rbp)
	movq $0, %rax
	movl %eax, -96(%rbp)
//for init
	movq $0, %rax
	movl %eax, -92(%rbp)
FOR20:
	movslq -92(%rbp), %rax
	pushq %rax
	movq $10, %rax
	movq %rax, %r10
	popq %rax
	cmpq %r10, %rax
	setle %al
	movzbq %al, %rax
	cmpq $0, %rax
	je FOR_END20
	movslq -92(%rbp), %rax
	pushq %rax
	movslq -96(%rbp), %rax
	movq %rax, %r10
	popq %rax
	addq %r10, %rax
	movl %eax, -96(%rbp)
FOR_INC20:
	movslq -92(%rbp), %rax
	pushq %rax
	movq $1, %rax
	movq %rax, %r10
	popq %rax
	addq %r10, %rax
	movl %eax, -92(%rbp)
	jmp FOR20
FOR_END20:
	movslq -96(%rbp), %rax
//end block
	cmpq %r12, %rax
	je ASSERT_OK19
	movq $28, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK19:
//ASSERT(10, { int i=0; while(i<10) i=i+1; i; });
	movq $10, %rax
	movq %rax, %r12
//begin block
	movq $0, %rax
	movl %eax, -100(%rbp)
WHILE22:
	movslq -100(%rbp), %rax
	pushq %rax
	movq $10, %rax
	movq %rax, %r10
	popq %rax
	cmpq %r10, %rax
	setl %al
	movzbq %al, %rax
	cmpq $0, %rax
	je WHILE_END22
	movslq -100(%rbp), %rax
	pushq %rax
	movq $1, %rax
	movq %rax, %r10
	popq %rax
	addq %r10, %rax
	movl %eax, -100(%rbp)
	jmp WHILE22
WHILE_END22:
	movslq -100(%rbp), %rax
//end block
	cmpq %r12, %rax
	je ASSERT_OK21
	movq $29, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK21:
//ASSERT(3, { 1; {2;} 3; });
	movq $3, %rax
	movq %rax, %r12
//begin block
	movq $1, %rax
//begin block
	movq $2, %rax
//end block
	movq $3, %rax
//end block
	cmpq %r12, %rax
	je ASSERT_OK23
	movq $30, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK23:
//ASSERT(5, { ;;; 5; });
	movq $5, %rax
	movq %rax, %r12
//begin block
	movq $5, %rax
//end block
	cmpq %r12, %rax
	je ASSERT_OK24
	movq $31, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK24:
//ASSERT(10, { int i=0; while(i<10) i=i+1; i; });
	movq $10, %rax
	movq %rax, %r12
//begin block
	movq $0, %rax
	movl %eax, -104(%rbp)
WHILE26:
	movslq -104(%rbp), %rax
	pushq %rax
	movq $10, %rax
	movq %rax, %r10
	popq %rax
	cmpq %r10, %rax
	setl %al
	movzbq %al, %rax
	cmpq $0, %rax
	je WHILE_END26
	movslq -104(%rbp), %rax
	pushq %rax
	movq $1, %rax
	movq %rax, %r10
	popq %rax
	addq %r10, %rax
	movl %eax, -104(%rbp)
	jmp WHILE26
WHILE_END26:
	movslq -104(%rbp), %rax
//end block
	cmpq %r12, %rax
	je ASSERT_OK25
	movq $32, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK25:
//ASSERT(55, { int i=0; int j=0; while(i<=10) {j=i+j; i=i+1;} j; });
	movq $55, %rax
	movq %rax, %r12
//begin block
	movq $0, %rax
	movl %eax, -108(%rbp)
	movq $0, %rax
	movl %eax, -112(%rbp)
WHILE28:
	movslq -108(%rbp), %rax
	pushq %rax
	movq $10, %rax
	movq %rax, %r10
	popq %rax
	cmpq %r10, %rax
	setle %al
	movzbq %al, %rax
	cmpq $0, %rax
	je WHILE_END28
//begin block
	movslq -108(%rbp), %rax
	pushq %rax
	movslq -112(%rbp), %rax
	movq %rax, %r10
	popq %rax
	addq %r10, %rax
	movl %eax, -112(%rbp)
	movslq -108(%rbp), %rax
	pushq %rax
	movq $1, %rax
	movq %rax, %r10
	popq %rax
	addq %r10, %rax
	movl %eax, -108(%rbp)
//end block
	jmp WHILE28
WHILE_END28:
	movslq -112(%rbp), %rax
//end block
	cmpq %r12, %rax
	je ASSERT_OK27
	movq $33, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK27:
//ASSERT(3, (1,2,3));
	movq $3, %rax
	movq %rax, %r12
	movq $1, %rax
	movq $2, %rax
	movq $3, %rax
	cmpq %r12, %rax
	je ASSERT_OK29
	movq $34, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK29:
//ASSERT(55, { int j=0; for (int i=0; i<=10; i=i+1) j=j+i; j; });
	movq $55, %rax
	movq %rax, %r12
//begin block
	movq $0, %rax
	movl %eax, -116(%rbp)
//for init
	movq $0, %rax
	movl %eax, -120(%rbp)
FOR31:
	movslq -120(%rbp), %rax
	pushq %rax
	movq $10, %rax
	movq %rax, %r10
	popq %rax
	cmpq %r10, %rax
	setle %al
	movzbq %al, %rax
	cmpq $0, %rax
	je FOR_END31
	movslq -116(%rbp), %rax
	pushq %rax
	movslq -120(%rbp), %rax
	movq %rax, %r10
	popq %rax
	addq %r10, %rax
	movl %eax, -116(%rbp)
FOR_INC31:
	movslq -120(%rbp), %rax
	pushq %rax
	movq $1, %rax
	movq %rax, %r10
	popq %rax
	addq %r10, %rax
	movl %eax, -120(%rbp)
	jmp FOR31
FOR_END31:
	movslq -116(%rbp), %rax
//end block
	cmpq %r12, %rax
	je ASSERT_OK30
	movq $35, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK30:
//ASSERT(3, { int i=3; int j=0; for (int i=0; i<=10; i=i+1) j=j+i; i; });
	movq $3, %rax
	movq %rax, %r12
//begin block
	movq $3, %rax
	movl %eax, -124(%rbp)
	movq $0, %rax
	movl %eax, -128(%rbp)
//for init
	movq $0, %rax
	movl %eax, -132(%rbp)
FOR33:
	movslq -132(%rbp), %rax
	pushq %rax
	movq $10, %rax
	movq %rax, %r10
	popq %rax
	cmpq %r10, %rax
	setle %al
	movzbq %al, %rax
	cmpq $0, %rax
	je FOR_END33
	movslq -128(%rbp), %rax
	pushq %rax
	movslq -132(%rbp), %rax
	movq %rax, %r10
	popq %rax
	addq %r10, %rax
	movl %eax, -128(%rbp)
FOR_INC33:
	movslq -132(%rbp), %rax
	pushq %rax
	movq $1, %rax
	movq %rax, %r10
	popq %rax
	addq %r10, %rax
	movl %eax, -132(%rbp)
	jmp FOR33
FOR_END33:
	movslq -124(%rbp), %rax
//end block
	cmpq %r12, %rax
	je ASSERT_OK32
	movq $36, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK32:
//ASSERT(1, 0||1);
	movq $1, %rax
	movq %rax, %r12
	movq $0, %rax
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR35
	movq $1, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR35:
	cmpq %r12, %rax
	je ASSERT_OK34
	movq $37, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK34:
//ASSERT(1, 0||(2-2)||5);
	movq $1, %rax
	movq %rax, %r12
	movq $0, %rax
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR37
	movq $2, %rax
	pushq %rax
	movq $2, %rax
	movq %rax, %r10
	popq %rax
	subq %r10, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR37:
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR38
	movq $5, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR38:
	cmpq %r12, %rax
	je ASSERT_OK36
	movq $38, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK36:
//ASSERT(0, 0||0);
	movq $0, %rax
	movq %rax, %r12
	movq $0, %rax
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR40
	movq $0, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR40:
	cmpq %r12, %rax
	je ASSERT_OK39
	movq $39, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK39:
//ASSERT(0, 0||(2-2));
	movq $0, %rax
	movq %rax, %r12
	movq $0, %rax
	cmpq $0, %rax
	movq $1, %rax
	jne AND_OR42
	movq $2, %rax
	pushq %rax
	movq $2, %rax
	movq %rax, %r10
	popq %rax
	subq %r10, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR42:
	cmpq %r12, %rax
	je ASSERT_OK41
	movq $40, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK41:
//ASSERT(0, 0&&1);
	movq $0, %rax
	movq %rax, %r12
	movq $0, %rax
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR44
	movq $1, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR44:
	cmpq %r12, %rax
	je ASSERT_OK43
	movq $41, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK43:
//ASSERT(0, (2-2)&&5);
	movq $0, %rax
	movq %rax, %r12
	movq $2, %rax
	pushq %rax
	movq $2, %rax
	movq %rax, %r10
	popq %rax
	subq %r10, %rax
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR46
	movq $5, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR46:
	cmpq %r12, %rax
	je ASSERT_OK45
	movq $42, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK45:
//ASSERT(1, 1&&5);
	movq $1, %rax
	movq %rax, %r12
	movq $1, %rax
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR48
	movq $5, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR48:
	cmpq %r12, %rax
	je ASSERT_OK47
	movq $43, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK47:
//ASSERT(3, { int x=3; *&x; });
	movq $3, %rax
	movq %rax, %r12
//begin block
	movq $3, %rax
	movl %eax, -136(%rbp)
	movq %rbp, %rax
	subq $136, %rax
	movslq (%rax), %rax
//end block
	cmpq %r12, %rax
	je ASSERT_OK49
	movq $44, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK49:
//ASSERT(3, { int x=3; int *y=&x; int **z=&y; **z; });
	movq $3, %rax
	movq %rax, %r12
//begin block
	movq $3, %rax
	movl %eax, -140(%rbp)
	movq %rbp, %rax
	subq $140, %rax
	movq %rax, -152(%rbp)
	movq %rbp, %rax
	subq $152, %rax
	movq %rax, -160(%rbp)
	movq -160(%rbp), %rax
	movq (%rax), %rax
	movslq (%rax), %rax
//end block
	cmpq %r12, %rax
	je ASSERT_OK50
	movq $45, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK50:
//ASSERT(5, { int x=3; int y=5; *(&x-1); });
	movq $5, %rax
	movq %rax, %r12
//begin block
	movq $3, %rax
	movl %eax, -164(%rbp)
	movq $5, %rax
	movl %eax, -168(%rbp)
	movq %rbp, %rax
	subq $164, %rax
	pushq %rax
	movq $1, %rax
	movq %rax, %r10
	popq %rax
	imulq $4, %r10
	subq %r10, %rax
	movslq (%rax), %rax
//end block
	cmpq %r12, %rax
	je ASSERT_OK51
	movq $46, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK51:
//ASSERT(3, { int x=3; int y=5; *(&y+1); });
	movq $3, %rax
	movq %rax, %r12
//begin block
	movq $3, %rax
	movl %eax, -172(%rbp)
	movq $5, %rax
	movl %eax, -176(%rbp)
	movq %rbp, %rax
	subq $176, %rax
	pushq %rax
	movq $1, %rax
	movq %rax, %r10
	popq %rax
	imulq $4, %r10
	addq %r10, %rax
	movslq (%rax), %rax
//end block
	cmpq %r12, %rax
	je ASSERT_OK52
	movq $47, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK52:
//ASSERT(5, { int x=3; int y=5; *(&x+(-1)); });
	movq $5, %rax
	movq %rax, %r12
//begin block
	movq $3, %rax
	movl %eax, -180(%rbp)
	movq $5, %rax
	movl %eax, -184(%rbp)
	movq %rbp, %rax
	subq $180, %rax
	pushq %rax
	movq $1, %rax
	xorq %r10, %r10
	subq %rax, %r10
	movq %r10, %rax
	movq %rax, %r10
	popq %rax
	imulq $4, %r10
	addq %r10, %rax
	movslq (%rax), %rax
//end block
	cmpq %r12, %rax
	je ASSERT_OK53
	movq $48, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK53:
//ASSERT(5, { int x=3; int *y=&x; *y=5; x; });
	movq $5, %rax
	movq %rax, %r12
//begin block
	movq $3, %rax
	movl %eax, -188(%rbp)
	movq %rbp, %rax
	subq $188, %rax
	movq %rax, -200(%rbp)
	movq $5, %rax
	pushq %rax
	movq -200(%rbp), %rax
	popq %r10
	movl %r10d, (%rax)
	movslq -188(%rbp), %rax
//end block
	cmpq %r12, %rax
	je ASSERT_OK54
	movq $49, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK54:
//ASSERT(7, { int x=3; int y=5; *(&x-1)=7; y; });
	movq $7, %rax
	movq %rax, %r12
//begin block
	movq $3, %rax
	movl %eax, -204(%rbp)
	movq $5, %rax
	movl %eax, -208(%rbp)
	movq $7, %rax
	pushq %rax
	movq %rbp, %rax
	subq $204, %rax
	pushq %rax
	movq $1, %rax
	movq %rax, %r10
	popq %rax
	imulq $4, %r10
	subq %r10, %rax
	popq %r10
	movl %r10d, (%rax)
	movslq -208(%rbp), %rax
//end block
	cmpq %r12, %rax
	je ASSERT_OK55
	movq $50, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK55:
//ASSERT(7, { int x=3; int y=5; *(&y+2-1)=7; x; });
	movq $7, %rax
	movq %rax, %r12
//begin block
	movq $3, %rax
	movl %eax, -212(%rbp)
	movq $5, %rax
	movl %eax, -216(%rbp)
	movq $7, %rax
	pushq %rax
	movq %rbp, %rax
	subq $216, %rax
	pushq %rax
	movq $2, %rax
	movq %rax, %r10
	popq %rax
	imulq $4, %r10
	addq %r10, %rax
	pushq %rax
	movq $1, %rax
	movq %rax, %r10
	popq %rax
	imulq $4, %r10
	subq %r10, %rax
	popq %r10
	movl %r10d, (%rax)
	movslq -212(%rbp), %rax
//end block
	cmpq %r12, %rax
	je ASSERT_OK56
	movq $51, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK56:
//ASSERT(5, { int x=3; (&x+2)-&x+3; });
	movq $5, %rax
	movq %rax, %r12
//begin block
	movq $3, %rax
	movl %eax, -220(%rbp)
	movq %rbp, %rax
	subq $220, %rax
	pushq %rax
	movq $2, %rax
	movq %rax, %r10
	popq %rax
	imulq $4, %r10
	addq %r10, %rax
	pushq %rax
	movq %rbp, %rax
	subq $220, %rax
	movq %rax, %r10
	popq %rax
	subq %r10, %rax
	movq $4, %r10
	xorq %rdx, %rdx
	divq %r10
	pushq %rax
	movq $3, %rax
	movq %rax, %r10
	popq %rax
	addq %r10, %rax
//end block
	cmpq %r12, %rax
	je ASSERT_OK57
	movq $52, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK57:
//ASSERT(8, { int x, y; x=3; y=5; x+y; });
	movq $8, %rax
	movq %rax, %r12
//begin block
	movq $3, %rax
	movl %eax, -224(%rbp)
	movq $5, %rax
	movl %eax, -228(%rbp)
	movslq -224(%rbp), %rax
	pushq %rax
	movslq -228(%rbp), %rax
	movq %rax, %r10
	popq %rax
	addq %r10, %rax
//end block
	cmpq %r12, %rax
	je ASSERT_OK58
	movq $53, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK58:
//ASSERT(8, { int x=3, y=5; x+y; });
	movq $8, %rax
	movq %rax, %r12
//begin block
	movq $3, %rax
	movl %eax, -232(%rbp)
	movq $5, %rax
	movl %eax, -236(%rbp)
	movslq -232(%rbp), %rax
	pushq %rax
	movslq -236(%rbp), %rax
	movq %rax, %r10
	popq %rax
	addq %r10, %rax
//end block
	cmpq %r12, %rax
	je ASSERT_OK59
	movq $54, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK59:
//ASSERT(3, { int x[2]; int *y=&x; *y=3; *x; });
	movq $3, %rax
	movq %rax, %r12
//begin block
	movq %rbp, %rax
	subq $244, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq %rax, -256(%rbp)
	movq $3, %rax
	pushq %rax
	movq -256(%rbp), %rax
	popq %r10
	movl %r10d, (%rax)
	movq %rbp, %rax
	subq $244, %rax
	movslq (%rax), %rax
//end block
	cmpq %r12, %rax
	je ASSERT_OK60
	movq $55, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK60:
//ASSERT(3, { int x[3]; *x=3; *(x+1)=4; *(x+2)=5; *x; });
	movq $3, %rax
	movq %rax, %r12
//begin block
	movq $3, %rax
	pushq %rax
	movq %rbp, %rax
	subq $268, %rax
	popq %r10
	movl %r10d, (%rax)
	movq $4, %rax
	pushq %rax
	movq %rbp, %rax
	subq $268, %rax
	pushq %rax
	movq $1, %rax
	movq %rax, %r10
	popq %rax
	imulq $4, %r10
	addq %r10, %rax
	popq %r10
	movl %r10d, (%rax)
	movq $5, %rax
	pushq %rax
	movq %rbp, %rax
	subq $268, %rax
	pushq %rax
	movq $2, %rax
	movq %rax, %r10
	popq %rax
	imulq $4, %r10
	addq %r10, %rax
	popq %r10
	movl %r10d, (%rax)
	movq %rbp, %rax
	subq $268, %rax
	movslq (%rax), %rax
//end block
	cmpq %r12, %rax
	je ASSERT_OK61
	movq $56, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK61:
//ASSERT(4, { int x[3]; *x=3; *(x+1)=4; *(x+2)=5; *(x+1); });
	movq $4, %rax
	movq %rax, %r12
//begin block
	movq $3, %rax
	pushq %rax
	movq %rbp, %rax
	subq $280, %rax
	popq %r10
	movl %r10d, (%rax)
	movq $4, %rax
	pushq %rax
	movq %rbp, %rax
	subq $280, %rax
	pushq %rax
	movq $1, %rax
	movq %rax, %r10
	popq %rax
	imulq $4, %r10
	addq %r10, %rax
	popq %r10
	movl %r10d, (%rax)
	movq $5, %rax
	pushq %rax
	movq %rbp, %rax
	subq $280, %rax
	pushq %rax
	movq $2, %rax
	movq %rax, %r10
	popq %rax
	imulq $4, %r10
	addq %r10, %rax
	popq %r10
	movl %r10d, (%rax)
	movq %rbp, %rax
	subq $280, %rax
	pushq %rax
	movq $1, %rax
	movq %rax, %r10
	popq %rax
	imulq $4, %r10
	addq %r10, %rax
	movslq (%rax), %rax
//end block
	cmpq %r12, %rax
	je ASSERT_OK62
	movq $57, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK62:
//ASSERT(5, { int x[3]; *x=3; *(x+1)=4; *(x+2)=5; *(x+2); });
	movq $5, %rax
	movq %rax, %r12
//begin block
	movq $3, %rax
	pushq %rax
	movq %rbp, %rax
	subq $292, %rax
	popq %r10
	movl %r10d, (%rax)
	movq $4, %rax
	pushq %rax
	movq %rbp, %rax
	subq $292, %rax
	pushq %rax
	movq $1, %rax
	movq %rax, %r10
	popq %rax
	imulq $4, %r10
	addq %r10, %rax
	popq %r10
	movl %r10d, (%rax)
	movq $5, %rax
	pushq %rax
	movq %rbp, %rax
	subq $292, %rax
	pushq %rax
	movq $2, %rax
	movq %rax, %r10
	popq %rax
	imulq $4, %r10
	addq %r10, %rax
	popq %r10
	movl %r10d, (%rax)
	movq %rbp, %rax
	subq $292, %rax
	pushq %rax
	movq $2, %rax
	movq %rax, %r10
	popq %rax
	imulq $4, %r10
	addq %r10, %rax
	movslq (%rax), %rax
//end block
	cmpq %r12, %rax
	je ASSERT_OK63
	movq $58, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK63:
//ASSERT(3, { int x[3]; *x=3; x[1]=4; x[2]=5; *x; });
	movq $3, %rax
	movq %rax, %r12
//begin block
	movq $3, %rax
	pushq %rax
	movq %rbp, %rax
	subq $304, %rax
	popq %r10
	movl %r10d, (%rax)
	movq $4, %rax
	pushq %rax
	movq %rbp, %rax
	subq $304, %rax
	pushq %rax
	movq $1, %rax
	movq %rax, %r10
	popq %rax
	imulq $4, %r10
	addq %r10, %rax
	popq %r10
	movl %r10d, (%rax)
	movq $5, %rax
	pushq %rax
	movq %rbp, %rax
	subq $304, %rax
	pushq %rax
	movq $2, %rax
	movq %rax, %r10
	popq %rax
	imulq $4, %r10
	addq %r10, %rax
	popq %r10
	movl %r10d, (%rax)
	movq %rbp, %rax
	subq $304, %rax
	movslq (%rax), %rax
//end block
	cmpq %r12, %rax
	je ASSERT_OK64
	movq $59, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK64:
//ASSERT(4, { int x[3]; *x=3; x[1]=4; x[2]=5; *(x+1); });
	movq $4, %rax
	movq %rax, %r12
//begin block
	movq $3, %rax
	pushq %rax
	movq %rbp, %rax
	subq $316, %rax
	popq %r10
	movl %r10d, (%rax)
	movq $4, %rax
	pushq %rax
	movq %rbp, %rax
	subq $316, %rax
	pushq %rax
	movq $1, %rax
	movq %rax, %r10
	popq %rax
	imulq $4, %r10
	addq %r10, %rax
	popq %r10
	movl %r10d, (%rax)
	movq $5, %rax
	pushq %rax
	movq %rbp, %rax
	subq $316, %rax
	pushq %rax
	movq $2, %rax
	movq %rax, %r10
	popq %rax
	imulq $4, %r10
	addq %r10, %rax
	popq %r10
	movl %r10d, (%rax)
	movq %rbp, %rax
	subq $316, %rax
	pushq %rax
	movq $1, %rax
	movq %rax, %r10
	popq %rax
	imulq $4, %r10
	addq %r10, %rax
	movslq (%rax), %rax
//end block
	cmpq %r12, %rax
	je ASSERT_OK65
	movq $60, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK65:
//ASSERT(5, { int x[3]; *x=3; x[1]=4; x[2]=5; *(x+2); });
	movq $5, %rax
	movq %rax, %r12
//begin block
	movq $3, %rax
	pushq %rax
	movq %rbp, %rax
	subq $328, %rax
	popq %r10
	movl %r10d, (%rax)
	movq $4, %rax
	pushq %rax
	movq %rbp, %rax
	subq $328, %rax
	pushq %rax
	movq $1, %rax
	movq %rax, %r10
	popq %rax
	imulq $4, %r10
	addq %r10, %rax
	popq %r10
	movl %r10d, (%rax)
	movq $5, %rax
	pushq %rax
	movq %rbp, %rax
	subq $328, %rax
	pushq %rax
	movq $2, %rax
	movq %rax, %r10
	popq %rax
	imulq $4, %r10
	addq %r10, %rax
	popq %r10
	movl %r10d, (%rax)
	movq %rbp, %rax
	subq $328, %rax
	pushq %rax
	movq $2, %rax
	movq %rax, %r10
	popq %rax
	imulq $4, %r10
	addq %r10, %rax
	movslq (%rax), %rax
//end block
	cmpq %r12, %rax
	je ASSERT_OK66
	movq $61, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK66:
//ASSERT(5, { int x[3]; *x=3; x[1]=4; x[2]=5; *(x+2); });
	movq $5, %rax
	movq %rax, %r12
//begin block
	movq $3, %rax
	pushq %rax
	movq %rbp, %rax
	subq $340, %rax
	popq %r10
	movl %r10d, (%rax)
	movq $4, %rax
	pushq %rax
	movq %rbp, %rax
	subq $340, %rax
	pushq %rax
	movq $1, %rax
	movq %rax, %r10
	popq %rax
	imulq $4, %r10
	addq %r10, %rax
	popq %r10
	movl %r10d, (%rax)
	movq $5, %rax
	pushq %rax
	movq %rbp, %rax
	subq $340, %rax
	pushq %rax
	movq $2, %rax
	movq %rax, %r10
	popq %rax
	imulq $4, %r10
	addq %r10, %rax
	popq %r10
	movl %r10d, (%rax)
	movq %rbp, %rax
	subq $340, %rax
	pushq %rax
	movq $2, %rax
	movq %rax, %r10
	popq %rax
	imulq $4, %r10
	addq %r10, %rax
	movslq (%rax), %rax
//end block
	cmpq %r12, %rax
	je ASSERT_OK67
	movq $62, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK67:
//ASSERT(5, { int x[3]; *x=3; x[1]=4; 2[x]=5; *(x+2); });
	movq $5, %rax
	movq %rax, %r12
//begin block
	movq $3, %rax
	pushq %rax
	movq %rbp, %rax
	subq $352, %rax
	popq %r10
	movl %r10d, (%rax)
	movq $4, %rax
	pushq %rax
	movq %rbp, %rax
	subq $352, %rax
	pushq %rax
	movq $1, %rax
	movq %rax, %r10
	popq %rax
	imulq $4, %r10
	addq %r10, %rax
	popq %r10
	movl %r10d, (%rax)
	movq $5, %rax
	pushq %rax
	movq $2, %rax
	pushq %rax
	movq %rbp, %rax
	subq $352, %rax
	movq %rax, %r10
	popq %rax
	imulq $4, %rax
	addq %r10, %rax
	popq %r10
	movl %r10d, (%rax)
	movq %rbp, %rax
	subq $352, %rax
	pushq %rax
	movq $2, %rax
	movq %rax, %r10
	popq %rax
	imulq $4, %r10
	addq %r10, %rax
	movslq (%rax), %rax
//end block
	cmpq %r12, %rax
	je ASSERT_OK68
	movq $63, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK68:
//ASSERT(5, { int i = 0;for (i = 1; i < 10; i++) if (i % 5 == 0) break; i; });
	movq $5, %rax
	movq %rax, %r12
//begin block
	movq $0, %rax
	movl %eax, -356(%rbp)
//for init
	movq $1, %rax
	movl %eax, -356(%rbp)
FOR70:
	movslq -356(%rbp), %rax
	pushq %rax
	movq $10, %rax
	movq %rax, %r10
	popq %rax
	cmpq %r10, %rax
	setl %al
	movzbq %al, %rax
	cmpq $0, %rax
	je FOR_END70
//if begin
	movslq -356(%rbp), %rax
	pushq %rax
	movq $5, %rax
	movq %rax, %r10
	popq %rax
	cqto
	idivq %r10
	movq %rdx, %rax
	pushq %rax
	movq $0, %rax
	movq %rax, %r10
	popq %rax
	cmpq %r10, %rax
	sete %al
	movzbq %al, %rax
	cmpq $0, %rax
	je ELSE71
	jmp FOR_END70
	jmp END_IF71
ELSE71:
END_IF71:
FOR_INC70:
	movslq -356(%rbp), %rax
	pushq %rax
	movslq -356(%rbp), %rax
	pushq %rax
	movq $1, %rax
	movq %rax, %r10
	popq %rax
	addq %r10, %rax
	movl %eax, -356(%rbp)
	popq %rax
	jmp FOR70
FOR_END70:
	movslq -356(%rbp), %rax
//end block
	cmpq %r12, %rax
	je ASSERT_OK69
	movq $64, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK69:
//ASSERT(5, { 
	movq $5, %rax
	movq %rax, %r12
//begin block
	movq $0, %rax
	movl %eax, -360(%rbp)
//for init
	movq $0, %rax
	movl %eax, -364(%rbp)
FOR73:
	movslq -364(%rbp), %rax
	pushq %rax
	movq $10, %rax
	movq %rax, %r10
	popq %rax
	cmpq %r10, %rax
	setl %al
	movzbq %al, %rax
	cmpq $0, %rax
	je FOR_END73
//begin block
//if begin
	movslq -364(%rbp), %rax
	pushq %rax
	movq $2, %rax
	movq %rax, %r10
	popq %rax
	cqto
	idivq %r10
	movq %rdx, %rax
	cmpq $0, %rax
	je ELSE74
	jmp FOR_INC73
	jmp END_IF74
ELSE74:
END_IF74:
	movslq -360(%rbp), %rax
	pushq %rax
	movslq -360(%rbp), %rax
	pushq %rax
	movq $1, %rax
	movq %rax, %r10
	popq %rax
	addq %r10, %rax
	movl %eax, -360(%rbp)
	popq %rax
//end block
FOR_INC73:
	movslq -364(%rbp), %rax
	pushq %rax
	movslq -364(%rbp), %rax
	pushq %rax
	movq $1, %rax
	movq %rax, %r10
	popq %rax
	addq %r10, %rax
	movl %eax, -364(%rbp)
	popq %rax
	jmp FOR73
FOR_END73:
	movslq -360(%rbp), %rax
//end block
	cmpq %r12, %rax
	je ASSERT_OK72
	movq $66, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK72:
//ASSERT(-1, (char)255);
	movq $1, %rax
	xorq %r10, %r10
	subq %rax, %r10
	movq %r10, %rax
	movq %rax, %r12
	movq $255, %rax
	movsbq %al, %r10
	movq %r10, %rax
	cmpq %r12, %rax
	je ASSERT_OK75
	movq $76, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK75:
//ASSERT(513, { int x=512; *(char *)&x=1; x; });
	movq $513, %rax
	movq %rax, %r12
//begin block
	movq $512, %rax
	movl %eax, -368(%rbp)
	movq $1, %rax
	movsbq %al, %r10
	movq %r10, %rax
	pushq %rax
	movq %rbp, %rax
	subq $368, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10
	movb %r10b, (%rax)
	movslq -368(%rbp), %rax
//end block
	cmpq %r12, %rax
	je ASSERT_OK76
	movq $77, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK76:
//ASSERT(1, -1<1);
	movq $1, %rax
	movq %rax, %r12
	movq $1, %rax
	xorq %r10, %r10
	subq %rax, %r10
	movq %r10, %rax
	pushq %rax
	movq $1, %rax
	movq %rax, %r10
	popq %rax
	cmpq %r10, %rax
	setl %al
	movzbq %al, %rax
	cmpq %r12, %rax
	je ASSERT_OK77
	movq $78, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK77:
//ASSERT(254, (char)127+(char)127);
	movq $254, %rax
	movq %rax, %r12
	movq $127, %rax
	movsbq %al, %r10
	movq %r10, %rax
	pushq %rax
	movq $127, %rax
	movsbq %al, %r10
	movq %r10, %rax
	movq %rax, %r10
	popq %rax
	addq %r10, %rax
	cmpq %r12, %rax
	je ASSERT_OK78
	movq $79, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK78:
//ASSERT(65534, (short)32767+(short)32767);
	movq $65534, %rax
	movq %rax, %r12
	movq $32767, %rax
	movswq %ax, %r10
	movq %r10, %rax
	pushq %rax
	movq $32767, %rax
	movswq %ax, %r10
	movq %r10, %rax
	movq %rax, %r10
	popq %rax
	addq %r10, %rax
	cmpq %r12, %rax
	je ASSERT_OK79
	movq $80, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK79:
//ASSERT(1, sizeof(char));
	movq $1, %rax
	movq %rax, %r12
	movq $1, %rax
	cmpq %r12, %rax
	je ASSERT_OK80
	movq $81, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK80:
//ASSERT(2, sizeof(short));
	movq $2, %rax
	movq %rax, %r12
	movq $2, %rax
	cmpq %r12, %rax
	je ASSERT_OK81
	movq $82, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK81:
//ASSERT(4, sizeof(int));
	movq $4, %rax
	movq %rax, %r12
	movq $4, %rax
	cmpq %r12, %rax
	je ASSERT_OK82
	movq $83, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK82:
//ASSERT(1, sizeof((char)1));
	movq $1, %rax
	movq %rax, %r12
	movq $1, %rax
	cmpq %r12, %rax
	je ASSERT_OK83
	movq $84, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK83:
//ASSERT(2, sizeof((short)1));
	movq $2, %rax
	movq %rax, %r12
	movq $2, %rax
	cmpq %r12, %rax
	je ASSERT_OK84
	movq $85, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK84:
//ASSERT(4, sizeof((int)1));
	movq $4, %rax
	movq %rax, %r12
	movq $4, %rax
	cmpq %r12, %rax
	je ASSERT_OK85
	movq $86, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK85:
//ASSERT(8, sizeof(int *));
	movq $8, %rax
	movq %rax, %r12
	movq $8, %rax
	cmpq %r12, %rax
	je ASSERT_OK86
	movq $87, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK86:
//ASSERT(1, {int arr[2]; &arr == arr && arr == &arr[0];});
	movq $1, %rax
	movq %rax, %r12
//begin block
	movq %rbp, %rax
	subq $376, %rax
	pushq %rax
	movq %rbp, %rax
	subq $376, %rax
	movq %rax, %r10
	popq %rax
	cmpq %r10, %rax
	sete %al
	movzbq %al, %rax
	cmpq $0, %rax
	movq $0, %rax
	je AND_OR88
	movq %rbp, %rax
	subq $376, %rax
	pushq %rax
	movq %rbp, %rax
	subq $376, %rax
	pushq %rax
	movq $0, %rax
	movq %rax, %r10
	popq %rax
	imulq $4, %r10
	addq %r10, %rax
	movq %rax, %r10
	popq %rax
	cmpq %r10, %rax
	sete %al
	movzbq %al, %rax
	cmpq $0, %rax
	setne %al
	movzbq %al, %rax
AND_OR88:
//end block
	cmpq %r12, %rax
	je ASSERT_OK87
	movq $88, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK87:
//ASSERT(8, {int arr[2]; sizeof(arr);});
	movq $8, %rax
	movq %rax, %r12
//begin block
	movq $8, %rax
//end block
	cmpq %r12, %rax
	je ASSERT_OK89
	movq $89, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK89:
//ASSERT(4, sizeof(int));
	movq $4, %rax
	movq %rax, %r12
	movq $4, %rax
	cmpq %r12, %rax
	je ASSERT_OK90
	movq $90, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK90:
//ASSERT(4, sizeof((char)1 + (char)1));
	movq $4, %rax
	movq %rax, %r12
	movq $4, %rax
	cmpq %r12, %rax
	je ASSERT_OK91
	movq $91, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK91:
//ASSERT(4, sizeof((short)1 + (short)1));
	movq $4, %rax
	movq %rax, %r12
	movq $4, %rax
	cmpq %r12, %rax
	je ASSERT_OK92
	movq $92, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK92:
//ASSERT(1, { char i; sizeof(++i); });
	movq $1, %rax
	movq %rax, %r12
//begin block
	movq $1, %rax
//end block
	cmpq %r12, %rax
	je ASSERT_OK93
	movq $93, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK93:
//ASSERT(1, { char i; sizeof(i++); });
	movq $1, %rax
	movq %rax, %r12
//begin block
	movq $1, %rax
//end block
	cmpq %r12, %rax
	je ASSERT_OK94
	movq $94, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK94:
//ASSERT(8, { long x; sizeof(x); });
	movq $8, %rax
	movq %rax, %r12
//begin block
	movq $8, %rax
//end block
	cmpq %r12, %rax
	je ASSERT_OK95
	movq $95, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK95:
//ASSERT(2, { short x; sizeof(x); });
	movq $2, %rax
	movq %rax, %r12
//begin block
	movq $2, %rax
//end block
	cmpq %r12, %rax
	je ASSERT_OK96
	movq $96, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK96:
//ASSERT(8, sizeof(-10 + (long)5));
	movq $8, %rax
	movq %rax, %r12
	movq $8, %rax
	cmpq %r12, %rax
	je ASSERT_OK97
	movq $97, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK97:
//ASSERT(8, sizeof(-10 - (long)5));
	movq $8, %rax
	movq %rax, %r12
	movq $8, %rax
	cmpq %r12, %rax
	je ASSERT_OK98
	movq $98, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK98:
//ASSERT(8, sizeof(-10 * (long)5));
	movq $8, %rax
	movq %rax, %r12
	movq $8, %rax
	cmpq %r12, %rax
	je ASSERT_OK99
	movq $99, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK99:
//ASSERT(8, sizeof(-10 / (long)5));
	movq $8, %rax
	movq %rax, %r12
	movq $8, %rax
	cmpq %r12, %rax
	je ASSERT_OK100
	movq $100, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK100:
//ASSERT(8, sizeof((long)-10 + 5));
	movq $8, %rax
	movq %rax, %r12
	movq $8, %rax
	cmpq %r12, %rax
	je ASSERT_OK101
	movq $101, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK101:
//ASSERT(8, sizeof((long)-10 - 5));
	movq $8, %rax
	movq %rax, %r12
	movq $8, %rax
	cmpq %r12, %rax
	je ASSERT_OK102
	movq $102, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK102:
//ASSERT(8, sizeof((long)-10 * 5));
	movq $8, %rax
	movq %rax, %r12
	movq $8, %rax
	cmpq %r12, %rax
	je ASSERT_OK103
	movq $103, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK103:
//ASSERT(8, sizeof((long)-10 / 5));
	movq $8, %rax
	movq %rax, %r12
	movq $8, %rax
	cmpq %r12, %rax
	je ASSERT_OK104
	movq $104, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK104:
//ASSERT(131585, (int)8590066177);
	movq $131585, %rax
	movq %rax, %r12
	movabsq $8590066177, %rax
	movslq %eax, %r10
	movq %r10, %rax
	cmpq %r12, %rax
	je ASSERT_OK105
	movq $105, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK105:
//ASSERT(513, (short)8590066177);
	movq $513, %rax
	movq %rax, %r12
	movabsq $8590066177, %rax
	movswq %ax, %r10
	movq %r10, %rax
	cmpq %r12, %rax
	je ASSERT_OK106
	movq $106, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK106:
//ASSERT(1, (char)8590066177);
	movq $1, %rax
	movq %rax, %r12
	movabsq $8590066177, %rax
	movsbq %al, %r10
	movq %r10, %rax
	cmpq %r12, %rax
	je ASSERT_OK107
	movq $107, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK107:
//ASSERT(-1, (char)255);
	movq $1, %rax
	xorq %r10, %r10
	subq %rax, %r10
	movq %r10, %rax
	movq %rax, %r12
	movq $255, %rax
	movsbq %al, %r10
	movq %r10, %rax
	cmpq %r12, %rax
	je ASSERT_OK108
	movq $108, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK108:
//ASSERT(-1, (signed char)255);
	movq $1, %rax
	xorq %r10, %r10
	subq %rax, %r10
	movq %r10, %rax
	movq %rax, %r12
	movq $255, %rax
	movsbq %al, %r10
	movq %r10, %rax
	cmpq %r12, %rax
	je ASSERT_OK109
	movq $109, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK109:
//ASSERT(255, (unsigned char)255);
	movq $255, %rax
	movq %rax, %r12
	movq $255, %rax
	xorq %r10, %r10
	movb %al, %r10b
	movq %r10, %rax
	cmpq %r12, %rax
	je ASSERT_OK110
	movq $110, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK110:
//ASSERT(-1, (short)65535);
	movq $1, %rax
	xorq %r10, %r10
	subq %rax, %r10
	movq %r10, %rax
	movq %rax, %r12
	movq $65535, %rax
	movswq %ax, %r10
	movq %r10, %rax
	cmpq %r12, %rax
	je ASSERT_OK111
	movq $111, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK111:
//ASSERT(65535, (unsigned short)65535);
	movq $65535, %rax
	movq %rax, %r12
	movq $65535, %rax
	xorq %r10, %r10
	movw %ax, %r10w
	movq %r10, %rax
	cmpq %r12, %rax
	je ASSERT_OK112
	movq $112, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK112:
//ASSERT(1, (long)1);
	movq $1, %rax
	movq %rax, %r12
	movq $1, %rax
	cmpq %r12, %rax
	je ASSERT_OK113
	movq $113, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK113:
//ASSERT(0, (long)&*(int *)0);
	movq $0, %rax
	movq %rax, %r12
	movq $0, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	cmpq %r12, %rax
	je ASSERT_OK114
	movq $114, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK114:
//ASSERT(513, { int x=512; *(char *)&x=1; x; });
	movq $513, %rax
	movq %rax, %r12
//begin block
	movq $512, %rax
	movl %eax, -408(%rbp)
	movq $1, %rax
	movsbq %al, %r10
	movq %r10, %rax
	pushq %rax
	movq %rbp, %rax
	subq $408, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	popq %r10
	movb %r10b, (%rax)
	movslq -408(%rbp), %rax
//end block
	cmpq %r12, %rax
	je ASSERT_OK115
	movq $115, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK115:
//ASSERT(5, { int x=5; long y=(long)&x; *(int*)y; });
	movq $5, %rax
	movq %rax, %r12
//begin block
	movq $5, %rax
	movl %eax, -412(%rbp)
	movq %rbp, %rax
	subq $412, %rax
	movq %rax, -424(%rbp)
	movq -424(%rbp), %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movslq (%rax), %rax
//end block
	cmpq %r12, %rax
	je ASSERT_OK116
	movq $116, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK116:
//ASSERT(1, -1<1);
	movq $1, %rax
	movq %rax, %r12
	movq $1, %rax
	xorq %r10, %r10
	subq %rax, %r10
	movq %r10, %rax
	pushq %rax
	movq $1, %rax
	movq %rax, %r10
	popq %rax
	cmpq %r10, %rax
	setl %al
	movzbq %al, %rax
	cmpq %r12, %rax
	je ASSERT_OK117
	movq $117, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK117:
//ASSERT(0, -1<(unsigned)1);
	movq $0, %rax
	movq %rax, %r12
	movq $1, %rax
	xorq %r10, %r10
	subq %rax, %r10
	movq %r10, %rax
	xorq %r10, %r10
	movl %eax, %r10d
	movq %r10, %rax
	pushq %rax
	movq $1, %rax
	xorq %r10, %r10
	movl %eax, %r10d
	movq %r10, %rax
	movq %rax, %r10
	popq %rax
	cmpq %r10, %rax
	setl %al
	movzbq %al, %rax
	cmpq %r12, %rax
	je ASSERT_OK118
	movq $118, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK118:
//ASSERT(254, (char)127+(char)127);
	movq $254, %rax
	movq %rax, %r12
	movq $127, %rax
	movsbq %al, %r10
	movq %r10, %rax
	pushq %rax
	movq $127, %rax
	movsbq %al, %r10
	movq %r10, %rax
	movq %rax, %r10
	popq %rax
	addq %r10, %rax
	cmpq %r12, %rax
	je ASSERT_OK119
	movq $119, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK119:
//ASSERT(65534, (short)32767+(short)32767);
	movq $65534, %rax
	movq %rax, %r12
	movq $32767, %rax
	movswq %ax, %r10
	movq %r10, %rax
	pushq %rax
	movq $32767, %rax
	movswq %ax, %r10
	movq %r10, %rax
	movq %rax, %r10
	popq %rax
	addq %r10, %rax
	cmpq %r12, %rax
	je ASSERT_OK120
	movq $120, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK120:
//ASSERT(-1, (unsigned long)-1);
	movq $1, %rax
	xorq %r10, %r10
	subq %rax, %r10
	movq %r10, %rax
	movq %rax, %r12
	movq $1, %rax
	xorq %r10, %r10
	subq %rax, %r10
	movq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	cmpq %r12, %rax
	je ASSERT_OK121
	movq $121, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK121:
//ASSERT(-50, (-100)/2);
	movq $50, %rax
	xorq %r10, %r10
	subq %rax, %r10
	movq %r10, %rax
	movq %rax, %r12
	movq $100, %rax
	xorq %r10, %r10
	subq %rax, %r10
	movq %r10, %rax
	pushq %rax
	movq $2, %rax
	movq %rax, %r10
	popq %rax
	cqto
	idivq %r10
	cmpq %r12, %rax
	je ASSERT_OK122
	movq $122, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK122:
//ASSERT(2147483598, ((unsigned)-100)/2);
	movq $2147483598, %rax
	movq %rax, %r12
	movq $100, %rax
	xorq %r10, %r10
	subq %rax, %r10
	movq %r10, %rax
	xorq %r10, %r10
	movl %eax, %r10d
	movq %r10, %rax
	pushq %rax
	movq $2, %rax
	xorq %r10, %r10
	movl %eax, %r10d
	movq %r10, %rax
	movq %rax, %r10
	popq %rax
	xorq %rdx, %rdx
	divq %r10
	cmpq %r12, %rax
	je ASSERT_OK123
	movq $123, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK123:
//ASSERT(9223372036854775758, ((unsigned long)-100)/2);
	movabsq $9223372036854775758, %rax
	movq %rax, %r12
	movq $100, %rax
	xorq %r10, %r10
	subq %rax, %r10
	movq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax
	movq $2, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq %rax, %r10
	popq %rax
	xorq %rdx, %rdx
	divq %r10
	cmpq %r12, %rax
	je ASSERT_OK124
	movq $124, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK124:
//ASSERT(0, ((long)-1)/(unsigned)100);
	movq $0, %rax
	movq %rax, %r12
	movq $1, %rax
	xorq %r10, %r10
	subq %rax, %r10
	movq %r10, %rax
	pushq %rax
	movq $100, %rax
	xorq %r10, %r10
	movl %eax, %r10d
	movq %r10, %rax
	movq %rax, %r10
	popq %rax
	cqto
	idivq %r10
	cmpq %r12, %rax
	je ASSERT_OK125
	movq $125, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK125:
//ASSERT(-2, (-100)%7);
	movq $2, %rax
	xorq %r10, %r10
	subq %rax, %r10
	movq %r10, %rax
	movq %rax, %r12
	movq $100, %rax
	xorq %r10, %r10
	subq %rax, %r10
	movq %r10, %rax
	pushq %rax
	movq $7, %rax
	movq %rax, %r10
	popq %rax
	cqto
	idivq %r10
	movq %rdx, %rax
	cmpq %r12, %rax
	je ASSERT_OK126
	movq $126, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK126:
//ASSERT(2, ((unsigned)-100)%7);
	movq $2, %rax
	movq %rax, %r12
	movq $100, %rax
	xorq %r10, %r10
	subq %rax, %r10
	movq %r10, %rax
	xorq %r10, %r10
	movl %eax, %r10d
	movq %r10, %rax
	pushq %rax
	movq $7, %rax
	xorq %r10, %r10
	movl %eax, %r10d
	movq %r10, %rax
	movq %rax, %r10
	popq %rax
	xorq %rdx, %rdx
	divq %r10
	movq %rdx, %rax
	cmpq %r12, %rax
	je ASSERT_OK127
	movq $127, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK127:
//ASSERT(6, ((unsigned long)-100)%9);
	movq $6, %rax
	movq %rax, %r12
	movq $100, %rax
	xorq %r10, %r10
	subq %rax, %r10
	movq %r10, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	pushq %rax
	movq $9, %rax
	xorq %r10, %r10
	movq %rax, %r10
	movq %r10, %rax
	movq %rax, %r10
	popq %rax
	xorq %rdx, %rdx
	divq %r10
	movq %rdx, %rax
	cmpq %r12, %rax
	je ASSERT_OK128
	movq $128, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK128:
//ASSERT(65535, (int)(unsigned short)65535);
	movq $65535, %rax
	movq %rax, %r12
	movq $65535, %rax
	xorq %r10, %r10
	movw %ax, %r10w
	movq %r10, %rax
	xorq %r10, %r10
	movl %eax, %r10d
	movslq %r10d, %rax
	cmpq %r12, %rax
	je ASSERT_OK129
	movq $129, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK129:
//ASSERT(65535, { unsigned short x = 65535; x; });
	movq $65535, %rax
	movq %rax, %r12
//begin block
	movq $65535, %rax
	xorq %r10, %r10
	movw %ax, %r10w
	movq %r10, %rax
	movw %ax, -426(%rbp)
	movzwq -426(%rbp), %rax
//end block
	cmpq %r12, %rax
	je ASSERT_OK130
	movq $130, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK130:
//ASSERT(65535, { unsigned short x = 65535; (int)x; });
	movq $65535, %rax
	movq %rax, %r12
//begin block
	movq $65535, %rax
	xorq %r10, %r10
	movw %ax, %r10w
	movq %r10, %rax
	movw %ax, -428(%rbp)
	movzwq -428(%rbp), %rax
	xorq %r10, %r10
	movl %eax, %r10d
	movslq %r10d, %rax
//end block
	cmpq %r12, %rax
	je ASSERT_OK131
	movq $131, %rdi
	movq %r12, %rsi
	movq %rax, %rdx
	callq _error
ASSERT_OK131:
	leaq L_.str.1(%rip), %rax
	pushq %rax
	popq %rdi
	callq _printf
//end block
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret

	.section	__DATA,__data
L_.str.0:
	.asciz "line %d: assertion failed, expected %d, but found %d\n"
L_.str.1:
	.asciz "OK\n"
