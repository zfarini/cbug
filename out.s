# 1 "final.s"
# 1 "<built-in>" 1
# 1 "final.s" 2

_assert:
 pushq %rbp
 movq %rsp, %rbp
 subq $287054896, %rsp
 movl %edi, -4(%rbp)


 movslq -4(%rbp), %rax
 cmpq $0, %rax
 setne %al
 xorb $-1, %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE0

 leaq L_.str.0(%rip), %rax
 pushq %rax
 popq %rdi
 callq _printf
 jmp END_IF0
ELSE0:
END_IF0:

 movq $0, %rax
 movq %rbp, %rsp
 popq %rbp
 ret


_token_type_name:
 pushq %rbp
 movq %rsp, %rbp
 subq $16, %rsp
 movl %edi, -4(%rbp)


 movslq -4(%rbp), %rax
 pushq %rax
 movq $256, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE1
 leaq L_.str.1(%rip), %rax
 movq %rbp, %rsp
 popq %rbp
 ret
 jmp END_IF1
ELSE1:

 movslq -4(%rbp), %rax
 pushq %rax
 movq $257, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE2
 leaq L_.str.2(%rip), %rax
 movq %rbp, %rsp
 popq %rbp
 ret
 jmp END_IF2
ELSE2:

 movslq -4(%rbp), %rax
 pushq %rax
 movq $274, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE3
 leaq L_.str.3(%rip), %rax
 movq %rbp, %rsp
 popq %rbp
 ret
 jmp END_IF3
ELSE3:

 movslq -4(%rbp), %rax
 pushq %rax
 movq $255, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setl %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE4


 movq _token_type_name_c@GOTPCREL(%rip), %rax
 pushq %rax
 movslq -4(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 movq (%rax), %rax
 cmpq $0, %rax
 setne %al
 xorb $-1, %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE5



 movq $2, %rax
 pushq %rax
 popq %rdi
 callq _malloc
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq _token_type_name_c@GOTPCREL(%rip), %rax
 pushq %rax
 movslq -4(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 popq %r10
 movq %r10, (%rax)

 movslq -4(%rbp), %rax
 movsbq %al, %r10
 movq %r10, %rax
 pushq %rax
 movq _token_type_name_c@GOTPCREL(%rip), %rax
 pushq %rax
 movslq -4(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 movq $0, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 popq %r10
 movb %r10b, (%rax)

 movq $0, %rax
 movsbq %al, %r10
 movq %r10, %rax
 pushq %rax
 movq _token_type_name_c@GOTPCREL(%rip), %rax
 pushq %rax
 movslq -4(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 popq %r10
 movb %r10b, (%rax)

 jmp END_IF5
ELSE5:
END_IF5:
 movq _token_type_name_c@GOTPCREL(%rip), %rax
 pushq %rax
 movslq -4(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 movq (%rax), %rax
 movq %rbp, %rsp
 popq %rbp
 ret

 jmp END_IF4
ELSE4:


 movq $0, %rax
 movl %eax, -8(%rbp)
FOR6:


 movq _multi_char_tokens_type@GOTPCREL(%rip), %rax
 pushq %rax
 movslq -8(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $16, %r10
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
 movq (%rax), %rax
 cmpq $0, %rax
 je FOR_END6




 movq _multi_char_tokens_type@GOTPCREL(%rip), %rax
 pushq %rax
 movslq -8(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $16, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 movslq -4(%rbp), %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE7


 movq _multi_char_tokens_type@GOTPCREL(%rip), %rax
 pushq %rax
 movslq -8(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $16, %r10
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
 movq (%rax), %rax
 movq %rbp, %rsp
 popq %rbp
 ret
 jmp END_IF7
ELSE7:
END_IF7:

FOR_INC6:
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
 jmp FOR6
FOR_END6:

 movq $0, %rax
 movl %eax, -12(%rbp)
FOR8:


 movq _keywords@GOTPCREL(%rip), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $16, %r10
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
 movq (%rax), %rax
 cmpq $0, %rax
 je FOR_END8




 movq _keywords@GOTPCREL(%rip), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $16, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 movslq -4(%rbp), %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE9


 movq _keywords@GOTPCREL(%rip), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $16, %r10
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
 movq (%rax), %rax
 movq %rbp, %rsp
 popq %rbp
 ret
 jmp END_IF9
ELSE9:
END_IF9:

FOR_INC8:
 movslq -12(%rbp), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, -12(%rbp)
 popq %rax
 jmp FOR8
FOR_END8:

END_IF4:
END_IF3:
END_IF2:
END_IF1:

 movq $0, %rax
 pushq %rax
 popq %rdi
 callq _assert

 movq $0, %rax
 movq %rbp, %rsp
 popq %rbp
 ret


_new_temp_token:
 pushq %rbp
 movq %rsp, %rbp
 subq $16, %rsp
 movl %edi, -4(%rbp)



 movq $40, %rax
 pushq %rax
 movq $1, %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _calloc
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq %rax, -16(%rbp)
 movslq -4(%rbp), %rax
 pushq %rax


 movq -16(%rbp), %rax
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
 popq %r10
 movl %r10d, (%rax)
 movq $1, %rax
 xorq %r10, %r10
 subq %rax, %r10
 movq %r10, %rax
 pushq %rax


 movq -16(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movl %r10d, (%rax)
 movq $1, %rax
 xorq %r10, %r10
 subq %rax, %r10
 movq %r10, %rax
 pushq %rax


 movq -16(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movl %r10d, (%rax)
 movq -16(%rbp), %rax
 movq %rbp, %rsp
 popq %rbp
 ret

 movq $0, %rax
 movq %rbp, %rsp
 popq %rbp
 ret


_get_backspace_char:
 pushq %rbp
 movq %rsp, %rbp
 subq $16, %rsp
 movb %dil, -1(%rbp)



 movsbq -1(%rbp), %rax
 pushq %rax
 movq $110, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE10
 movq $10, %rax
 movq %rbp, %rsp
 popq %rbp
 ret
 jmp END_IF10
ELSE10:
END_IF10:


 movsbq -1(%rbp), %rax
 pushq %rax
 movq $116, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE11
 movq $9, %rax
 movq %rbp, %rsp
 popq %rbp
 ret
 jmp END_IF11
ELSE11:
END_IF11:


 movsbq -1(%rbp), %rax
 pushq %rax
 movq $114, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE12
 movq $13, %rax
 movq %rbp, %rsp
 popq %rbp
 ret
 jmp END_IF12
ELSE12:
END_IF12:


 movsbq -1(%rbp), %rax
 pushq %rax
 movq $118, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE13
 movq $11, %rax
 movq %rbp, %rsp
 popq %rbp
 ret
 jmp END_IF13
ELSE13:
END_IF13:


 movsbq -1(%rbp), %rax
 pushq %rax
 movq $102, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE14
 movq $12, %rax
 movq %rbp, %rsp
 popq %rbp
 ret
 jmp END_IF14
ELSE14:
END_IF14:


 movsbq -1(%rbp), %rax
 pushq %rax
 movq $97, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE15
 movq $7, %rax
 movq %rbp, %rsp
 popq %rbp
 ret
 jmp END_IF15
ELSE15:
END_IF15:


 movsbq -1(%rbp), %rax
 pushq %rax
 movq $98, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE16
 movq $8, %rax
 movq %rbp, %rsp
 popq %rbp
 ret
 jmp END_IF16
ELSE16:
END_IF16:
 movsbq -1(%rbp), %rax
 movq %rbp, %rsp
 popq %rbp
 ret

 movq $0, %rax
 movq %rbp, %rsp
 popq %rbp
 ret


_add_multi_char_token:
 pushq %rbp
 movq %rsp, %rbp
 subq $16, %rsp
 movq %rdi, -8(%rbp)
 movl %esi, -12(%rbp)

 movq -8(%rbp), %rax
 pushq %rax


 movq _multi_char_tokens_type@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _multi_char_token_count(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $16, %r10
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
 popq %r10
 movq %r10, (%rax)
 movslq -12(%rbp), %rax
 pushq %rax


 movq _multi_char_tokens_type@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _multi_char_token_count(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $16, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movl %r10d, (%rax)
 movslq _multi_char_token_count(%rip), %rax
 pushq %rax
 movslq _multi_char_token_count(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _multi_char_token_count(%rip)
 popq %rax

 movq $0, %rax
 movq %rbp, %rsp
 popq %rbp
 ret


_add_keyword:
 pushq %rbp
 movq %rsp, %rbp
 subq $16, %rsp
 movq %rdi, -8(%rbp)
 movl %esi, -12(%rbp)

 movq -8(%rbp), %rax
 pushq %rax


 movq _keywords@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _keyword_count(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $16, %r10
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
 popq %r10
 movq %r10, (%rax)
 movslq -12(%rbp), %rax
 pushq %rax


 movq _keywords@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _keyword_count(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $16, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movl %r10d, (%rax)
 movslq _keyword_count(%rip), %rax
 pushq %rax
 movslq _keyword_count(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _keyword_count(%rip)
 popq %rax

 movq $0, %rax
 movq %rbp, %rsp
 popq %rbp
 ret


_tokenize:
 pushq %rbp
 movq %rsp, %rbp
 subq $80, %rsp
 movq %rdi, -8(%rbp)


 leaq L_.str.4(%rip), %rax
 pushq %rax
 movq $260, %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _add_multi_char_token

 leaq L_.str.5(%rip), %rax
 pushq %rax
 movq $261, %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _add_multi_char_token

 leaq L_.str.6(%rip), %rax
 pushq %rax
 movq $262, %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _add_multi_char_token

 leaq L_.str.7(%rip), %rax
 pushq %rax
 movq $263, %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _add_multi_char_token

 leaq L_.str.8(%rip), %rax
 pushq %rax
 movq $258, %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _add_multi_char_token

 leaq L_.str.9(%rip), %rax
 pushq %rax
 movq $259, %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _add_multi_char_token

 leaq L_.str.10(%rip), %rax
 pushq %rax
 movq $275, %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _add_multi_char_token

 leaq L_.str.11(%rip), %rax
 pushq %rax
 movq $276, %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _add_multi_char_token

 leaq L_.str.12(%rip), %rax
 pushq %rax
 movq $282, %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _add_multi_char_token

 leaq L_.str.13(%rip), %rax
 pushq %rax
 movq $283, %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _add_multi_char_token

 leaq L_.str.14(%rip), %rax
 pushq %rax
 movq $284, %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _add_multi_char_token

 leaq L_.str.15(%rip), %rax
 pushq %rax
 movq $285, %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _add_multi_char_token

 leaq L_.str.16(%rip), %rax
 pushq %rax
 movq $288, %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _add_multi_char_token

 movq $0, %rax
 pushq %rax
 movq $0, %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _add_multi_char_token

 leaq L_.str.17(%rip), %rax
 pushq %rax
 movq $264, %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _add_keyword

 leaq L_.str.18(%rip), %rax
 pushq %rax
 movq $268, %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _add_keyword

 leaq L_.str.19(%rip), %rax
 pushq %rax
 movq $267, %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _add_keyword

 leaq L_.str.20(%rip), %rax
 pushq %rax
 movq $265, %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _add_keyword

 leaq L_.str.21(%rip), %rax
 pushq %rax
 movq $266, %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _add_keyword

 leaq L_.str.1(%rip), %rax
 pushq %rax
 movq $269, %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _add_keyword

 leaq L_.str.22(%rip), %rax
 pushq %rax
 movq $270, %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _add_keyword

 leaq L_.str.23(%rip), %rax
 pushq %rax
 movq $271, %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _add_keyword

 leaq L_.str.24(%rip), %rax
 pushq %rax
 movq $272, %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _add_keyword

 leaq L_.str.25(%rip), %rax
 pushq %rax
 movq $273, %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _add_keyword

 leaq L_.str.26(%rip), %rax
 pushq %rax
 movq $279, %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _add_keyword

 leaq L_.str.27(%rip), %rax
 pushq %rax
 movq $280, %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _add_keyword

 leaq L_.str.28(%rip), %rax
 pushq %rax
 movq $277, %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _add_keyword

 leaq L_.str.29(%rip), %rax
 pushq %rax
 movq $278, %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _add_keyword

 leaq L_.str.30(%rip), %rax
 pushq %rax
 movq $281, %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _add_keyword

 leaq L_.str.25(%rip), %rax
 pushq %rax
 movq $273, %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _add_keyword

 leaq L_.str.31(%rip), %rax
 pushq %rax
 movq $286, %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _add_keyword

 leaq L_.str.32(%rip), %rax
 pushq %rax
 movq $287, %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _add_keyword

 leaq L_.str.33(%rip), %rax
 pushq %rax
 movq $289, %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _add_keyword
 movq $0, %rax
 movl %eax, -12(%rbp)
 movq $0, %rax
 movl %eax, -16(%rbp)
 movq $1, %rax
 movl %eax, -20(%rbp)
 movq $1, %rax
 movl %eax, -24(%rbp)

 movq -8(%rbp), %rax
 pushq %rax
 popq %rdi
 callq _assert
WHILE17:
 movq -8(%rbp), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 movsbq (%rax), %rax
 cmpq $0, %rax
 je WHILE_END17

 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq -16(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
 addq %r10, %rax
 movq %rax, -32(%rbp)
 movq $0, %rax
 pushq %rax


 movq -32(%rbp), %rax
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
 popq %r10
 movl %r10d, (%rax)
WHILE18:

 movq -8(%rbp), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 movsbq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _isspace
 cmpq $0, %rax
 je WHILE_END18



 movq -8(%rbp), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 movsbq (%rax), %rax
 pushq %rax
 movq $10, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE19

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
 movq $1, %rax
 movl %eax, -24(%rbp)

 jmp END_IF19
ELSE19:
 movslq -24(%rbp), %rax
 pushq %rax
 movslq -24(%rbp), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, -24(%rbp)
 popq %rax
END_IF19:
 movslq -12(%rbp), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, -12(%rbp)
 popq %rax

 jmp WHILE18
WHILE_END18:

 movq -8(%rbp), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 movsbq (%rax), %rax
 cmpq $0, %rax
 setne %al
 xorb $-1, %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE20
 jmp WHILE_END17
 jmp END_IF20
ELSE20:
END_IF20:


 movq -8(%rbp), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 movsbq (%rax), %rax
 pushq %rax
 movq $35, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE21

WHILE22:

 movq -8(%rbp), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 movsbq (%rax), %rax
 pushq %rax
 movq $10, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setne %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je WHILE_END22
 movslq -12(%rbp), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, -12(%rbp)
 popq %rax
 jmp WHILE22
WHILE_END22:
 jmp WHILE17

 jmp END_IF21
ELSE21:


 movq -8(%rbp), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 movsbq (%rax), %rax
 pushq %rax
 movq $47, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 movq $0, %rax
 je AND_OR24

 movq -8(%rbp), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 movsbq (%rax), %rax
 pushq %rax
 movq $47, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR24:
 cmpq $0, %rax
 je ELSE23

WHILE25:

 movq -8(%rbp), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 movsbq (%rax), %rax
 cmpq $0, %rax
 movq $0, %rax
 je AND_OR26

 movq -8(%rbp), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 movsbq (%rax), %rax
 pushq %rax
 movq $10, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setne %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR26:
 cmpq $0, %rax
 je WHILE_END25
 movslq -12(%rbp), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, -12(%rbp)
 popq %rax
 jmp WHILE25
WHILE_END25:
 jmp WHILE17

 jmp END_IF23
ELSE23:
END_IF23:
END_IF21:


 movq -8(%rbp), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 movsbq (%rax), %rax
 pushq %rax
 movq $47, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 movq $0, %rax
 je AND_OR28

 movq -8(%rbp), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 movsbq (%rax), %rax
 pushq %rax
 movq $42, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR28:
 cmpq $0, %rax
 je ELSE27

 movslq -12(%rbp), %rax
 pushq %rax
 movq $2, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, -12(%rbp)
WHILE29:

 movq -8(%rbp), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 movsbq (%rax), %rax
 cmpq $0, %rax
 movq $0, %rax
 je AND_OR30

 movq -8(%rbp), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 movsbq (%rax), %rax
 pushq %rax
 movq $42, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setne %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 movq $1, %rax
 jne AND_OR31

 movq -8(%rbp), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 movsbq (%rax), %rax
 pushq %rax
 movq $47, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setne %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR31:
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR30:
 cmpq $0, %rax
 je WHILE_END29
 movslq -12(%rbp), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, -12(%rbp)
 popq %rax
 jmp WHILE29
WHILE_END29:

 movq -8(%rbp), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 movsbq (%rax), %rax
 cmpq $0, %rax
 je ELSE32
 movslq -12(%rbp), %rax
 pushq %rax
 movq $2, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, -12(%rbp)
 jmp END_IF32
ELSE32:

 leaq L_.str.34(%rip), %rax
 pushq %rax
 popq %rdi
 callq _error
END_IF32:
 jmp WHILE17

 jmp END_IF27
ELSE27:
END_IF27:
 movq -8(%rbp), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 pushq %rax


 movq -32(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 movslq -20(%rbp), %rax
 pushq %rax


 movq -32(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movl %r10d, (%rax)
 movslq -24(%rbp), %rax
 pushq %rax


 movq -32(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movl %r10d, (%rax)
 movslq -12(%rbp), %rax
 movl %eax, -36(%rbp)


 movq -8(%rbp), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 movsbq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _isdigit
 cmpq $0, %rax
 je ELSE33

 movq $256, %rax
 pushq %rax


 movq -32(%rbp), %rax
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
 popq %r10
 movl %r10d, (%rax)

 movq $0, %rax
 pushq %rax


 movq -32(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)
WHILE34:

 movq -8(%rbp), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 movsbq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _isdigit
 cmpq $0, %rax
 je WHILE_END34



 movq -32(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax

 movq $10, %rax
 movq %rax, %r10
 popq %rax
 imulq %r10, %rax
 pushq %rax


 movq -8(%rbp), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 movsbq (%rax), %rax
 pushq %rax
 movq $48, %rax
 movq %rax, %r10
 popq %rax
 subq %r10, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 pushq %rax


 movq -32(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 movslq -12(%rbp), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, -12(%rbp)
 popq %rax

 jmp WHILE34
WHILE_END34:

 jmp END_IF33
ELSE33:


 movq -8(%rbp), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 movsbq (%rax), %rax
 pushq %rax
 movq $39, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE35

 movslq -12(%rbp), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, -12(%rbp)
 popq %rax
 movq $256, %rax
 pushq %rax


 movq -32(%rbp), %rax
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
 popq %r10
 movl %r10d, (%rax)


 movq -8(%rbp), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 movsbq (%rax), %rax
 pushq %rax
 movq $92, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE36

 movslq -12(%rbp), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, -12(%rbp)
 popq %rax


 movq -8(%rbp), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 movsbq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _get_backspace_char
 pushq %rax


 movq -32(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)

 jmp END_IF36
ELSE36:

 movq -8(%rbp), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 movsbq (%rax), %rax
 pushq %rax


 movq -32(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)
END_IF36:
 movslq -12(%rbp), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, -12(%rbp)
 popq %rax


 movq -8(%rbp), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 movsbq (%rax), %rax
 pushq %rax
 movq $39, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setne %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE37

 movq -32(%rbp), %rax
 pushq %rax
 leaq L_.str.35(%rip), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _error_token
 jmp END_IF37
ELSE37:
END_IF37:
 movslq -12(%rbp), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, -12(%rbp)
 popq %rax

 jmp END_IF35
ELSE35:


 movq -8(%rbp), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 movsbq (%rax), %rax
 pushq %rax
 movq $34, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE38

 movslq -12(%rbp), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, -12(%rbp)
 popq %rax
 movq $274, %rax
 pushq %rax


 movq -32(%rbp), %rax
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
 popq %r10
 movl %r10d, (%rax)
 movslq -12(%rbp), %rax
 movl %eax, -40(%rbp)
WHILE39:

 movq -8(%rbp), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 movsbq (%rax), %rax
 cmpq $0, %rax
 movq $0, %rax
 je AND_OR40

 movq -8(%rbp), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 movsbq (%rax), %rax
 pushq %rax
 movq $34, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setne %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 movq $1, %rax
 jne AND_OR41

 movq -8(%rbp), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 subq %r10, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 movsbq (%rax), %rax
 pushq %rax
 movq $92, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR41:
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR40:
 cmpq $0, %rax
 je WHILE_END39
 movslq -12(%rbp), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, -12(%rbp)
 popq %rax
 jmp WHILE39
WHILE_END39:


 movq -8(%rbp), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 movsbq (%rax), %rax
 pushq %rax
 movq $34, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setne %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE42

 movq -32(%rbp), %rax
 pushq %rax
 leaq L_.str.36(%rip), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _error_token
 jmp END_IF42
ELSE42:
END_IF42:


 movslq -12(%rbp), %rax
 pushq %rax
 movslq -40(%rbp), %rax
 movq %rax, %r10
 popq %rax
 subq %r10, %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 pushq %rax
 popq %rdi
 callq _malloc
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq %rax, -48(%rbp)

 movq -48(%rbp), %rax
 pushq %rax
 movq -8(%rbp), %rax
 pushq %rax
 movslq -40(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 pushq %rax
 movslq -12(%rbp), %rax
 pushq %rax
 movslq -40(%rbp), %rax
 movq %rax, %r10
 popq %rax
 subq %r10, %rax
 pushq %rax
 popq %rdx
 popq %rsi
 popq %rdi
 callq _memcpy

 movq $0, %rax
 movsbq %al, %r10
 movq %r10, %rax
 pushq %rax
 movq -48(%rbp), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 pushq %rax
 movslq -40(%rbp), %rax
 movq %rax, %r10
 popq %rax
 subq %r10, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 popq %r10
 movb %r10b, (%rax)
 movq -48(%rbp), %rax
 pushq %rax


 movq -32(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 movslq -12(%rbp), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, -12(%rbp)
 popq %rax

 jmp END_IF38
ELSE38:


 movq -8(%rbp), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 movsbq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _isalpha
 cmpq $0, %rax
 movq $1, %rax
 jne AND_OR44

 movq -8(%rbp), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 movsbq (%rax), %rax
 pushq %rax
 movq $95, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR44:
 cmpq $0, %rax
 je ELSE43

 movslq -12(%rbp), %rax
 movl %eax, -52(%rbp)
WHILE45:

 movq -8(%rbp), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 movsbq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _isalnum
 cmpq $0, %rax
 movq $1, %rax
 jne AND_OR46

 movq -8(%rbp), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 movsbq (%rax), %rax
 pushq %rax
 movq $95, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR46:
 cmpq $0, %rax
 je WHILE_END45
 movslq -12(%rbp), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, -12(%rbp)
 popq %rax
 jmp WHILE45
WHILE_END45:


 movslq -12(%rbp), %rax
 pushq %rax
 movslq -52(%rbp), %rax
 movq %rax, %r10
 popq %rax
 subq %r10, %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 pushq %rax
 popq %rdi
 callq _malloc
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq %rax, -64(%rbp)

 movq -64(%rbp), %rax
 pushq %rax
 movq -8(%rbp), %rax
 pushq %rax
 movslq -52(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 pushq %rax
 movslq -12(%rbp), %rax
 pushq %rax
 movslq -52(%rbp), %rax
 movq %rax, %r10
 popq %rax
 subq %r10, %rax
 pushq %rax
 popq %rdx
 popq %rsi
 popq %rdi
 callq _memcpy

 movq $0, %rax
 movsbq %al, %r10
 movq %r10, %rax
 pushq %rax
 movq -64(%rbp), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 pushq %rax
 movslq -52(%rbp), %rax
 movq %rax, %r10
 popq %rax
 subq %r10, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 popq %r10
 movb %r10b, (%rax)
 movq $257, %rax
 pushq %rax


 movq -32(%rbp), %rax
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
 popq %r10
 movl %r10d, (%rax)

 movq $0, %rax
 movl %eax, -68(%rbp)
FOR47:


 movq _keywords@GOTPCREL(%rip), %rax
 pushq %rax
 movslq -68(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $16, %r10
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
 movq (%rax), %rax
 cmpq $0, %rax
 je FOR_END47



 movq -64(%rbp), %rax
 pushq %rax


 movq _keywords@GOTPCREL(%rip), %rax
 pushq %rax
 movslq -68(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $16, %r10
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
 movq (%rax), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _strcmp
 cmpq $0, %rax
 setne %al
 xorb $-1, %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE48



 movq _keywords@GOTPCREL(%rip), %rax
 pushq %rax
 movslq -68(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $16, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax


 movq -32(%rbp), %rax
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
 popq %r10
 movl %r10d, (%rax)
 jmp FOR_END47

 jmp END_IF48
ELSE48:
END_IF48:

FOR_INC47:
 movslq -68(%rbp), %rax
 pushq %rax
 movslq -68(%rbp), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, -68(%rbp)
 popq %rax
 jmp FOR47
FOR_END47:
 movq -64(%rbp), %rax
 pushq %rax


 movq -32(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)

 jmp END_IF43
ELSE43:


 movq $0, %rax
 movl %eax, -72(%rbp)
FOR49:


 movq _multi_char_tokens_type@GOTPCREL(%rip), %rax
 pushq %rax
 movslq -72(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $16, %r10
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
 movq (%rax), %rax
 cmpq $0, %rax
 je FOR_END49



 movq -8(%rbp), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 pushq %rax


 movq _multi_char_tokens_type@GOTPCREL(%rip), %rax
 pushq %rax
 movslq -72(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $16, %r10
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
 movq (%rax), %rax
 pushq %rax



 movq _multi_char_tokens_type@GOTPCREL(%rip), %rax
 pushq %rax
 movslq -72(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $16, %r10
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
 movq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _strlen
 pushq %rax
 popq %rdx
 popq %rsi
 popq %rdi
 callq _strncmp
 cmpq $0, %rax
 setne %al
 xorb $-1, %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE50



 movq _multi_char_tokens_type@GOTPCREL(%rip), %rax
 pushq %rax
 movslq -72(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $16, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax


 movq -32(%rbp), %rax
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
 popq %r10
 movl %r10d, (%rax)
 movslq -12(%rbp), %rax
 pushq %rax



 movq _multi_char_tokens_type@GOTPCREL(%rip), %rax
 pushq %rax
 movslq -72(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $16, %r10
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
 movq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _strlen
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, -12(%rbp)
 jmp FOR_END49

 jmp END_IF50
ELSE50:
END_IF50:

FOR_INC49:
 movslq -72(%rbp), %rax
 pushq %rax
 movslq -72(%rbp), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, -72(%rbp)
 popq %rax
 jmp FOR49
FOR_END49:



 movq -32(%rbp), %rax
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
 cmpq $0, %rax
 setne %al
 xorb $-1, %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE51



 leaq L_.str.37(%rip), %rax
 pushq %rax
 movq -8(%rbp), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 movsbq (%rax), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _strchr
 cmpq $0, %rax
 je ELSE52


 movq -8(%rbp), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 movsbq (%rax), %rax
 pushq %rax


 movq -32(%rbp), %rax
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
 popq %r10
 movl %r10d, (%rax)
 movslq -12(%rbp), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, -12(%rbp)
 popq %rax

 jmp END_IF52
ELSE52:


 movq -32(%rbp), %rax
 pushq %rax
 leaq L_.str.38(%rip), %rax
 pushq %rax
 movq -8(%rbp), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 movsbq (%rax), %rax
 pushq %rax
 popq %rdx
 popq %rsi
 popq %rdi
 callq _error_token

END_IF52:

 jmp END_IF51
ELSE51:
END_IF51:

END_IF43:
END_IF38:
END_IF35:
END_IF33:
 movslq -24(%rbp), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 pushq %rax
 movslq -36(%rbp), %rax
 movq %rax, %r10
 popq %rax
 subq %r10, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, -24(%rbp)
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

 jmp WHILE17
WHILE_END17:
 movq $0, %rax
 pushq %rax


 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq -16(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 popq %r10
 movl %r10d, (%rax)
 movslq -20(%rbp), %rax
 pushq %rax


 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq -16(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movl %r10d, (%rax)
 movslq -24(%rbp), %rax
 pushq %rax


 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq -16(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movl %r10d, (%rax)
 movq -8(%rbp), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 pushq %rax


 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq -16(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)


 movq -8(%rbp), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 subq %r10, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 movsbq (%rax), %rax
 pushq %rax
 movq $10, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE53


 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq -16(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax


 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq -16(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 movq $-1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 pushq %rax


 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq -16(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movl %r10d, (%rax)
 popq %rax
 movq $1, %rax
 pushq %rax


 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq -16(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movl %r10d, (%rax)
 jmp END_IF53
ELSE53:
END_IF53:

 leaq L_.str.39(%rip), %rax
 pushq %rax
 popq %rdi
 callq _printf
 movq _tokens@GOTPCREL(%rip), %rax
 movq %rbp, %rsp
 popq %rbp
 ret

 movq $0, %rax
 movq %rbp, %rsp
 popq %rbp
 ret


_align:
 pushq %rbp
 movq %rsp, %rbp
 subq $16, %rsp
 movl %edi, -4(%rbp)
 movl %esi, -8(%rbp)

 movslq -4(%rbp), %rax
 pushq %rax
 movslq -8(%rbp), %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 subq %r10, %rax
 pushq %rax
 movslq -8(%rbp), %rax
 movq %rax, %r10
 popq %rax
 cqto
 idivq %r10
 pushq %rax
 movslq -8(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq %r10, %rax
 movq %rbp, %rsp
 popq %rbp
 ret

 movq $0, %rax
 movq %rbp, %rsp
 popq %rbp
 ret


_find:
 pushq %rbp
 movq %rsp, %rbp
 subq $16, %rsp
 movq %rdi, -8(%rbp)
 movb %sil, -9(%rbp)

 movq $0, %rax
 movl %eax, -16(%rbp)
WHILE54:
 movq -8(%rbp), %rax
 pushq %rax
 movslq -16(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 movsbq (%rax), %rax
 cmpq $0, %rax
 je WHILE_END54



 movq -8(%rbp), %rax
 pushq %rax
 movslq -16(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 movsbq (%rax), %rax
 pushq %rax

 movsbq -9(%rbp), %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE55
 movq -8(%rbp), %rax
 pushq %rax
 movslq -16(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 movq %rbp, %rsp
 popq %rbp
 ret
 jmp END_IF55
ELSE55:
END_IF55:
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

 jmp WHILE54
WHILE_END54:
 movq $0, %rax
 movq %rbp, %rsp
 popq %rbp
 ret

 movq $0, %rax
 movq %rbp, %rsp
 popq %rbp
 ret


_new_scope:
 pushq %rbp
 movq %rsp, %rbp
 subq $16, %rsp

 movq _scopes@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _scope_count(%rip), %rax
 pushq %rax
 movslq _scope_count(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _scope_count(%rip)
 popq %rax
 movq %rax, %r10
 popq %rax
 imulq $840, %r10
 addq %r10, %rax
 movq %rax, -8(%rbp)
 movq -8(%rbp), %rax
 movq %rbp, %rsp
 popq %rbp
 ret

 movq $0, %rax
 movq %rbp, %rsp
 popq %rbp
 ret


_enter_scope:
 pushq %rbp
 movq %rsp, %rbp
 subq $16, %rsp


 callq _new_scope
 movq %rax, -8(%rbp)
 movq _curr_scope(%rip), %rax
 pushq %rax


 movq -8(%rbp), %rax
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
 popq %r10
 movq %r10, (%rax)
 movq -8(%rbp), %rax
 movq %rax, _curr_scope(%rip)

 movq $0, %rax
 movq %rbp, %rsp
 popq %rbp
 ret


_leave_scope:
 pushq %rbp
 movq %rsp, %rbp
 subq $0, %rsp



 movq _curr_scope(%rip), %rax
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
 movq (%rax), %rax
 movq %rax, _curr_scope(%rip)

 movq $0, %rax
 movq %rbp, %rsp
 popq %rbp
 ret


_new_type:
 pushq %rbp
 movq %rsp, %rbp
 subq $16, %rsp
 movl %edi, -4(%rbp)

 movq _types@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _type_count(%rip), %rax
 pushq %rax
 movslq _type_count(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _type_count(%rip)
 popq %rax
 movq %rax, %r10
 popq %rax
 imulq $2056, %r10
 addq %r10, %rax
 movq %rax, -16(%rbp)
 movslq -4(%rbp), %rax
 pushq %rax


 movq -16(%rbp), %rax
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
 popq %r10
 movl %r10d, (%rax)

 movslq -4(%rbp), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 movq $1, %rax
 jne AND_OR57
 movslq -4(%rbp), %rax
 pushq %rax
 movq $3, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR57:
 cmpq $0, %rax
 movq $1, %rax
 jne AND_OR58
 movslq -4(%rbp), %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR58:
 cmpq $0, %rax
 je ELSE56
 movq $1, %rax
 pushq %rax


 movq -16(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movl %r10d, (%rax)
 jmp END_IF56
ELSE56:
END_IF56:

 movslq -4(%rbp), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 movq $1, %rax
 jne AND_OR60
 movslq -4(%rbp), %rax
 pushq %rax
 movq $3, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR60:
 cmpq $0, %rax
 movq $1, %rax
 jne AND_OR61
 movslq -4(%rbp), %rax
 pushq %rax
 movq $6, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR61:
 cmpq $0, %rax
 movq $1, %rax
 jne AND_OR62
 movslq -4(%rbp), %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR62:
 cmpq $0, %rax
 je ELSE59
 movq $8, %rax
 pushq %rax


 movq -16(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movl %r10d, (%rax)
 jmp END_IF59
ELSE59:



 movq -16(%rbp), %rax
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
 movq $0, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE63
 movq $4, %rax
 pushq %rax


 movq -16(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movl %r10d, (%rax)
 jmp END_IF63
ELSE63:



 movq -16(%rbp), %rax
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
 movq $4, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE64
 movq $2, %rax
 pushq %rax


 movq -16(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movl %r10d, (%rax)
 jmp END_IF64
ELSE64:



 movq -16(%rbp), %rax
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
 movq $5, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE65
 movq $1, %rax
 pushq %rax


 movq -16(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movl %r10d, (%rax)
 jmp END_IF65
ELSE65:
END_IF65:
END_IF64:
END_IF63:
END_IF59:
 movq -16(%rbp), %rax
 movq %rbp, %rsp
 popq %rbp
 ret

 movq $0, %rax
 movq %rbp, %rsp
 popq %rbp
 ret


_types_are_equal:
 pushq %rbp
 movq %rsp, %rbp
 subq $16, %rsp
 movq %rdi, -8(%rbp)
 movq %rsi, -16(%rbp)


 movq -8(%rbp), %rax
 cmpq $0, %rax
 setne %al
 xorb $-1, %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 movq $1, %rax
 jne AND_OR67
 movq -16(%rbp), %rax
 cmpq $0, %rax
 setne %al
 xorb $-1, %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR67:
 cmpq $0, %rax
 je ELSE66
 movq $0, %rax
 movq %rbp, %rsp
 popq %rbp
 ret
 jmp END_IF66
ELSE66:
END_IF66:

 movq -8(%rbp), %rax
 pushq %rax
 movq -16(%rbp), %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE68
 movq $1, %rax
 movq %rbp, %rsp
 popq %rbp
 ret
 jmp END_IF68
ELSE68:
END_IF68:



 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax


 movq -16(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
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
 cmpq %r10, %rax
 setne %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE69
 movq $0, %rax
 movq %rbp, %rsp
 popq %rbp
 ret
 jmp END_IF69
ELSE69:
END_IF69:



 movq -8(%rbp), %rax
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


 movq -16(%rbp), %rax
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
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setne %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE70
 movq $0, %rax
 movq %rbp, %rsp
 popq %rbp
 ret
 jmp END_IF70
ELSE70:
END_IF70:



 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 cmpq $0, %rax
 setne %al
 xorb $-1, %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE71


 movq -16(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 movq $0, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 movq %rbp, %rsp
 popq %rbp
 ret
 jmp END_IF71
ELSE71:
END_IF71:



 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax


 movq -16(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _types_are_equal
 movq %rbp, %rsp
 popq %rbp
 ret

 movq $0, %rax
 movq %rbp, %rsp
 popq %rbp
 ret


_add_func:
 pushq %rbp
 movq %rsp, %rbp
 subq $32, %rsp
 movq %rdi, -8(%rbp)
 movq %rsi, -16(%rbp)

 movq _funcs@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _func_count(%rip), %rax
 pushq %rax
 movslq _func_count(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _func_count(%rip)
 popq %rax
 movq %rax, %r10
 popq %rax
 imulq $16, %r10
 addq %r10, %rax
 movq %rax, -24(%rbp)
 movq -8(%rbp), %rax
 pushq %rax


 movq -24(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 movq -16(%rbp), %rax
 pushq %rax


 movq -24(%rbp), %rax
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
 popq %r10
 movq %r10, (%rax)
 movq -24(%rbp), %rax
 movq %rbp, %rsp
 popq %rbp
 ret

 movq $0, %rax
 movq %rbp, %rsp
 popq %rbp
 ret


_find_func:
 pushq %rbp
 movq %rsp, %rbp
 subq $16, %rsp
 movq %rdi, -8(%rbp)


 movq $0, %rax
 movl %eax, -12(%rbp)
FOR72:
 movslq -12(%rbp), %rax
 pushq %rax
 movslq _func_count(%rip), %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setl %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je FOR_END72



 movq -8(%rbp), %rax
 pushq %rax


 movq _funcs@GOTPCREL(%rip), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $16, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _strcmp
 cmpq $0, %rax
 setne %al
 xorb $-1, %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE73
 movq _funcs@GOTPCREL(%rip), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $16, %r10
 addq %r10, %rax
 movq %rbp, %rsp
 popq %rbp
 ret
 jmp END_IF73
ELSE73:
END_IF73:

FOR_INC72:
 movslq -12(%rbp), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, -12(%rbp)
 popq %rax
 jmp FOR72
FOR_END72:
 movq $0, %rax
 movq %rbp, %rsp
 popq %rbp
 ret

 movq $0, %rax
 movq %rbp, %rsp
 popq %rbp
 ret


_find_var:
 pushq %rbp
 movq %rsp, %rbp
 subq $48, %rsp
 movq %rdi, -8(%rbp)

 movq _curr_scope(%rip), %rax
 movq %rax, -16(%rbp)
WHILE74:
 movq -16(%rbp), %rax
 cmpq $0, %rax
 je WHILE_END74


 movq $0, %rax
 movl %eax, -20(%rbp)
FOR75:
 movslq -20(%rbp), %rax
 pushq %rax


 movq -16(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $832, %rax
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
 cmpq %r10, %rax
 setl %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je FOR_END75







 movq -16(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movslq -20(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 movq -8(%rbp), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _strcmp
 cmpq $0, %rax
 setne %al
 xorb $-1, %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE76


 movq -16(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movslq -20(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 movq (%rax), %rax
 movq %rbp, %rsp
 popq %rbp
 ret
 jmp END_IF76
ELSE76:
END_IF76:

FOR_INC75:
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
 jmp FOR75
FOR_END75:


 movq -16(%rbp), %rax
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
 movq (%rax), %rax
 movq %rax, -16(%rbp)

 jmp WHILE74
WHILE_END74:

 movq -8(%rbp), %rax
 pushq %rax
 popq %rdi
 callq _find_func
 movq %rax, -32(%rbp)

 movq -32(%rbp), %rax
 cmpq $0, %rax
 setne %al
 xorb $-1, %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE77
 movq $0, %rax
 movq %rbp, %rsp
 popq %rbp
 ret
 jmp END_IF77
ELSE77:
END_IF77:

 movq $8, %rax
 pushq %rax
 popq %rdi
 callq _new_type
 movq %rax, -40(%rbp)
 movq _vars@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _var_count(%rip), %rax
 pushq %rax
 movslq _var_count(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _var_count(%rip)
 popq %rax
 movq %rax, %r10
 popq %rax
 imulq $48, %r10
 addq %r10, %rax
 movq %rax, -48(%rbp)
 movq -40(%rbp), %rax
 pushq %rax


 movq -48(%rbp), %rax
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
 popq %r10
 movq %r10, (%rax)
 movq -8(%rbp), %rax
 pushq %rax


 movq -48(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
 addq %r10, %rax
 pushq %rax


 movq -48(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 movq -48(%rbp), %rax
 movq %rbp, %rsp
 popq %rbp
 ret

 movq $0, %rax
 movq %rbp, %rsp
 popq %rbp
 ret


_new_var:
 pushq %rbp
 movq %rsp, %rbp
 subq $32, %rsp
 movq %rdi, -8(%rbp)
 movq %rsi, -16(%rbp)


 movq $0, %rax
 movl %eax, -20(%rbp)
FOR78:
 movslq -20(%rbp), %rax
 pushq %rax


 movq _curr_scope(%rip), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $832, %rax
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
 cmpq %r10, %rax
 setl %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je FOR_END78







 movq _curr_scope(%rip), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movslq -20(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 movq -16(%rbp), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _strcmp
 cmpq $0, %rax
 setne %al
 xorb $-1, %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE79

 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
 addq %r10, %rax
 pushq %rax
 leaq L_.str.40(%rip), %rax
 pushq %rax
 movq -16(%rbp), %rax
 pushq %rax
 popq %rdx
 popq %rsi
 popq %rdi
 callq _error_token
 jmp END_IF79
ELSE79:
END_IF79:

FOR_INC78:
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
 jmp FOR78
FOR_END78:
 movq _vars@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _var_count(%rip), %rax
 pushq %rax
 movslq _var_count(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _var_count(%rip)
 popq %rax
 movq %rax, %r10
 popq %rax
 imulq $48, %r10
 addq %r10, %rax
 movq %rax, -32(%rbp)
 movq -16(%rbp), %rax
 pushq %rax


 movq -32(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
 addq %r10, %rax
 pushq %rax


 movq -32(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)





 movq -32(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq $257, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 movq $0, %rax
 je AND_OR80




 movq -32(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax


 movq -32(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR80:
 pushq %rax
 popq %rdi
 callq _assert
 movq -8(%rbp), %rax
 pushq %rax


 movq -32(%rbp), %rax
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
 popq %r10
 movq %r10, (%rax)
 movq -32(%rbp), %rax
 pushq %rax


 movq _curr_scope(%rip), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax


 movq _curr_scope(%rip), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $832, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax


 movq _curr_scope(%rip), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $832, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 pushq %rax


 movq _curr_scope(%rip), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $832, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movl %r10d, (%rax)
 popq %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 popq %r10
 movq %r10, (%rax)



 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 cmpq $0, %rax
 setne %al
 xorb $-1, %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE81

 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
 addq %r10, %rax
 pushq %rax
 leaq L_.str.41(%rip), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _error_token
 jmp END_IF81
ELSE81:
END_IF81:

 movq _curr_func(%rip), %rax
 cmpq $0, %rax
 movq $0, %rax
 je AND_OR83


 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR83:
 cmpq $0, %rax
 je ELSE82




 movq -8(%rbp), %rax
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
 movq $3, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE84



 movq _curr_func(%rip), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $1768, %rax
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
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
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
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
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
 imulq %r10, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 pushq %rax


 movq _curr_func(%rip), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $1768, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movl %r10d, (%rax)

 jmp END_IF84
ELSE84:


 movq _curr_func(%rip), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $1768, %rax
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
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
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


 movq _curr_func(%rip), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $1768, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movl %r10d, (%rax)
END_IF84:



 movq _curr_func(%rip), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $1768, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax




 movq -32(%rbp), %rax
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
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _align
 pushq %rax


 movq _curr_func(%rip), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $1768, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movl %r10d, (%rax)


 movq _curr_func(%rip), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $1768, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax


 movq -32(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movl %r10d, (%rax)



 movq -32(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax




 movq -32(%rbp), %rax
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
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
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
 cqto
 idivq %r10
 movq %rdx, %rax
 pushq %rax
 movq $0, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 pushq %rax
 popq %rdi
 callq _assert

 jmp END_IF82
ELSE82:
END_IF82:
 movq -32(%rbp), %rax
 movq %rbp, %rsp
 popq %rbp
 ret

 movq $0, %rax
 movq %rbp, %rsp
 popq %rbp
 ret


_skip:
 pushq %rbp
 movq %rsp, %rbp
 subq $16, %rsp
 movl %edi, -4(%rbp)




 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movslq -4(%rbp), %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setne %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE85

 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
 addq %r10, %rax
 pushq %rax
 leaq L_.str.42(%rip), %rax
 pushq %rax

 movslq -4(%rbp), %rax
 pushq %rax
 popq %rdi
 callq _token_type_name
 pushq %rax
 popq %rdx
 popq %rsi
 popq %rdi
 callq _error_token
 jmp END_IF85
ELSE85:
END_IF85:
 movslq _ct(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _ct(%rip)
 popq %rax

 movq $0, %rax
 movq %rbp, %rsp
 popq %rbp
 ret


_is_typename:
 pushq %rbp
 movq %rsp, %rbp
 subq $16, %rsp
 movq %rdi, -8(%rbp)





 movq -8(%rbp), %rax
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
 movq $269, %rax
 pushq %rax
 movq $270, %rax
 pushq %rax
 movq $271, %rax
 pushq %rax
 movq $272, %rax
 pushq %rax
 movq $273, %rax
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
 movq $280, %rax
 pushq %rax
 movq $279, %rax
 pushq %rax
 callq _type_match
 addq $24, %rsp
 cmpq $0, %rax
 je ELSE86
 movq $1, %rax
 movq %rbp, %rsp
 popq %rbp
 ret
 jmp END_IF86
ELSE86:
END_IF86:



 movq -8(%rbp), %rax
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
 movq $257, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE87


 movq $0, %rax
 movl %eax, -12(%rbp)
FOR88:
 movslq -12(%rbp), %rax
 pushq %rax
 movslq _types_declared_count(%rip), %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setl %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je FOR_END88





 movq _types_declared@GOTPCREL(%rip), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $40, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax


 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _strcmp
 cmpq $0, %rax
 setne %al
 xorb $-1, %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE89
 movq $1, %rax
 movq %rbp, %rsp
 popq %rbp
 ret
 jmp END_IF89
ELSE89:
END_IF89:

FOR_INC88:
 movslq -12(%rbp), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, -12(%rbp)
 popq %rax
 jmp FOR88
FOR_END88:

 jmp END_IF87
ELSE87:
END_IF87:
 movq $0, %rax
 movq %rbp, %rsp
 popq %rbp
 ret

 movq $0, %rax
 movq %rbp, %rsp
 popq %rbp
 ret


_find_binary_op_type:
 pushq %rbp
 movq %rsp, %rbp
 subq $16, %rsp
 movq %rdi, -8(%rbp)
 movq %rsi, -16(%rbp)



 movq -8(%rbp), %rax
 pushq %rax
 movq -16(%rbp), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _types_are_equal
 cmpq $0, %rax
 je ELSE90
 movq -8(%rbp), %rax
 movq %rbp, %rsp
 popq %rbp
 ret
 jmp END_IF90
ELSE90:
END_IF90:



 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 cmpq $0, %rax
 movq $0, %rax
 je AND_OR92


 movq -16(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 cmpq $0, %rax
 setne %al
 xorb $-1, %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR92:
 cmpq $0, %rax
 je ELSE91
 jmp END_IF91
ELSE91:
END_IF91:
 movq $0, %rax
 movq %rbp, %rsp
 popq %rbp
 ret

 movq $0, %rax
 movq %rbp, %rsp
 popq %rbp
 ret


_strjoin:
 pushq %rbp
 movq %rsp, %rbp
 subq $32, %rsp
 movq %rdi, -8(%rbp)
 movq %rsi, -16(%rbp)


 movq -8(%rbp), %rax
 pushq %rax
 popq %rdi
 callq _strlen
 movl %eax, -20(%rbp)

 movq -16(%rbp), %rax
 pushq %rax
 popq %rdi
 callq _strlen
 movl %eax, -24(%rbp)


 movslq -20(%rbp), %rax
 pushq %rax
 movslq -24(%rbp), %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 pushq %rax
 popq %rdi
 callq _malloc
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq %rax, -32(%rbp)

 movq -32(%rbp), %rax
 pushq %rax
 movq -8(%rbp), %rax
 pushq %rax
 movslq -20(%rbp), %rax
 pushq %rax
 popq %rdx
 popq %rsi
 popq %rdi
 callq _memcpy

 movq -32(%rbp), %rax
 pushq %rax
 movslq -20(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 pushq %rax
 movq -16(%rbp), %rax
 pushq %rax
 movslq -24(%rbp), %rax
 pushq %rax
 popq %rdx
 popq %rsi
 popq %rdi
 callq _memcpy

 movq $0, %rax
 movsbq %al, %r10
 movq %r10, %rax
 pushq %rax
 movq -32(%rbp), %rax
 pushq %rax
 movslq -20(%rbp), %rax
 pushq %rax
 movslq -24(%rbp), %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 popq %r10
 movb %r10b, (%rax)
 movq -32(%rbp), %rax
 movq %rbp, %rsp
 popq %rbp
 ret

 movq $0, %rax
 movq %rbp, %rsp
 popq %rbp
 ret


_get_type_str:
 pushq %rbp
 movq %rsp, %rbp
 subq $16, %rsp
 movq %rdi, -8(%rbp)




 movq -8(%rbp), %rax
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
 movq $7, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE93


 leaq L_.str.43(%rip), %rax
 pushq %rax


 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $40, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _strjoin
 movq %rbp, %rsp
 popq %rbp
 ret

 jmp END_IF93
ELSE93:
END_IF93:



 movq -8(%rbp), %rax
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
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE94





 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _get_type_str
 pushq %rax
 leaq L_.str.44(%rip), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _strjoin
 movq %rbp, %rsp
 popq %rbp
 ret

 jmp END_IF94
ELSE94:



 movq -8(%rbp), %rax
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
 movq $3, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE95





 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _get_type_str
 pushq %rax
 leaq L_.str.45(%rip), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _strjoin
 movq %rbp, %rsp
 popq %rbp
 ret

 jmp END_IF95
ELSE95:
END_IF95:
END_IF94:



 movq -8(%rbp), %rax
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
 movq $2, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE96
 leaq L_.str.22(%rip), %rax
 movq %rbp, %rsp
 popq %rbp
 ret
 jmp END_IF96
ELSE96:
END_IF96:



 movq -8(%rbp), %rax
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
 movq $5, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE97
 leaq L_.str.23(%rip), %rax
 movq %rbp, %rsp
 popq %rbp
 ret
 jmp END_IF97
ELSE97:
END_IF97:



 movq -8(%rbp), %rax
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
 movq $0, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE98
 leaq L_.str.1(%rip), %rax
 movq %rbp, %rsp
 popq %rbp
 ret
 jmp END_IF98
ELSE98:
END_IF98:



 movq -8(%rbp), %rax
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
 movq $4, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE99
 leaq L_.str.24(%rip), %rax
 movq %rbp, %rsp
 popq %rbp
 ret
 jmp END_IF99
ELSE99:
END_IF99:



 movq -8(%rbp), %rax
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
 movq $6, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE100
 leaq L_.str.25(%rip), %rax
 movq %rbp, %rsp
 popq %rbp
 ret
 jmp END_IF100
ELSE100:
END_IF100:



 movq -8(%rbp), %rax
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
 movq $9, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE101
 leaq L_.str.46(%rip), %rax
 movq %rbp, %rsp
 popq %rbp
 ret
 jmp END_IF101
ELSE101:
END_IF101:

 movq $0, %rax
 pushq %rax
 popq %rdi
 callq _assert

 movq $0, %rax
 movq %rbp, %rsp
 popq %rbp
 ret


_implicit_cast:
 pushq %rbp
 movq %rsp, %rbp
 subq $32, %rsp
 movq %rdi, -8(%rbp)
 movq %rsi, -16(%rbp)


 movq -8(%rbp), %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _add_type


 movq -16(%rbp), %rax
 pushq %rax


 movq -8(%rbp), %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _types_are_equal
 cmpq $0, %rax
 je ELSE102
 movq %rbp, %rsp
 popq %rbp
 ret
 jmp END_IF102
ELSE102:
END_IF102:

 movq $21, %rax
 pushq %rax
 popq %rdi
 callq _new_node
 movq %rax, -24(%rbp)
 movq -8(%rbp), %rax
 movq (%rax), %rax
 pushq %rax


 movq -24(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 movq -16(%rbp), %rax
 pushq %rax


 movq -24(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 movq -24(%rbp), %rax
 pushq %rax
 movq -8(%rbp), %rax
 popq %r10
 movq %r10, (%rax)

 movq $0, %rax
 movq %rbp, %rsp
 popq %rbp
 ret


_find_common_type:
 pushq %rbp
 movq %rsp, %rbp
 subq $16, %rsp
 movq %rdi, -8(%rbp)
 movq %rsi, -16(%rbp)




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 cmpq $0, %rax
 je ELSE103
 movq -8(%rbp), %rax
 movq %rbp, %rsp
 popq %rbp
 ret
 jmp END_IF103
ELSE103:
END_IF103:



 movq -16(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 cmpq $0, %rax
 je ELSE104
 movq -16(%rbp), %rax
 movq %rbp, %rsp
 popq %rbp
 ret
 jmp END_IF104
ELSE104:
END_IF104:



 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 movq $4, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setl %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE105
 movq _type_int(%rip), %rax
 movq %rax, -8(%rbp)
 jmp END_IF105
ELSE105:
END_IF105:



 movq -16(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 movq $4, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setl %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE106
 movq _type_int(%rip), %rax
 movq %rax, -16(%rbp)
 jmp END_IF106
ELSE106:
END_IF106:



 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax


 movq -16(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
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
 cmpq %r10, %rax
 setne %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE107


 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax


 movq -16(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
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
 cmpq %r10, %rax
 setl %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je QUES108
 movq -16(%rbp), %rax
 jmp QUES_END108
QUES108:
 movq -8(%rbp), %rax
QUES_END108:
 movq %rbp, %rsp
 popq %rbp
 ret
 jmp END_IF107
ELSE107:
END_IF107:


 movq -16(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 cmpq $0, %rax
 je QUES109
 movq -16(%rbp), %rax
 jmp QUES_END109
QUES109:
 movq -8(%rbp), %rax
QUES_END109:
 movq %rbp, %rsp
 popq %rbp
 ret

 movq $0, %rax
 movq %rbp, %rsp
 popq %rbp
 ret


_add_type:
 pushq %rbp
 movq %rsp, %rbp
 subq $64, %rsp
 movq %rdi, -8(%rbp)

 movq _type_void(%rip), %rax
 movq %rax, -16(%rbp)

 movq -8(%rbp), %rax
 cmpq $0, %rax
 setne %al
 xorb $-1, %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE110
 movq -16(%rbp), %rax
 movq %rbp, %rsp
 popq %rbp
 ret
 jmp END_IF110
ELSE110:
END_IF110:



 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 cmpq $0, %rax
 je ELSE111


 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 movq %rax, -16(%rbp)
 jmp END_IF111
ELSE111:



 movq -8(%rbp), %rax
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
 movq $3, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE112






 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax

 movq $2147483647, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setg %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 movq $1, %rax
 jne AND_OR114




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 movabsq $2147483648, %rax
 xorq %r10, %r10
 subq %rax, %r10
 movq %r10, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setl %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR114:
 cmpq $0, %rax
 je ELSE113
 movq _type_long(%rip), %rax
 movq %rax, -16(%rbp)
 jmp END_IF113
ELSE113:
 movq _type_int(%rip), %rax
 movq %rax, -16(%rbp)
END_IF113:

 jmp END_IF112
ELSE112:



 movq -8(%rbp), %rax
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
 movq $13, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE115






 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq $275, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 movq $1, %rax
 jne AND_OR117




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq $276, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR117:
 cmpq $0, %rax
 je ELSE116




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _add_type
 movq %rax, -16(%rbp)



 movq -16(%rbp), %rax
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
 movq $2, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE118



 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 leaq L_.str.47(%rip), %rax
 pushq %rax





 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 popq %rdi
 callq _token_type_name
 pushq %rax
 popq %rdx
 popq %rsi
 popq %rdi
 callq _error_token
 jmp END_IF118
ELSE118:
END_IF118:

 jmp END_IF116
ELSE116:





 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq $33, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE119




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _add_type
 movq _type_int(%rip), %rax
 movq %rax, -16(%rbp)

 jmp END_IF119
ELSE119:

 movq $0, %rax
 pushq %rax
 popq %rdi
 callq _assert
END_IF119:
END_IF116:

 jmp END_IF115
ELSE115:



 movq -8(%rbp), %rax
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
 movq $18, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE120


 movq $1, %rax
 pushq %rax
 popq %rdi
 callq _new_type
 movq %rax, -16(%rbp)
 movq _type_char(%rip), %rax
 pushq %rax


 movq -16(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)

 jmp END_IF120
ELSE120:



 movq -8(%rbp), %rax
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
 movq $2, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE121




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq (%rax), %rax
 movq %rax, -16(%rbp)
 jmp END_IF121
ELSE121:



 movq -8(%rbp), %rax
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
 movq $12, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE122




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $144, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq (%rax), %rax
 movq %rax, -16(%rbp)
 jmp END_IF122
ELSE122:



 movq -8(%rbp), %rax
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
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE123


 movq $1, %rax
 pushq %rax
 popq %rdi
 callq _new_type
 movq %rax, -16(%rbp)



 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _add_type
 pushq %rax


 movq -16(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)





 movq -16(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq $2, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE124



 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 leaq L_.str.48(%rip), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _error_token
 jmp END_IF124
ELSE124:
END_IF124:

 jmp END_IF123
ELSE123:



 movq -8(%rbp), %rax
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
 movq $15, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE125




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _add_type
 movq %rax, -24(%rbp)



 movq -24(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 cmpq $0, %rax
 setne %al
 xorb $-1, %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE126



 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 leaq L_.str.49(%rip), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _error_token
 jmp END_IF126
ELSE126:
END_IF126:





 movq -24(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq $2, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE127



 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 leaq L_.str.50(%rip), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _error_token
 jmp END_IF127
ELSE127:
END_IF127:


 movq -24(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 movq %rax, -16(%rbp)

 jmp END_IF125
ELSE125:



 movq -8(%rbp), %rax
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
 movq $6, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE128




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _add_type
 movq %rax, -16(%rbp)



 movq -16(%rbp), %rax
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
 movq $2, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE129



 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 leaq L_.str.51(%rip), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _error_token
 jmp END_IF129
ELSE129:
END_IF129:

 jmp END_IF128
ELSE128:



 movq -8(%rbp), %rax
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
 movq $21, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE130



 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $112, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 movq %rax, -16(%rbp)



 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _add_type

 jmp END_IF130
ELSE130:



 movq -8(%rbp), %rax
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
 movq $4, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE131





 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movl %eax, -28(%rbp)



 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _add_type



 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _add_type




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 movq %rax, -40(%rbp)




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 movq %rax, -48(%rbp)



 movq -40(%rbp), %rax
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
 movq $2, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 movq $1, %rax
 jne AND_OR133


 movq -48(%rbp), %rax
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
 movq $2, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR133:
 cmpq $0, %rax
 je ELSE132

 movq $0, %rax
 pushq %rax
 popq %rdi
 callq _assert
 jmp END_IF132
ELSE132:
END_IF132:



 movq -40(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 cmpq $0, %rax
 movq $1, %rax
 jne AND_OR135


 movq -48(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR135:
 cmpq $0, %rax
 je ELSE134



 movslq -28(%rbp), %rax
 pushq %rax
 movq $42, %rax
 pushq %rax
 movq $47, %rax
 pushq %rax
 movq $37, %rax
 pushq %rax
 movq $1, %rax
 xorq %r10, %r10
 subq %rax, %r10
 movq %r10, %rax
 pushq %rax
 popq %r8
 popq %rcx
 popq %rdx
 popq %rsi
 popq %rdi
 callq _type_match
 cmpq $0, %rax
 movq $1, %rax
 jne AND_OR137


 movq -40(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 cmpq $0, %rax
 setne %al
 xorb $-1, %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 movq $0, %rax
 je AND_OR138
 movslq -28(%rbp), %rax
 pushq %rax
 movq $45, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR138:
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR137:
 cmpq $0, %rax
 movq $1, %rax
 jne AND_OR139


 movq -40(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 cmpq $0, %rax
 movq $0, %rax
 je AND_OR140


 movq -48(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR140:
 cmpq $0, %rax
 movq $0, %rax
 je AND_OR141
 movslq -28(%rbp), %rax
 pushq %rax
 movq $43, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR141:
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR139:
 cmpq $0, %rax
 movq $1, %rax
 jne AND_OR142


 movq -40(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 cmpq $0, %rax
 movq $0, %rax
 je AND_OR143


 movq -48(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR143:
 cmpq $0, %rax
 movq $0, %rax
 je AND_OR144
 movslq -28(%rbp), %rax
 pushq %rax
 movq $45, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR144:
 cmpq $0, %rax
 movq $0, %rax
 je AND_OR145

 movq -40(%rbp), %rax
 pushq %rax
 movq -48(%rbp), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _types_are_equal
 cmpq $0, %rax
 setne %al
 xorb $-1, %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR145:
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR142:
 cmpq $0, %rax
 je ELSE136



 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 leaq L_.str.52(%rip), %rax
 pushq %rax

 movq -40(%rbp), %rax
 pushq %rax
 popq %rdi
 callq _get_type_str
 pushq %rax

 movq -48(%rbp), %rax
 pushq %rax
 popq %rdi
 callq _get_type_str
 pushq %rax
 popq %rcx
 popq %rdx
 popq %rsi
 popq %rdi
 callq _error_token
 jmp END_IF136
ELSE136:
END_IF136:



 movq -40(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 cmpq $0, %rax
 movq $0, %rax
 je AND_OR147


 movq -48(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 cmpq $0, %rax
 setne %al
 xorb $-1, %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR147:
 cmpq $0, %rax
 movq $0, %rax
 je AND_OR148
 movslq -28(%rbp), %rax
 pushq %rax
 movq $43, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 movq $1, %rax
 jne AND_OR149
 movslq -28(%rbp), %rax
 pushq %rax
 movq $45, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR149:
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR148:
 cmpq $0, %rax
 je ELSE146
 movq -40(%rbp), %rax
 movq %rax, -16(%rbp)
 jmp END_IF146
ELSE146:



 movq -48(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 cmpq $0, %rax
 movq $0, %rax
 je AND_OR151


 movq -40(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 cmpq $0, %rax
 setne %al
 xorb $-1, %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR151:
 cmpq $0, %rax
 movq $0, %rax
 je AND_OR152
 movslq -28(%rbp), %rax
 pushq %rax
 movq $43, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR152:
 cmpq $0, %rax
 je ELSE150
 movq -48(%rbp), %rax
 movq %rax, -16(%rbp)
 jmp END_IF150
ELSE150:
 movq _type_int(%rip), %rax
 movq %rax, -16(%rbp)
END_IF150:
END_IF146:

 jmp END_IF134
ELSE134:






 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _find_common_type
 movq %rax, -56(%rbp)



 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq -56(%rbp), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _implicit_cast



 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq -56(%rbp), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _implicit_cast






 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq $43, %rax
 pushq %rax
 movq $45, %rax
 pushq %rax
 movq $42, %rax
 pushq %rax
 movq $47, %rax
 pushq %rax
 movq $37, %rax
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
 callq _type_match
 addq $8, %rsp
 cmpq $0, %rax
 je ELSE153




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 movq %rax, -16(%rbp)
 jmp END_IF153
ELSE153:
 movq _type_int(%rip), %rax
 movq %rax, -16(%rbp)
END_IF153:

END_IF134:

 jmp END_IF131
ELSE131:



 movq -8(%rbp), %rax
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
 movq $5, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE154




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _add_type
 movq %rax, -16(%rbp)



 movq -16(%rbp), %rax
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
 movq $2, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setne %al
 andb $1, %al
 movzbq %al, %rax
 pushq %rax
 popq %rdi
 callq _assert



 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _add_type



 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq -16(%rbp), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _implicit_cast

 jmp END_IF154
ELSE154:



 movq -8(%rbp), %rax
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
 movq $22, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE155




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $56, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _add_type



 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _add_type



 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _add_type





 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _find_common_type
 movq %rax, -64(%rbp)



 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq -64(%rbp), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _implicit_cast



 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq -64(%rbp), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _implicit_cast
 movq -64(%rbp), %rax
 movq %rax, -16(%rbp)

 jmp END_IF155
ELSE155:

 movq $0, %rax
 pushq %rax
 popq %rdi
 callq _assert
END_IF155:
END_IF154:
END_IF131:
END_IF130:
END_IF128:
END_IF125:
END_IF123:
END_IF122:
END_IF121:
END_IF120:
END_IF115:
END_IF112:
END_IF111:
 movq -16(%rbp), %rax
 pushq %rax


 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)



 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $104, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _add_type
 movq -16(%rbp), %rax
 movq %rbp, %rsp
 popq %rbp
 ret

 movq $0, %rax
 movq %rbp, %rsp
 popq %rbp
 ret


_parse:
 pushq %rbp
 movq %rsp, %rbp
 subq $128, %rsp
 movq %rdi, -8(%rbp)


 leaq L_.str.53(%rip), %rax
 pushq %rax
 movq _type_void(%rip), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _add_func

 movq -8(%rbp), %rax
 pushq %rax
 popq %rdi
 callq _tokenize
 movq $0, %rax
 movl %eax, _ct(%rip)

 movq $1, %rax
 pushq %rax
 popq %rdi
 callq _new_node
 movq %rax, -16(%rbp)

 callq _new_scope
 movq %rax, _curr_scope(%rip)

 movq $0, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax


 movq _curr_scope(%rip), %rax
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
 popq %r10
 movq %r10, (%rax)
 movq -16(%rbp), %rax
 movq %rax, -24(%rbp)
WHILE156:


 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 cmpq $0, %rax
 je WHILE_END156

 movslq _ct(%rip), %rax
 movl %eax, -28(%rbp)



 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $289, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE157

 movslq _ct(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _ct(%rip)
 popq %rax



 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $257, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE158
 movslq _ct(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _ct(%rip)
 popq %rax
 jmp END_IF158
ELSE158:
END_IF158:

 movq $123, %rax
 pushq %rax
 popq %rdi
 callq _skip
 movq $0, %rax
 movl %eax, -32(%rbp)
WHILE159:


 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $125, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setne %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je WHILE_END159



 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax


 movq _enums@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _enum_count(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $16, %r10
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
 popq %r10
 movq %r10, (%rax)

 movq $257, %rax
 pushq %rax
 popq %rdi
 callq _skip



 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $61, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE160

 movslq _ct(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _ct(%rip)
 popq %rax



 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $256, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setne %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE161

 movq $256, %rax
 pushq %rax
 popq %rdi
 callq _skip
 jmp END_IF161
ELSE161:
END_IF161:



 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 movslq %eax, %r10
 movq %r10, %rax
 movl %eax, -32(%rbp)
 movslq _ct(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _ct(%rip)
 popq %rax

 jmp END_IF160
ELSE160:
END_IF160:



 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $44, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE162
 movslq _ct(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _ct(%rip)
 popq %rax
 jmp END_IF162
ELSE162:



 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $125, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setne %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE163

 movq $125, %rax
 pushq %rax
 popq %rdi
 callq _skip
 jmp END_IF163
ELSE163:
END_IF163:
END_IF162:
 movslq -32(%rbp), %rax
 pushq %rax


 movq _enums@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _enum_count(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $16, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movl %r10d, (%rax)
 movslq _enum_count(%rip), %rax
 pushq %rax
 movslq _enum_count(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _enum_count(%rip)
 popq %rax
 movslq -32(%rbp), %rax
 pushq %rax
 movslq -32(%rbp), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, -32(%rbp)
 popq %rax

 jmp WHILE159
WHILE_END159:

 movq $125, %rax
 pushq %rax
 popq %rdi
 callq _skip

 movq $59, %rax
 pushq %rax
 popq %rdi
 callq _skip

 jmp END_IF157
ELSE157:



 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $286, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE164

 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
 addq %r10, %rax
 movq %rax, -40(%rbp)

 movq $7, %rax
 pushq %rax
 popq %rdi
 callq _new_type
 movq %rax, -48(%rbp)
 movslq _ct(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _ct(%rip)
 popq %rax


 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax


 movq -48(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $40, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)

 movq $257, %rax
 pushq %rax
 popq %rdi
 callq _skip

 movq $123, %rax
 pushq %rax
 popq %rdi
 callq _skip
 movq $0, %rax
 movl %eax, -52(%rbp)
 movq $0, %rax
 movl %eax, -56(%rbp)
 movq $0, %rax
 movl %eax, -60(%rbp)
WHILE165:


 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 cmpq $0, %rax
 movq $0, %rax
 je AND_OR166


 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $125, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setne %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR166:
 cmpq $0, %rax
 je WHILE_END165


 movq $1, %rax
 pushq %rax
 popq %rdi
 callq _decl
 movq %rax, -72(%rbp)


 movq -72(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $88, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 movq %rax, -72(%rbp)
WHILE167:
 movq -72(%rbp), %rax
 cmpq $0, %rax
 je WHILE_END167





 movq -72(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax


 movq -48(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $848, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movslq -52(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 popq %r10
 movq %r10, (%rax)




 movq -72(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq (%rax), %rax
 pushq %rax


 movq -48(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $48, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movslq -52(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 popq %r10
 movq %r10, (%rax)







 movq -72(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _assert

 movslq -56(%rbp), %rax
 pushq %rax






 movq -72(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _align
 movl %eax, -56(%rbp)
 movslq -56(%rbp), %rax
 pushq %rax


 movq -48(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $1648, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movslq -52(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $4, %r10
 addq %r10, %rax
 popq %r10
 movl %r10d, (%rax)







 movq -72(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 movslq -60(%rbp), %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setg %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE168






 movq -72(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 movl %eax, -60(%rbp)
 jmp END_IF168
ELSE168:
END_IF168:







 movq -72(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq (%rax), %rax
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
 movq $3, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE169
 movslq -56(%rbp), %rax
 pushq %rax






 movq -72(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax






 movq -72(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
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
 imulq %r10, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, -56(%rbp)
 jmp END_IF169
ELSE169:
 movslq -56(%rbp), %rax
 pushq %rax






 movq -72(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
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
 movl %eax, -56(%rbp)
END_IF169:
 movslq -52(%rbp), %rax
 pushq %rax
 movslq -52(%rbp), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, -52(%rbp)
 popq %rax


 movq -72(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $88, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 movq %rax, -72(%rbp)

 jmp WHILE167
WHILE_END167:

 movq $59, %rax
 pushq %rax
 popq %rdi
 callq _skip

 jmp WHILE165
WHILE_END165:

 movslq -56(%rbp), %rax
 cmpq $0, %rax
 setne %al
 xorb $-1, %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE170

 movq -40(%rbp), %rax
 pushq %rax
 leaq L_.str.54(%rip), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _error_token
 jmp END_IF170
ELSE170:
END_IF170:

 movslq -56(%rbp), %rax
 pushq %rax
 movslq -60(%rbp), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _align
 pushq %rax


 movq -48(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movl %r10d, (%rax)
 movslq -52(%rbp), %rax
 pushq %rax


 movq -48(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $2048, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movl %r10d, (%rax)
 movq -48(%rbp), %rax
 pushq %rax
 movq _types_declared@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _types_declared_count(%rip), %rax
 pushq %rax
 movslq _types_declared_count(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _types_declared_count(%rip)
 popq %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 popq %r10
 movq %r10, (%rax)

 movq $0, %rax
 movl %eax, -76(%rbp)
FOR171:
 movslq -76(%rbp), %rax
 pushq %rax
 movslq _types_declared_count(%rip), %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setl %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je FOR_END171

 movq _types_declared@GOTPCREL(%rip), %rax
 pushq %rax
 movslq -76(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 movq (%rax), %rax
 movq %rax, -88(%rbp)

 movq $0, %rax
 movl %eax, -92(%rbp)
FOR172:
 movslq -92(%rbp), %rax
 pushq %rax


 movq -88(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $2048, %rax
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
 cmpq %r10, %rax
 setl %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je FOR_END172



 movq -88(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $48, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movslq -92(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 movq (%rax), %rax
 movq %rax, -104(%rbp)
WHILE173:


 movq -104(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 cmpq $0, %rax
 je WHILE_END173






 movq -104(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq $9, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 movq $0, %rax
 je AND_OR175







 movq -104(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax


 movq -48(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $40, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _strcmp
 cmpq $0, %rax
 setne %al
 xorb $-1, %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR175:
 cmpq $0, %rax
 je ELSE174

 movq -48(%rbp), %rax
 pushq %rax


 movq -104(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 jmp WHILE_END173

 jmp END_IF174
ELSE174:
END_IF174:


 movq -104(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 movq %rax, -104(%rbp)

 jmp WHILE173
WHILE_END173:

FOR_INC172:
 movslq -92(%rbp), %rax
 pushq %rax
 movslq -92(%rbp), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, -92(%rbp)
 popq %rax
 jmp FOR172
FOR_END172:

FOR_INC171:
 movslq -76(%rbp), %rax
 pushq %rax
 movslq -76(%rbp), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, -76(%rbp)
 popq %rax
 jmp FOR171
FOR_END171:

 movq $125, %rax
 pushq %rax
 popq %rdi
 callq _skip

 movq $59, %rax
 pushq %rax
 popq %rdi
 callq _skip

 leaq L_.str.55(%rip), %rax
 pushq %rax


 movq -48(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $40, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _printf
 jmp WHILE156

 jmp END_IF164
ELSE164:



 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
 addq %r10, %rax
 pushq %rax
 popq %rdi
 callq _is_typename
 cmpq $0, %rax
 setne %al
 xorb $-1, %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE176

 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
 addq %r10, %rax
 pushq %rax
 leaq L_.str.56(%rip), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _error_token
 jmp END_IF176
ELSE176:
END_IF176:

 callq _parse_type

 movq $257, %rax
 pushq %rax
 popq %rdi
 callq _skip
 movq $0, %rax
 movl %eax, -108(%rbp)



 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $40, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setne %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE177
 movq $1, %rax
 movl %eax, -108(%rbp)
 jmp END_IF177
ELSE177:
END_IF177:
 movslq -28(%rbp), %rax
 movl %eax, _ct(%rip)

 movslq -108(%rbp), %rax
 cmpq $0, %rax
 je ELSE178


 movq $0, %rax
 pushq %rax
 popq %rdi
 callq _decl
 pushq %rax


 movq -24(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $40, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)

 movq $59, %rax
 pushq %rax
 popq %rdi
 callq _skip

 jmp END_IF178
ELSE178:

 callq _function
 pushq %rax


 movq -24(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $40, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)
END_IF178:



 movq -24(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $40, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 cmpq $0, %rax
 je ELSE179


 movq -24(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $40, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 movq %rax, -24(%rbp)
 jmp END_IF179
ELSE179:
END_IF179:

END_IF164:
END_IF157:

 jmp WHILE156
WHILE_END156:

 movq $0, %rax
 movl %eax, -112(%rbp)
FOR180:
 movslq -112(%rbp), %rax
 pushq %rax
 movslq _types_declared_count(%rip), %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setl %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je FOR_END180

 movq _types_declared@GOTPCREL(%rip), %rax
 pushq %rax
 movslq -112(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 movq (%rax), %rax
 movq %rax, -120(%rbp)

 movq $0, %rax
 movl %eax, -124(%rbp)
FOR181:
 movslq -124(%rbp), %rax
 pushq %rax


 movq -120(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $2048, %rax
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
 cmpq %r10, %rax
 setl %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je FOR_END181






 movq -120(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $48, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movslq -124(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 cmpq $0, %rax
 movq $0, %rax
 je AND_OR183






 movq -120(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $48, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movslq -124(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq $9, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR183:
 cmpq $0, %rax
 je ELSE182







 movq -120(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $48, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movslq -124(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 leaq L_.str.57(%rip), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _error_token
 jmp END_IF182
ELSE182:
END_IF182:

FOR_INC181:
 movslq -124(%rbp), %rax
 pushq %rax
 movslq -124(%rbp), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, -124(%rbp)
 popq %rax
 jmp FOR181
FOR_END181:

 leaq L_.str.58(%rip), %rax
 pushq %rax


 movq -120(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $40, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax


 movq -120(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
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

 movq $0, %rax
 movl %eax, -128(%rbp)
FOR184:
 movslq -128(%rbp), %rax
 pushq %rax


 movq -120(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $2048, %rax
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
 cmpq %r10, %rax
 setl %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je FOR_END184

 leaq L_.str.59(%rip), %rax
 pushq %rax



 movq -120(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $48, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movslq -128(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _get_type_str
 pushq %rax


 movq -120(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $848, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movslq -128(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdx
 popq %rsi
 popq %rdi
 callq _printf
FOR_INC184:
 movslq -128(%rbp), %rax
 pushq %rax
 movslq -128(%rbp), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, -128(%rbp)
 popq %rax
 jmp FOR184
FOR_END184:

FOR_INC180:
 movslq -112(%rbp), %rax
 pushq %rax
 movslq -112(%rbp), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, -112(%rbp)
 popq %rax
 jmp FOR180
FOR_END180:
 movq -16(%rbp), %rax
 movq %rbp, %rsp
 popq %rbp
 ret

 movq $0, %rax
 movq %rbp, %rsp
 popq %rbp
 ret


_find_type:
 pushq %rbp
 movq %rsp, %rbp
 subq $16, %rsp
 movq %rdi, -8(%rbp)


 movq $0, %rax
 movl %eax, -12(%rbp)
FOR185:
 movslq -12(%rbp), %rax
 pushq %rax
 movslq _types_declared_count(%rip), %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setl %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je FOR_END185





 movq _types_declared@GOTPCREL(%rip), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $40, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 movq -8(%rbp), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _strcmp
 cmpq $0, %rax
 setne %al
 xorb $-1, %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE186
 movq _types_declared@GOTPCREL(%rip), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 movq (%rax), %rax
 movq %rbp, %rsp
 popq %rbp
 ret
 jmp END_IF186
ELSE186:
END_IF186:

FOR_INC185:
 movslq -12(%rbp), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, -12(%rbp)
 popq %rax
 jmp FOR185
FOR_END185:
 movq $0, %rax
 movq %rbp, %rsp
 popq %rbp
 ret

 movq $0, %rax
 movq %rbp, %rsp
 popq %rbp
 ret


_parse_base_type:
 pushq %rbp
 movq %rsp, %rbp
 subq $64, %rsp

 movq $0, %rax
 movl %eax, -4(%rbp)
 movq $0, %rax
 movl %eax, -8(%rbp)
 movq $0, %rax
 movl %eax, -12(%rbp)
 movq $0, %rax
 movl %eax, -16(%rbp)
 movq $0, %rax
 movl %eax, -20(%rbp)
 movq $0, %rax
 movl %eax, -24(%rbp)
 movq $0, %rax
 movl %eax, -28(%rbp)

 movq $0, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq %rax, -40(%rbp)
 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
 addq %r10, %rax
 movq %rax, -48(%rbp)



 movq -48(%rbp), %rax
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
 movq $257, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE187




 movq -48(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _find_type
 movq %rax, -40(%rbp)

 movq -40(%rbp), %rax
 cmpq $0, %rax
 je ELSE188

 movslq _ct(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _ct(%rip)
 popq %rax
 movq -40(%rbp), %rax
 movq %rbp, %rsp
 popq %rbp
 ret

 jmp END_IF188
ELSE188:
END_IF188:

 jmp END_IF187
ELSE187:
END_IF187:
WHILE189:
 movq $1, %rax
 cmpq $0, %rax
 je WHILE_END189




 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $269, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE190
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
 jmp END_IF190
ELSE190:



 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $270, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE191
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
 jmp END_IF191
ELSE191:



 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $271, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE192
 movslq -12(%rbp), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, -12(%rbp)
 popq %rax
 jmp END_IF192
ELSE192:



 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $272, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE193
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
 jmp END_IF193
ELSE193:



 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $273, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE194
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
 jmp END_IF194
ELSE194:



 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $279, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE195
 movslq -24(%rbp), %rax
 pushq %rax
 movslq -24(%rbp), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, -24(%rbp)
 popq %rax
 jmp END_IF195
ELSE195:



 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $280, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE196
 movslq -28(%rbp), %rax
 pushq %rax
 movslq -28(%rbp), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, -28(%rbp)
 popq %rax
 jmp END_IF196
ELSE196:
 jmp WHILE_END189
END_IF196:
END_IF195:
END_IF194:
END_IF193:
END_IF192:
END_IF191:
END_IF190:
 movslq _ct(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _ct(%rip)
 popq %rax

 jmp WHILE189
WHILE_END189:
 movq $0, %rax
 movl %eax, -52(%rbp)

 movslq -4(%rbp), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setg %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 movq $1, %rax
 jne AND_OR198
 movslq -20(%rbp), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setg %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR198:
 cmpq $0, %rax
 movq $1, %rax
 jne AND_OR199
 movslq -12(%rbp), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setg %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR199:
 cmpq $0, %rax
 movq $1, %rax
 jne AND_OR200
 movslq -8(%rbp), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setg %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR200:
 cmpq $0, %rax
 movq $1, %rax
 jne AND_OR201
 movslq -24(%rbp), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setg %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR201:
 cmpq $0, %rax
 movq $1, %rax
 jne AND_OR202
 movslq -28(%rbp), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setg %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR202:
 cmpq $0, %rax
 movq $1, %rax
 jne AND_OR203
 movslq -16(%rbp), %rax
 pushq %rax
 movq $2, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setg %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR203:
 cmpq $0, %rax
 je ELSE197
 movq $1, %rax
 movl %eax, -52(%rbp)
 jmp END_IF197
ELSE197:
END_IF197:

 movslq -28(%rbp), %rax
 cmpq $0, %rax
 movq $0, %rax
 je AND_OR205
 movslq -24(%rbp), %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR205:
 cmpq $0, %rax
 je ELSE204
 movq $1, %rax
 movl %eax, -52(%rbp)
 jmp END_IF204
ELSE204:
END_IF204:

 movslq -4(%rbp), %rax
 pushq %rax
 movslq -20(%rbp), %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 pushq %rax
 movslq -12(%rbp), %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 pushq %rax
 movslq -8(%rbp), %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setg %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE206
 movq $1, %rax
 movl %eax, -52(%rbp)
 jmp END_IF206
ELSE206:
END_IF206:

 movslq -16(%rbp), %rax
 cmpq $0, %rax
 movq $0, %rax
 je AND_OR208
 movslq -20(%rbp), %rax
 cmpq $0, %rax
 movq $1, %rax
 jne AND_OR209
 movslq -12(%rbp), %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR209:
 cmpq $0, %rax
 movq $1, %rax
 jne AND_OR210
 movslq -8(%rbp), %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR210:
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR208:
 cmpq $0, %rax
 je ELSE207
 movq $1, %rax
 movl %eax, -52(%rbp)
 jmp END_IF207
ELSE207:
END_IF207:

 movslq -16(%rbp), %rax
 cmpq $0, %rax
 je ELSE211

 movq $6, %rax
 pushq %rax
 popq %rdi
 callq _new_type
 movq %rax, -40(%rbp)
 jmp END_IF211
ELSE211:

 movslq -4(%rbp), %rax
 cmpq $0, %rax
 je ELSE212

 movq $0, %rax
 pushq %rax
 popq %rdi
 callq _new_type
 movq %rax, -40(%rbp)
 jmp END_IF212
ELSE212:

 movslq -20(%rbp), %rax
 cmpq $0, %rax
 je ELSE213

 movq $2, %rax
 pushq %rax
 popq %rdi
 callq _new_type
 movq %rax, -40(%rbp)
 jmp END_IF213
ELSE213:

 movslq -12(%rbp), %rax
 cmpq $0, %rax
 je ELSE214

 movq $5, %rax
 pushq %rax
 popq %rdi
 callq _new_type
 movq %rax, -40(%rbp)
 jmp END_IF214
ELSE214:

 movslq -8(%rbp), %rax
 cmpq $0, %rax
 je ELSE215

 movq $4, %rax
 pushq %rax
 popq %rdi
 callq _new_type
 movq %rax, -40(%rbp)
 jmp END_IF215
ELSE215:

 movslq -28(%rbp), %rax
 cmpq $0, %rax
 movq $1, %rax
 jne AND_OR217
 movslq -24(%rbp), %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR217:
 cmpq $0, %rax
 je ELSE216

 movq $0, %rax
 pushq %rax
 popq %rdi
 callq _new_type
 movq %rax, -40(%rbp)
 jmp END_IF216
ELSE216:


 movq $9, %rax
 pushq %rax
 popq %rdi
 callq _new_type
 movq %rax, -40(%rbp)
 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
 addq %r10, %rax
 pushq %rax


 movq -40(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 movslq _ct(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _ct(%rip)
 popq %rax

END_IF216:
END_IF215:
END_IF214:
END_IF213:
END_IF212:
END_IF211:

 movq -40(%rbp), %rax
 cmpq $0, %rax
 je ELSE218
 movslq -24(%rbp), %rax
 pushq %rax


 movq -40(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movl %r10d, (%rax)
 jmp END_IF218
ELSE218:
END_IF218:

 movslq -52(%rbp), %rax
 cmpq $0, %rax
 je ELSE219

 movq -48(%rbp), %rax
 pushq %rax
 leaq L_.str.60(%rip), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _error_token
 jmp END_IF219
ELSE219:
END_IF219:
 movq -40(%rbp), %rax
 movq %rbp, %rsp
 popq %rbp
 ret

 movq $0, %rax
 movq %rbp, %rsp
 popq %rbp
 ret


_parse_type:
 pushq %rbp
 movq %rsp, %rbp
 subq $16, %rsp


 callq _parse_base_type
 movq %rax, -8(%rbp)
WHILE220:


 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $42, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je WHILE_END220


 movq $1, %rax
 pushq %rax
 popq %rdi
 callq _new_type
 movq %rax, -16(%rbp)
 movq $1, %rax
 pushq %rax


 movq -16(%rbp), %rax
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
 popq %r10
 movl %r10d, (%rax)
 movq -8(%rbp), %rax
 pushq %rax


 movq -16(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 movq -16(%rbp), %rax
 movq %rax, -8(%rbp)
 movslq _ct(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _ct(%rip)
 popq %rax

 jmp WHILE220
WHILE_END220:
 movq -8(%rbp), %rax
 movq %rbp, %rsp
 popq %rbp
 ret

 movq $0, %rax
 movq %rbp, %rsp
 popq %rbp
 ret


_function:
 pushq %rbp
 movq %rsp, %rbp
 subq $32, %rsp


 callq _enter_scope

 callq _parse_type
 movq %rax, -8(%rbp)

 movq $14, %rax
 pushq %rax
 popq %rdi
 callq _new_node
 movq %rax, -16(%rbp)
 movslq _ct(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _ct(%rip)
 popq %rax
 movq -16(%rbp), %rax
 movq %rax, _curr_func(%rip)

 movq $40, %rax
 pushq %rax
 popq %rdi
 callq _skip
 movq $0, %rax
 movl %eax, -20(%rbp)
WHILE221:


 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $41, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setne %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je WHILE_END221


 movq $17, %rax
 pushq %rax
 popq %rdi
 callq _new_node
 pushq %rax


 movq -16(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $960, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movslq -20(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 popq %r10
 movq %r10, (%rax)

 callq _parse_type
 movq %rax, -32(%rbp)

 movq -32(%rbp), %rax
 pushq %rax


 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _new_var
 pushq %rax




 movq -16(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $960, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movslq -20(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)

 movq $257, %rax
 pushq %rax
 popq %rdi
 callq _skip
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



 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $44, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE222
 movslq _ct(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _ct(%rip)
 popq %rax
 jmp END_IF222
ELSE222:



 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $41, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setne %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE223
 jmp WHILE_END221
 jmp END_IF223
ELSE223:
END_IF223:
END_IF222:

 jmp WHILE221
WHILE_END221:

 movq $41, %rax
 pushq %rax
 popq %rdi
 callq _skip
 movslq -20(%rbp), %rax
 pushq %rax


 movq -16(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $1764, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movl %r10d, (%rax)





 movq -16(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 movq -8(%rbp), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _add_func
 pushq %rax


 movq -16(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $144, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)



 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $59, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setne %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE224




 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $123, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setne %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE225

 movq $123, %rax
 pushq %rax
 popq %rdi
 callq _skip
 jmp END_IF225
ELSE225:
END_IF225:

 callq _statement
 pushq %rax


 movq -16(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $48, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)

 jmp END_IF224
ELSE224:

 movq $59, %rax
 pushq %rax
 popq %rdi
 callq _skip
END_IF224:

 leaq L_.str.61(%rip), %rax
 pushq %rax




 movq -16(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _printf

 callq _leave_scope
 movq -16(%rbp), %rax
 movq %rbp, %rsp
 popq %rbp
 ret

 movq $0, %rax
 movq %rbp, %rsp
 popq %rbp
 ret


_statement_or_decl:
 pushq %rbp
 movq %rsp, %rbp
 subq $16, %rsp



 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
 addq %r10, %rax
 pushq %rax
 popq %rdi
 callq _is_typename
 cmpq $0, %rax
 je ELSE226


 movq $0, %rax
 pushq %rax
 popq %rdi
 callq _decl
 movq %rax, -8(%rbp)

 movq $59, %rax
 pushq %rax
 popq %rdi
 callq _skip
 movq -8(%rbp), %rax
 movq %rbp, %rsp
 popq %rbp
 ret

 jmp END_IF226
ELSE226:
END_IF226:

 callq _statement
 movq %rbp, %rsp
 popq %rbp
 ret

 movq $0, %rax
 movq %rbp, %rsp
 popq %rbp
 ret


_decl:
 pushq %rbp
 movq %rsp, %rbp
 subq $128, %rsp
 movl %edi, -4(%rbp)


 movq $17, %rax
 pushq %rax
 popq %rdi
 callq _new_node
 movq %rax, -16(%rbp)

 callq _parse_base_type
 movq %rax, -24(%rbp)
 movq -16(%rbp), %rax
 movq %rax, -32(%rbp)
WHILE227:
 movq $1, %rax
 cmpq $0, %rax
 je WHILE_END227


 movq $17, %rax
 pushq %rax
 popq %rdi
 callq _new_node
 pushq %rax


 movq -32(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $88, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 movq -24(%rbp), %rax
 movq %rax, -40(%rbp)
WHILE228:


 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $42, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je WHILE_END228


 movq $1, %rax
 pushq %rax
 popq %rdi
 callq _new_type
 movq %rax, -48(%rbp)
 movq -40(%rbp), %rax
 pushq %rax


 movq -48(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 movq -48(%rbp), %rax
 movq %rax, -40(%rbp)
 movslq _ct(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _ct(%rip)
 popq %rax

 jmp WHILE228
WHILE_END228:



 movq -40(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 cmpq $0, %rax
 setne %al
 xorb $-1, %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 movq $0, %rax
 je AND_OR230


 movq -40(%rbp), %rax
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
 movq $9, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR230:
 cmpq $0, %rax
 je ELSE229

 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
 addq %r10, %rax
 pushq %rax
 leaq L_.str.57(%rip), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _error_token
 jmp END_IF229
ELSE229:
END_IF229:



 movq -40(%rbp), %rax
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
 movq $2, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 movq $0, %rax
 je AND_OR232


 movq -40(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 cmpq $0, %rax
 setne %al
 xorb $-1, %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR232:
 cmpq $0, %rax
 je ELSE231

 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
 addq %r10, %rax
 pushq %rax
 leaq L_.str.62(%rip), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _error_token
 jmp END_IF231
ELSE231:
END_IF231:



 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $257, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setne %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE233

 movq $257, %rax
 pushq %rax
 popq %rdi
 callq _skip
 jmp END_IF233
ELSE233:
END_IF233:



 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $91, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE234


 movq $3, %rax
 pushq %rax
 popq %rdi
 callq _new_type
 movq %rax, -64(%rbp)
 movq -40(%rbp), %rax
 pushq %rax


 movq -64(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)




 movq -64(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax


 movq -64(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movl %r10d, (%rax)



 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 pushq %rax
 movq $2, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 movslq %eax, %r10
 movq %r10, %rax
 pushq %rax


 movq -64(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movl %r10d, (%rax)
 movq -64(%rbp), %rax
 movq %rax, -40(%rbp)

 movslq -4(%rbp), %rax
 cmpq $0, %rax
 je ELSE235

 movq _vars@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _var_count(%rip), %rax
 pushq %rax
 movslq _var_count(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _var_count(%rip)
 popq %rax
 movq %rax, %r10
 popq %rax
 imulq $48, %r10
 addq %r10, %rax
 movq %rax, -56(%rbp)


 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax


 movq -56(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 movq -40(%rbp), %rax
 pushq %rax


 movq -56(%rbp), %rax
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
 popq %r10
 movq %r10, (%rax)

 jmp END_IF235
ELSE235:

 movq -40(%rbp), %rax
 pushq %rax


 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _new_var
 movq %rax, -56(%rbp)
END_IF235:
 movslq _ct(%rip), %rax
 pushq %rax
 movq $2, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _ct(%rip)

 movq $256, %rax
 pushq %rax
 popq %rdi
 callq _skip

 movq $93, %rax
 pushq %rax
 popq %rdi
 callq _skip

 jmp END_IF234
ELSE234:


 movslq -4(%rbp), %rax
 cmpq $0, %rax
 je ELSE236

 movq _vars@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _var_count(%rip), %rax
 pushq %rax
 movslq _var_count(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _var_count(%rip)
 popq %rax
 movq %rax, %r10
 popq %rax
 imulq $48, %r10
 addq %r10, %rax
 movq %rax, -56(%rbp)


 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax


 movq -56(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 movq -40(%rbp), %rax
 pushq %rax


 movq -56(%rbp), %rax
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
 popq %r10
 movq %r10, (%rax)

 jmp END_IF236
ELSE236:

 movq -40(%rbp), %rax
 pushq %rax


 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _new_var
 movq %rax, -56(%rbp)
END_IF236:
 movslq _ct(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _ct(%rip)
 popq %rax

END_IF234:


 movq -32(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $88, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax


 movq -56(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $40, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)



 movq _curr_scope(%rip), %rax
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
 movq (%rax), %rax
 cmpq $0, %rax
 setne %al
 xorb $-1, %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE237
 movq $1, %rax
 pushq %rax


 movq -56(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movl %r10d, (%rax)
 jmp END_IF237
ELSE237:
END_IF237:
 movq -56(%rbp), %rax
 pushq %rax




 movq -32(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $88, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)



 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $61, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE238




 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $123, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE239




 movq -40(%rbp), %rax
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
 movq $3, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setne %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE240



 movq -56(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 leaq L_.str.63(%rip), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _error_token
 jmp END_IF240
ELSE240:
END_IF240:
 movslq _ct(%rip), %rax
 pushq %rax
 movq $2, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _ct(%rip)
 movq $0, %rax
 movl %eax, -68(%rbp)

 movq $0, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq %rax, -80(%rbp)

 movq $0, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq %rax, -88(%rbp)

 movq $0, %rax
 movl %eax, -92(%rbp)
FOR241:




 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $125, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE242
 movq $1, %rax
 movl %eax, -68(%rbp)
 jmp END_IF242
ELSE242:
END_IF242:

 movslq -68(%rbp), %rax
 cmpq $0, %rax
 movq $0, %rax
 je AND_OR244
 movslq -92(%rbp), %rax
 pushq %rax


 movq -40(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
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
 cmpq %r10, %rax
 setge %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR244:
 cmpq $0, %rax
 je ELSE243
 jmp FOR_END241
 jmp END_IF243
ELSE243:
END_IF243:

 movslq -92(%rbp), %rax
 pushq %rax


 movq -40(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
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
 cmpq %r10, %rax
 setge %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE245


 callq _assign



 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $44, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE246
 movslq _ct(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _ct(%rip)
 popq %rax
 jmp END_IF246
ELSE246:



 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $125, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setne %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE247

 movq $125, %rax
 pushq %rax
 popq %rdi
 callq _skip
 jmp END_IF247
ELSE247:
END_IF247:
END_IF246:
 jmp FOR_INC241

 jmp END_IF245
ELSE245:
END_IF245:

 movslq -68(%rbp), %rax
 cmpq $0, %rax
 je ELSE248


 movq $3, %rax
 pushq %rax
 popq %rdi
 callq _new_node
 movq %rax, -104(%rbp)

 movq $256, %rax
 pushq %rax
 popq %rdi
 callq _new_temp_token
 pushq %rax


 movq -104(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)

 movq $0, %rax
 pushq %rax




 movq -104(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)

 jmp END_IF248
ELSE248:


 callq _assign
 movq %rax, -104(%rbp)

END_IF248:

 movq $4, %rax
 pushq %rax
 popq %rdi
 callq _new_node
 movq %rax, -112(%rbp)

 movq $43, %rax
 pushq %rax
 popq %rdi
 callq _new_temp_token
 pushq %rax


 movq -112(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)

 movq $2, %rax
 pushq %rax
 popq %rdi
 callq _new_node
 pushq %rax


 movq -112(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 movq -56(%rbp), %rax
 pushq %rax




 movq -112(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)

 movq $3, %rax
 pushq %rax
 popq %rdi
 callq _new_node
 pushq %rax


 movq -112(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)

 movq $269, %rax
 pushq %rax
 popq %rdi
 callq _new_temp_token
 pushq %rax




 movq -112(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)

 movslq -92(%rbp), %rax
 pushq %rax






 movq -112(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)

 movq $15, %rax
 pushq %rax
 popq %rdi
 callq _new_node
 movq %rax, -120(%rbp)

 movq $42, %rax
 pushq %rax
 popq %rdi
 callq _new_temp_token
 pushq %rax


 movq -120(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 movq -112(%rbp), %rax
 pushq %rax


 movq -120(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)

 movq $5, %rax
 pushq %rax
 popq %rdi
 callq _new_node
 movq %rax, -128(%rbp)

 movq $61, %rax
 pushq %rax
 popq %rdi
 callq _new_temp_token
 pushq %rax


 movq -128(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 movq -120(%rbp), %rax
 pushq %rax


 movq -128(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 movq -104(%rbp), %rax
 pushq %rax


 movq -128(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)

 movq -88(%rbp), %rax
 cmpq $0, %rax
 setne %al
 xorb $-1, %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE249

 movq -128(%rbp), %rax
 movq %rax, -88(%rbp)
 movq -128(%rbp), %rax
 movq %rax, -80(%rbp)

 jmp END_IF249
ELSE249:

 movq -128(%rbp), %rax
 pushq %rax


 movq -88(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $104, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)


 movq -88(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $104, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 movq %rax, -88(%rbp)

END_IF249:



 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $44, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE250
 movslq _ct(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _ct(%rip)
 popq %rax
 jmp END_IF250
ELSE250:



 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $125, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setne %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE251

 movq $125, %rax
 pushq %rax
 popq %rdi
 callq _skip
 jmp END_IF251
ELSE251:
END_IF251:
END_IF250:

FOR_INC241:
 movslq -92(%rbp), %rax
 pushq %rax
 movslq -92(%rbp), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, -92(%rbp)
 popq %rax
 jmp FOR241
FOR_END241:

 movq $125, %rax
 pushq %rax
 popq %rdi
 callq _skip
 movq -80(%rbp), %rax
 pushq %rax




 movq -32(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $88, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)

 jmp END_IF239
ELSE239:

 movslq _ct(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 pushq %rax
 movq $-1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _ct(%rip)
 popq %rax

 callq _assign
 pushq %rax




 movq -32(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $88, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)

END_IF239:





 movq -32(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $88, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _add_type

 jmp END_IF238
ELSE238:
END_IF238:



 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $44, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setne %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE252
 jmp WHILE_END227
 jmp END_IF252
ELSE252:
END_IF252:
 movslq _ct(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _ct(%rip)
 popq %rax


 movq -32(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $88, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 movq %rax, -32(%rbp)

 jmp WHILE227
WHILE_END227:
 movq -16(%rbp), %rax
 movq %rbp, %rsp
 popq %rbp
 ret

 movq $0, %rax
 movq %rbp, %rsp
 popq %rbp
 ret


_statement:
 pushq %rbp
 movq %rsp, %rbp
 subq $16, %rsp


 movq $0, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq %rax, -8(%rbp)



 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $264, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE253


 movq $7, %rax
 pushq %rax
 popq %rdi
 callq _new_node
 movq %rax, -8(%rbp)
 movslq _ct(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _ct(%rip)
 popq %rax



 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $59, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setne %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE254

 callq _expr
 pushq %rax


 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 jmp END_IF254
ELSE254:

 movq $0, %rax
 pushq %rax
 popq %rdi
 callq _new_node
 pushq %rax


 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)
END_IF254:

 movq $59, %rax
 pushq %rax
 popq %rdi
 callq _skip

 jmp END_IF253
ELSE253:



 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $278, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE255


 movq $19, %rax
 pushq %rax
 popq %rdi
 callq _new_node
 movq %rax, -8(%rbp)
 movslq _ct(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _ct(%rip)
 popq %rax

 movq $59, %rax
 pushq %rax
 popq %rdi
 callq _skip

 jmp END_IF255
ELSE255:



 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $277, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE256


 movq $20, %rax
 pushq %rax
 popq %rdi
 callq _new_node
 movq %rax, -8(%rbp)
 movslq _ct(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _ct(%rip)
 popq %rax

 movq $59, %rax
 pushq %rax
 popq %rdi
 callq _skip

 jmp END_IF256
ELSE256:



 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $265, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE257


 movq $8, %rax
 pushq %rax
 popq %rdi
 callq _new_node
 movq %rax, -8(%rbp)
 movslq _ct(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _ct(%rip)
 popq %rax

 movq $40, %rax
 pushq %rax
 popq %rdi
 callq _skip

 callq _expr
 pushq %rax


 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $56, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)

 movq $41, %rax
 pushq %rax
 popq %rdi
 callq _skip

 callq _statement
 pushq %rax


 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $48, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)



 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $266, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE258

 movslq _ct(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _ct(%rip)
 popq %rax

 callq _statement
 pushq %rax


 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $128, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)

 jmp END_IF258
ELSE258:
END_IF258:

 jmp END_IF257
ELSE257:



 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $267, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE259


 movq $9, %rax
 pushq %rax
 popq %rdi
 callq _new_node
 movq %rax, -8(%rbp)
 movslq _ct(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _ct(%rip)
 popq %rax

 movq $40, %rax
 pushq %rax
 popq %rdi
 callq _skip

 callq _expr
 pushq %rax


 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $56, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)

 movq $41, %rax
 pushq %rax
 popq %rdi
 callq _skip

 callq _statement
 pushq %rax


 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $48, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)

 jmp END_IF259
ELSE259:



 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $268, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE260


 callq _enter_scope

 movq $10, %rax
 pushq %rax
 popq %rdi
 callq _new_node
 movq %rax, -8(%rbp)
 movslq _ct(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _ct(%rip)
 popq %rax

 movq $40, %rax
 pushq %rax
 popq %rdi
 callq _skip



 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $59, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setne %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE261



 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
 addq %r10, %rax
 pushq %rax
 popq %rdi
 callq _is_typename
 cmpq $0, %rax
 je ELSE262

 movq $0, %rax
 pushq %rax
 popq %rdi
 callq _decl
 pushq %rax


 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $64, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 jmp END_IF262
ELSE262:

 callq _expr
 pushq %rax


 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $64, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)
END_IF262:

 jmp END_IF261
ELSE261:
END_IF261:

 movq $59, %rax
 pushq %rax
 popq %rdi
 callq _skip



 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $59, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setne %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE263

 callq _expr
 pushq %rax


 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $56, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 jmp END_IF263
ELSE263:
END_IF263:

 movq $59, %rax
 pushq %rax
 popq %rdi
 callq _skip



 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $41, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setne %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE264

 callq _expr
 pushq %rax


 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $72, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 jmp END_IF264
ELSE264:
END_IF264:

 movq $41, %rax
 pushq %rax
 popq %rdi
 callq _skip

 callq _statement
 pushq %rax


 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $48, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)

 callq _leave_scope

 jmp END_IF260
ELSE260:



 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $123, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE265


 movq $11, %rax
 pushq %rax
 popq %rdi
 callq _new_node
 movq %rax, -8(%rbp)
 movslq _ct(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _ct(%rip)
 popq %rax
 movq -8(%rbp), %rax
 movq %rax, -16(%rbp)

 callq _enter_scope
WHILE266:


 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $125, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setne %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 movq $0, %rax
 je AND_OR267


 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR267:
 cmpq $0, %rax
 je WHILE_END266


 callq _statement_or_decl
 pushq %rax


 movq -16(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $80, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)



 movq -16(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $80, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _assert


 movq -16(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $80, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 movq %rax, -16(%rbp)

 movq -16(%rbp), %rax
 pushq %rax
 popq %rdi
 callq _assert

 jmp WHILE266
WHILE_END266:


 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $80, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax


 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $96, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)

 movq $0, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax


 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $80, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)

 callq _leave_scope

 movq $0, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax


 movq -16(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $80, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)

 movq $125, %rax
 pushq %rax
 popq %rdi
 callq _skip

 jmp END_IF265
ELSE265:




 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $59, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setne %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE268

 callq _expr
 movq %rax, -8(%rbp)
 jmp END_IF268
ELSE268:

 movq $0, %rax
 pushq %rax
 popq %rdi
 callq _new_node
 movq %rax, -8(%rbp)
END_IF268:

 movq $59, %rax
 pushq %rax
 popq %rdi
 callq _skip

END_IF265:
END_IF260:
END_IF259:
END_IF257:
END_IF256:
END_IF255:
END_IF253:
 movq -8(%rbp), %rax
 movq %rbp, %rsp
 popq %rbp
 ret

 movq $0, %rax
 movq %rbp, %rsp
 popq %rbp
 ret


_expr:
 pushq %rbp
 movq %rsp, %rbp
 subq $16, %rsp


 callq _assign
 movq %rax, -8(%rbp)
 movq -8(%rbp), %rax
 movq %rax, -16(%rbp)
WHILE269:


 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $44, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je WHILE_END269

 movslq _ct(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _ct(%rip)
 popq %rax

 callq _assign
 pushq %rax


 movq -16(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $104, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)


 movq -16(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $104, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 movq %rax, -16(%rbp)

 jmp WHILE269
WHILE_END269:
 movq -8(%rbp), %rax
 movq %rbp, %rsp
 popq %rbp
 ret

 movq $0, %rax
 movq %rbp, %rsp
 popq %rbp
 ret


_assign:
 pushq %rbp
 movq %rsp, %rbp
 subq $32, %rsp


 callq _conditional
 movq %rax, -8(%rbp)




 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $61, %rax
 pushq %rax
 movq $282, %rax
 pushq %rax
 movq $283, %rax
 pushq %rax
 movq $285, %rax
 pushq %rax
 movq $284, %rax
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
 callq _type_match
 addq $8, %rsp
 cmpq $0, %rax
 je ELSE270


 movq -8(%rbp), %rax
 pushq %rax
 popq %rdi
 callq _add_type



 movq -8(%rbp), %rax
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
 movq $2, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setne %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 movq $0, %rax
 je AND_OR272


 movq -8(%rbp), %rax
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
 movq $15, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setne %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR272:
 cmpq $0, %rax
 movq $1, %rax
 jne AND_OR273




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq $3, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR273:
 cmpq $0, %rax
 movq $1, %rax
 jne AND_OR274




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq $2, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR274:
 cmpq $0, %rax
 je ELSE271

 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
 addq %r10, %rax
 pushq %rax
 leaq L_.str.64(%rip), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _error_token
 jmp END_IF271
ELSE271:
END_IF271:

 movq $5, %rax
 pushq %rax
 popq %rdi
 callq _new_node
 movq %rax, -16(%rbp)
 movslq _ct(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _ct(%rip)
 popq %rax
 movq -8(%rbp), %rax
 pushq %rax


 movq -16(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)

 callq _assign
 pushq %rax


 movq -16(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)





 movq -16(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq $61, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setne %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE275


 movq $4, %rax
 pushq %rax
 popq %rdi
 callq _new_node
 movq %rax, -24(%rbp)





 movq -16(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 movq $0, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 movsbq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _new_temp_token
 pushq %rax


 movq -24(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 movq -8(%rbp), %rax
 pushq %rax


 movq -24(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)


 movq -16(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax


 movq -24(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 movq -24(%rbp), %rax
 pushq %rax


 movq -16(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)

 jmp END_IF275
ELSE275:
END_IF275:

 movq -16(%rbp), %rax
 pushq %rax
 popq %rdi
 callq _add_type
 movq -16(%rbp), %rax
 movq %rbp, %rsp
 popq %rbp
 ret

 jmp END_IF270
ELSE270:
END_IF270:

 movq -8(%rbp), %rax
 pushq %rax
 popq %rdi
 callq _add_type
 movq -8(%rbp), %rax
 movq %rbp, %rsp
 popq %rbp
 ret

 movq $0, %rax
 movq %rbp, %rsp
 popq %rbp
 ret


_conditional:
 pushq %rbp
 movq %rsp, %rbp
 subq $16, %rsp


 callq _logical_or
 movq %rax, -8(%rbp)



 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $63, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE276


 movq $22, %rax
 pushq %rax
 popq %rdi
 callq _new_node
 movq %rax, -16(%rbp)
 movslq _ct(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _ct(%rip)
 popq %rax
 movq -8(%rbp), %rax
 pushq %rax


 movq -16(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $56, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)

 callq _expr
 pushq %rax


 movq -16(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)

 movq $58, %rax
 pushq %rax
 popq %rdi
 callq _skip

 callq _conditional
 pushq %rax


 movq -16(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 movq -16(%rbp), %rax
 movq %rbp, %rsp
 popq %rbp
 ret

 jmp END_IF276
ELSE276:
END_IF276:
 movq -8(%rbp), %rax
 movq %rbp, %rsp
 popq %rbp
 ret

 movq $0, %rax
 movq %rbp, %rsp
 popq %rbp
 ret


_logical_or:
 pushq %rbp
 movq %rsp, %rbp
 subq $0, %rsp


 leaq _logical_and(%rip), %rax
 pushq %rax
 movq $259, %rax
 pushq %rax
 movq $1, %rax
 xorq %r10, %r10
 subq %rax, %r10
 movq %r10, %rax
 pushq %rax
 popq %rdx
 popq %rsi
 popq %rdi
 callq _binary
 movq %rbp, %rsp
 popq %rbp
 ret

 movq $0, %rax
 movq %rbp, %rsp
 popq %rbp
 ret


_logical_and:
 pushq %rbp
 movq %rsp, %rbp
 subq $0, %rsp


 leaq _equality(%rip), %rax
 pushq %rax
 movq $258, %rax
 pushq %rax
 movq $1, %rax
 xorq %r10, %r10
 subq %rax, %r10
 movq %r10, %rax
 pushq %rax
 popq %rdx
 popq %rsi
 popq %rdi
 callq _binary
 movq %rbp, %rsp
 popq %rbp
 ret

 movq $0, %rax
 movq %rbp, %rsp
 popq %rbp
 ret


_equality:
 pushq %rbp
 movq %rsp, %rbp
 subq $0, %rsp


 leaq _relational(%rip), %rax
 pushq %rax
 movq $260, %rax
 pushq %rax
 movq $261, %rax
 pushq %rax
 movq $1, %rax
 xorq %r10, %r10
 subq %rax, %r10
 movq %r10, %rax
 pushq %rax
 popq %rcx
 popq %rdx
 popq %rsi
 popq %rdi
 callq _binary
 movq %rbp, %rsp
 popq %rbp
 ret

 movq $0, %rax
 movq %rbp, %rsp
 popq %rbp
 ret


_relational:
 pushq %rbp
 movq %rsp, %rbp
 subq $0, %rsp


 leaq _add(%rip), %rax
 pushq %rax
 movq $60, %rax
 pushq %rax
 movq $62, %rax
 pushq %rax
 movq $262, %rax
 pushq %rax
 movq $263, %rax
 pushq %rax
 movq $1, %rax
 xorq %r10, %r10
 subq %rax, %r10
 movq %r10, %rax
 pushq %rax
 popq %r9
 popq %r8
 popq %rcx
 popq %rdx
 popq %rsi
 popq %rdi
 callq _binary
 movq %rbp, %rsp
 popq %rbp
 ret

 movq $0, %rax
 movq %rbp, %rsp
 popq %rbp
 ret


_add:
 pushq %rbp
 movq %rsp, %rbp
 subq $0, %rsp


 leaq _mul(%rip), %rax
 pushq %rax
 movq $43, %rax
 pushq %rax
 movq $45, %rax
 pushq %rax
 movq $1, %rax
 xorq %r10, %r10
 subq %rax, %r10
 movq %r10, %rax
 pushq %rax
 popq %rcx
 popq %rdx
 popq %rsi
 popq %rdi
 callq _binary
 movq %rbp, %rsp
 popq %rbp
 ret

 movq $0, %rax
 movq %rbp, %rsp
 popq %rbp
 ret


_mul:
 pushq %rbp
 movq %rsp, %rbp
 subq $0, %rsp


 leaq _cast(%rip), %rax
 pushq %rax
 movq $42, %rax
 pushq %rax
 movq $47, %rax
 pushq %rax
 movq $37, %rax
 pushq %rax
 movq $1, %rax
 xorq %r10, %r10
 subq %rax, %r10
 movq %r10, %rax
 pushq %rax
 popq %r8
 popq %rcx
 popq %rdx
 popq %rsi
 popq %rdi
 callq _binary
 movq %rbp, %rsp
 popq %rbp
 ret

 movq $0, %rax
 movq %rbp, %rsp
 popq %rbp
 ret


_cast:
 pushq %rbp
 movq %rsp, %rbp
 subq $16, %rsp




 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $40, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 movq $0, %rax
 je AND_OR278

 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
 addq %r10, %rax
 pushq %rax
 popq %rdi
 callq _is_typename
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR278:
 cmpq $0, %rax
 je ELSE277


 movq $21, %rax
 pushq %rax
 popq %rdi
 callq _new_node
 movq %rax, -8(%rbp)
 movslq _ct(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _ct(%rip)
 popq %rax

 callq _parse_type
 pushq %rax


 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $112, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)

 movq $41, %rax
 pushq %rax
 popq %rdi
 callq _skip

 callq _cast
 pushq %rax


 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 movq -8(%rbp), %rax
 movq %rbp, %rsp
 popq %rbp
 ret

 jmp END_IF277
ELSE277:
END_IF277:

 callq _unary
 movq %rbp, %rsp
 popq %rbp
 ret

 movq $0, %rax
 movq %rbp, %rsp
 popq %rbp
 ret


_unary:
 pushq %rbp
 movq %rsp, %rbp
 subq $80, %rsp




 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $43, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE279

 movslq _ct(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _ct(%rip)
 popq %rax

 callq _cast
 movq %rbp, %rsp
 popq %rbp
 ret

 jmp END_IF279
ELSE279:



 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $45, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE280


 movq $6, %rax
 pushq %rax
 popq %rdi
 callq _new_node
 movq %rax, -8(%rbp)
 movslq _ct(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _ct(%rip)
 popq %rax

 callq _cast
 pushq %rax


 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 movq -8(%rbp), %rax
 movq %rbp, %rsp
 popq %rbp
 ret

 jmp END_IF280
ELSE280:



 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $38, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE281


 movq $16, %rax
 pushq %rax
 popq %rdi
 callq _new_node
 movq %rax, -16(%rbp)
 movslq _ct(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _ct(%rip)
 popq %rax

 callq _cast
 pushq %rax


 movq -16(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 movq -16(%rbp), %rax
 movq %rbp, %rsp
 popq %rbp
 ret

 jmp END_IF281
ELSE281:



 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $42, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE282


 movq $15, %rax
 pushq %rax
 popq %rdi
 callq _new_node
 movq %rax, -24(%rbp)
 movslq _ct(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _ct(%rip)
 popq %rax

 callq _cast
 pushq %rax


 movq -24(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 movq -24(%rbp), %rax
 movq %rbp, %rsp
 popq %rbp
 ret

 jmp END_IF282
ELSE282:



 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $33, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE283


 movq $13, %rax
 pushq %rax
 popq %rdi
 callq _new_node
 movq %rax, -32(%rbp)
 movslq _ct(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _ct(%rip)
 popq %rax

 callq _cast
 pushq %rax


 movq -32(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 movq -32(%rbp), %rax
 movq %rbp, %rsp
 popq %rbp
 ret

 jmp END_IF283
ELSE283:



 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $281, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE284


 movq $3, %rax
 pushq %rax
 popq %rdi
 callq _new_node
 movq %rax, -40(%rbp)

 movq $256, %rax
 pushq %rax
 popq %rdi
 callq _new_temp_token
 pushq %rax


 movq -40(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 movslq _ct(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _ct(%rip)
 popq %rax

 movq $0, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq %rax, -48(%rbp)



 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $40, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 movq $0, %rax
 je AND_OR286

 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
 addq %r10, %rax
 pushq %rax
 popq %rdi
 callq _is_typename
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR286:
 cmpq $0, %rax
 je ELSE285

 movslq _ct(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _ct(%rip)
 popq %rax

 callq _parse_type
 movq %rax, -48(%rbp)

 movq $41, %rax
 pushq %rax
 popq %rdi
 callq _skip

 jmp END_IF285
ELSE285:


 callq _unary
 movq %rax, -56(%rbp)

 movq -56(%rbp), %rax
 pushq %rax
 popq %rdi
 callq _add_type
 movq %rax, -48(%rbp)

END_IF285:

 movq -48(%rbp), %rax
 pushq %rax
 popq %rdi
 callq _assert



 movq -48(%rbp), %rax
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
 movq $3, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE287



 movq -48(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax


 movq -48(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
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
 imulq %r10, %rax
 pushq %rax




 movq -40(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 jmp END_IF287
ELSE287:



 movq -48(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax




 movq -40(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)
END_IF287:
 movq -40(%rbp), %rax
 movq %rbp, %rsp
 popq %rbp
 ret

 jmp END_IF284
ELSE284:



 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $275, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 movq $1, %rax
 jne AND_OR289


 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $276, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR289:
 cmpq $0, %rax
 je ELSE288


 movq $4, %rax
 pushq %rax
 popq %rdi
 callq _new_node
 movq %rax, -64(%rbp)


 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $275, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je QUES290
 movq $43, %rax
 jmp QUES_END290
QUES290:
 movq $45, %rax
QUES_END290:
 pushq %rax




 movq -64(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 popq %r10
 movl %r10d, (%rax)
 movslq _ct(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _ct(%rip)
 popq %rax

 callq _unary
 pushq %rax


 movq -64(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)

 movq $3, %rax
 pushq %rax
 popq %rdi
 callq _new_node
 pushq %rax


 movq -64(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)

 movq $256, %rax
 pushq %rax
 popq %rdi
 callq _new_temp_token
 pushq %rax




 movq -64(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)

 movq $1, %rax
 pushq %rax






 movq -64(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)

 movq $5, %rax
 pushq %rax
 popq %rdi
 callq _new_node
 movq %rax, -72(%rbp)

 movq $61, %rax
 pushq %rax
 popq %rdi
 callq _new_temp_token
 pushq %rax


 movq -72(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)


 movq -64(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax


 movq -72(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 movq -64(%rbp), %rax
 pushq %rax


 movq -72(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 movq -72(%rbp), %rax
 movq %rbp, %rsp
 popq %rbp
 ret

 jmp END_IF288
ELSE288:
END_IF288:
END_IF284:
END_IF283:
END_IF282:
END_IF281:
END_IF280:
END_IF279:

 callq _postfix
 movq %rbp, %rsp
 popq %rbp
 ret

 movq $0, %rax
 movq %rbp, %rsp
 popq %rbp
 ret


_postfix:
 pushq %rbp
 movq %rsp, %rbp
 subq $96, %rsp


 callq _primary
 movq %rax, -8(%rbp)
WHILE291:
 movq $1, %rax
 cmpq $0, %rax
 je WHILE_END291




 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $91, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE292

 movslq _ct(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _ct(%rip)
 popq %rax

 callq _expr
 movq %rax, -16(%rbp)

 movq $93, %rax
 pushq %rax
 popq %rdi
 callq _skip

 movq $4, %rax
 pushq %rax
 popq %rdi
 callq _new_node
 movq %rax, -24(%rbp)

 movq $43, %rax
 pushq %rax
 popq %rdi
 callq _new_temp_token
 pushq %rax


 movq -24(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 movq -8(%rbp), %rax
 pushq %rax


 movq -24(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 movq -16(%rbp), %rax
 pushq %rax


 movq -24(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)

 movq $15, %rax
 pushq %rax
 popq %rdi
 callq _new_node
 movq %rax, -32(%rbp)

 movq $42, %rax
 pushq %rax
 popq %rdi
 callq _new_temp_token
 pushq %rax


 movq -32(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 movq -24(%rbp), %rax
 pushq %rax


 movq -32(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 movq -32(%rbp), %rax
 movq %rax, -8(%rbp)

 jmp END_IF292
ELSE292:



 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $275, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 movq $1, %rax
 jne AND_OR294


 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $276, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR294:
 cmpq $0, %rax
 je ELSE293


 movq $13, %rax
 pushq %rax
 popq %rdi
 callq _new_node
 movq %rax, -40(%rbp)
 movq -8(%rbp), %rax
 pushq %rax


 movq -40(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 movq -40(%rbp), %rax
 movq %rax, -8(%rbp)
 movslq _ct(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _ct(%rip)
 popq %rax

 jmp END_IF293
ELSE293:



 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $46, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 movq $1, %rax
 jne AND_OR296


 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $288, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR296:
 cmpq $0, %rax
 je ELSE295


 movq -8(%rbp), %rax
 pushq %rax
 popq %rdi
 callq _add_type
 movq %rax, -48(%rbp)



 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $288, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 movq $0, %rax
 je AND_OR298


 movq -48(%rbp), %rax
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
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 movq $0, %rax
 je AND_OR299




 movq -48(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq $7, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR299:
 cmpq $0, %rax
 setne %al
 xorb $-1, %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR298:
 cmpq $0, %rax
 je ELSE297


 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
 addq %r10, %rax
 pushq %rax
 leaq L_.str.65(%rip), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _error_token

 jmp END_IF297
ELSE297:
END_IF297:



 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $288, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE300


 movq -48(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 movq %rax, -48(%rbp)
 jmp END_IF300
ELSE300:
END_IF300:



 movq -48(%rbp), %rax
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
 movq $7, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setne %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE301

 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
 addq %r10, %rax
 pushq %rax
 leaq L_.str.66(%rip), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _error_token
 jmp END_IF301
ELSE301:
END_IF301:
 movslq _ct(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _ct(%rip)
 popq %rax
 movq $0, %rax
 movl %eax, -52(%rbp)

FOR302:
 movslq -52(%rbp), %rax
 pushq %rax


 movq -48(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $2048, %rax
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
 cmpq %r10, %rax
 setl %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je FOR_END302





 movq -48(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $848, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movslq -52(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 movq (%rax), %rax
 pushq %rax


 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _strcmp
 cmpq $0, %rax
 setne %al
 xorb $-1, %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE303
 jmp FOR_END302
 jmp END_IF303
ELSE303:
END_IF303:

FOR_INC302:
 movslq -52(%rbp), %rax
 pushq %rax
 movslq -52(%rbp), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, -52(%rbp)
 popq %rax
 jmp FOR302
FOR_END302:

 movslq -52(%rbp), %rax
 pushq %rax


 movq -48(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $2048, %rax
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
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE304

 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
 addq %r10, %rax
 pushq %rax
 leaq L_.str.67(%rip), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _error_token
 jmp END_IF304
ELSE304:
END_IF304:

 movq $1, %rax
 pushq %rax
 popq %rdi
 callq _new_type
 movq %rax, -64(%rbp)
 movq _type_char(%rip), %rax
 pushq %rax


 movq -64(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 movq -8(%rbp), %rax
 movq %rax, -72(%rbp)



 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 subq %r10, %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $46, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE305


 movq $16, %rax
 pushq %rax
 popq %rdi
 callq _new_node
 movq %rax, -72(%rbp)
 movq -8(%rbp), %rax
 pushq %rax


 movq -72(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)

 jmp END_IF305
ELSE305:
END_IF305:

 movq %rbp, %rax
 subq $72, %rax
 pushq %rax
 movq -64(%rbp), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _implicit_cast

 movq $4, %rax
 pushq %rax
 popq %rdi
 callq _new_node
 movq %rax, -80(%rbp)

 movq $43, %rax
 pushq %rax
 popq %rdi
 callq _new_temp_token
 pushq %rax


 movq -80(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 movq -72(%rbp), %rax
 pushq %rax


 movq -80(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)

 movq $3, %rax
 pushq %rax
 popq %rdi
 callq _new_node
 pushq %rax


 movq -80(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)

 movq $256, %rax
 pushq %rax
 popq %rdi
 callq _new_temp_token
 pushq %rax




 movq -80(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)



 movq -48(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $1648, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movslq -52(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $4, %r10
 addq %r10, %rax
 movslq (%rax), %rax
 pushq %rax






 movq -80(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)

 movq $1, %rax
 pushq %rax
 popq %rdi
 callq _new_type
 movq %rax, -88(%rbp)





 movq -48(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $48, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movslq -52(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 movq (%rax), %rax
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
 movq $3, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE306



 movq -48(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $48, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movslq -52(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 movq (%rax), %rax
 movq %rax, -88(%rbp)

 movq %rbp, %rax
 subq $80, %rax
 pushq %rax
 movq -88(%rbp), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _implicit_cast
 movq -80(%rbp), %rax
 movq %rax, -96(%rbp)

 jmp END_IF306
ELSE306:



 movq -48(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $48, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movslq -52(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 movq (%rax), %rax
 pushq %rax


 movq -88(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)

 movq %rbp, %rax
 subq $80, %rax
 pushq %rax
 movq -88(%rbp), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _implicit_cast

 movq $15, %rax
 pushq %rax
 popq %rdi
 callq _new_node
 movq %rax, -96(%rbp)
 movq -80(%rbp), %rax
 pushq %rax


 movq -96(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)

END_IF306:

 movq $257, %rax
 pushq %rax
 popq %rdi
 callq _skip
 movq -96(%rbp), %rax
 movq %rax, -8(%rbp)

 jmp END_IF295
ELSE295:
 jmp WHILE_END291
END_IF295:
END_IF293:
END_IF292:

 jmp WHILE291
WHILE_END291:
 movq -8(%rbp), %rax
 movq %rbp, %rsp
 popq %rbp
 ret

 movq $0, %rax
 movq %rbp, %rsp
 popq %rbp
 ret


_primary:
 pushq %rbp
 movq %rsp, %rbp
 subq $32, %rsp


 movq $0, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq %rax, -8(%rbp)



 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $256, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE307


 movq $3, %rax
 pushq %rax
 popq %rdi
 callq _new_node
 movq %rax, -8(%rbp)
 movslq _ct(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _ct(%rip)
 popq %rax

 jmp END_IF307
ELSE307:



 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $274, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE308


 movq $18, %rax
 pushq %rax
 popq %rdi
 callq _new_node
 movq %rax, -8(%rbp)
 movslq _ct(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _ct(%rip)
 popq %rax

 jmp END_IF308
ELSE308:



 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $40, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE309

 movslq _ct(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _ct(%rip)
 popq %rax

 callq _expr
 movq %rax, -8(%rbp)

 movq $41, %rax
 pushq %rax
 popq %rdi
 callq _skip

 jmp END_IF309
ELSE309:



 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $257, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 movq $0, %rax
 je AND_OR311


 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $40, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR311:
 cmpq $0, %rax
 je ELSE310


 movq $12, %rax
 pushq %rax
 popq %rdi
 callq _new_node
 movq %rax, -8(%rbp)



 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _find_func
 pushq %rax


 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $144, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)



 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $144, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 cmpq $0, %rax
 setne %al
 xorb $-1, %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE312



 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 leaq L_.str.68(%rip), %rax
 pushq %rax


 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdx
 popq %rsi
 popq %rdi
 callq _error_token
 jmp END_IF312
ELSE312:
END_IF312:
 movslq _ct(%rip), %rax
 pushq %rax
 movq $2, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _ct(%rip)
 movq $0, %rax
 movl %eax, -12(%rbp)
WHILE313:


 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $41, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setne %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je WHILE_END313


 callq _assign
 pushq %rax


 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $160, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movslq -12(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 movslq -12(%rbp), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, -12(%rbp)
 popq %rax



 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $44, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE314
 movslq _ct(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _ct(%rip)
 popq %rax
 jmp END_IF314
ELSE314:



 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $41, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setne %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE315

 movq $41, %rax
 pushq %rax
 popq %rdi
 callq _skip
 jmp END_IF315
ELSE315:
END_IF315:
END_IF314:

 jmp WHILE313
WHILE_END313:
 movslq _ct(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _ct(%rip)
 popq %rax
 movslq -12(%rbp), %rax
 pushq %rax


 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $1760, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movl %r10d, (%rax)

 jmp END_IF310
ELSE310:



 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
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
 movq $257, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE316




 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _find_var
 movq %rax, -24(%rbp)

 movq -24(%rbp), %rax
 cmpq $0, %rax
 setne %al
 xorb $-1, %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE317


 movq $0, %rax
 movl %eax, -28(%rbp)
FOR318:
 movslq -28(%rbp), %rax
 pushq %rax
 movslq _enum_count(%rip), %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setl %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je FOR_END318





 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax


 movq _enums@GOTPCREL(%rip), %rax
 pushq %rax
 movslq -28(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $16, %r10
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
 movq (%rax), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _strcmp
 cmpq $0, %rax
 setne %al
 xorb $-1, %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE319


 movq $3, %rax
 pushq %rax
 popq %rdi
 callq _new_node
 movq %rax, -8(%rbp)
 movslq _ct(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _ct(%rip)
 popq %rax

 movq $256, %rax
 pushq %rax
 popq %rdi
 callq _new_temp_token
 pushq %rax


 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)



 movq _enums@GOTPCREL(%rip), %rax
 pushq %rax
 movslq -28(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $16, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
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
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 movq -8(%rbp), %rax
 movq %rbp, %rsp
 popq %rbp
 ret

 jmp END_IF319
ELSE319:
END_IF319:

FOR_INC318:
 movslq -28(%rbp), %rax
 pushq %rax
 movslq -28(%rbp), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, -28(%rbp)
 popq %rax
 jmp FOR318
FOR_END318:

 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
 addq %r10, %rax
 pushq %rax
 leaq L_.str.69(%rip), %rax
 pushq %rax


 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdx
 popq %rsi
 popq %rdi
 callq _error_token

 jmp END_IF317
ELSE317:
END_IF317:

 movq $2, %rax
 pushq %rax
 popq %rdi
 callq _new_node
 movq %rax, -8(%rbp)
 movq -24(%rbp), %rax
 pushq %rax


 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 movslq _ct(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _ct(%rip)
 popq %rax

 jmp END_IF316
ELSE316:

 movq _tokens@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _ct(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $40, %r10
 addq %r10, %rax
 pushq %rax
 leaq L_.str.70(%rip), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _error_token
END_IF316:
END_IF310:
END_IF309:
END_IF308:
END_IF307:
 movq -8(%rbp), %rax
 movq %rbp, %rsp
 popq %rbp
 ret

 movq $0, %rax
 movq %rbp, %rsp
 popq %rbp
 ret


_get_inst_suffix:
 pushq %rbp
 movq %rsp, %rbp
 subq $16, %rsp
 movl %edi, -4(%rbp)


 movslq -4(%rbp), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE320
 leaq L_.str.71(%rip), %rax
 movq %rbp, %rsp
 popq %rbp
 ret
 jmp END_IF320
ELSE320:

 movslq -4(%rbp), %rax
 pushq %rax
 movq $2, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE321
 leaq L_.str.72(%rip), %rax
 movq %rbp, %rsp
 popq %rbp
 ret
 jmp END_IF321
ELSE321:

 movslq -4(%rbp), %rax
 pushq %rax
 movq $4, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE322
 leaq L_.str.73(%rip), %rax
 movq %rbp, %rsp
 popq %rbp
 ret
 jmp END_IF322
ELSE322:

 movslq -4(%rbp), %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE323
 leaq L_.str.74(%rip), %rax
 movq %rbp, %rsp
 popq %rbp
 ret
 jmp END_IF323
ELSE323:
END_IF323:
END_IF322:
END_IF321:
END_IF320:

 movq $0, %rax
 pushq %rax
 popq %rdi
 callq _assert

 movq $0, %rax
 movq %rbp, %rsp
 popq %rbp
 ret


_get_size_name:
 pushq %rbp
 movq %rsp, %rbp
 subq $16, %rsp
 movl %edi, -4(%rbp)


 movslq -4(%rbp), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE324
 leaq L_.str.75(%rip), %rax
 movq %rbp, %rsp
 popq %rbp
 ret
 jmp END_IF324
ELSE324:

 movslq -4(%rbp), %rax
 pushq %rax
 movq $2, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE325
 leaq L_.str.24(%rip), %rax
 movq %rbp, %rsp
 popq %rbp
 ret
 jmp END_IF325
ELSE325:

 movslq -4(%rbp), %rax
 pushq %rax
 movq $4, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE326
 leaq L_.str.25(%rip), %rax
 movq %rbp, %rsp
 popq %rbp
 ret
 jmp END_IF326
ELSE326:

 movslq -4(%rbp), %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE327
 leaq L_.str.76(%rip), %rax
 movq %rbp, %rsp
 popq %rbp
 ret
 jmp END_IF327
ELSE327:
END_IF327:
END_IF326:
END_IF325:
END_IF324:

 movq $0, %rax
 pushq %rax
 popq %rdi
 callq _assert

 movq $0, %rax
 movq %rbp, %rsp
 popq %rbp
 ret


_log2_int:
 pushq %rbp
 movq %rsp, %rbp
 subq $16, %rsp
 movl %edi, -4(%rbp)

 movq $0, %rax
 movl %eax, -8(%rbp)
WHILE328:
 movslq -4(%rbp), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setg %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je WHILE_END328

 movslq -4(%rbp), %rax
 pushq %rax
 movq $2, %rax
 movq %rax, %r10
 popq %rax
 cqto
 idivq %r10
 movl %eax, -4(%rbp)
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

 jmp WHILE328
WHILE_END328:
 movslq -8(%rbp), %rax
 movq %rbp, %rsp
 popq %rbp
 ret

 movq $0, %rax
 movq %rbp, %rsp
 popq %rbp
 ret


_get_register_by_size:
 pushq %rbp
 movq %rsp, %rbp
 subq $304, %rsp
 movq %rdi, -8(%rbp)
 movl %esi, -12(%rbp)

 leaq L_.str.77(%rip), %rax
 pushq %rax
 movq %rbp, %rax
 subq $48, %rax
 pushq %rax
 movq $0, %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 leaq L_.str.78(%rip), %rax
 pushq %rax
 movq %rbp, %rax
 subq $48, %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 leaq L_.str.79(%rip), %rax
 pushq %rax
 movq %rbp, %rax
 subq $48, %rax
 pushq %rax
 movq $2, %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 leaq L_.str.80(%rip), %rax
 pushq %rax
 movq %rbp, %rax
 subq $48, %rax
 pushq %rax
 movq $3, %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 leaq L_.str.81(%rip), %rax
 pushq %rax
 movq %rbp, %rax
 subq $80, %rax
 pushq %rax
 movq $0, %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 leaq L_.str.82(%rip), %rax
 pushq %rax
 movq %rbp, %rax
 subq $80, %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 leaq L_.str.83(%rip), %rax
 pushq %rax
 movq %rbp, %rax
 subq $80, %rax
 pushq %rax
 movq $2, %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 leaq L_.str.84(%rip), %rax
 pushq %rax
 movq %rbp, %rax
 subq $80, %rax
 pushq %rax
 movq $3, %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 leaq L_.str.85(%rip), %rax
 pushq %rax
 movq %rbp, %rax
 subq $112, %rax
 pushq %rax
 movq $0, %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 leaq L_.str.86(%rip), %rax
 pushq %rax
 movq %rbp, %rax
 subq $112, %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 leaq L_.str.87(%rip), %rax
 pushq %rax
 movq %rbp, %rax
 subq $112, %rax
 pushq %rax
 movq $2, %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 leaq L_.str.88(%rip), %rax
 pushq %rax
 movq %rbp, %rax
 subq $112, %rax
 pushq %rax
 movq $3, %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 leaq L_.str.89(%rip), %rax
 pushq %rax
 movq %rbp, %rax
 subq $144, %rax
 pushq %rax
 movq $0, %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 leaq L_.str.90(%rip), %rax
 pushq %rax
 movq %rbp, %rax
 subq $144, %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 leaq L_.str.91(%rip), %rax
 pushq %rax
 movq %rbp, %rax
 subq $144, %rax
 pushq %rax
 movq $2, %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 leaq L_.str.92(%rip), %rax
 pushq %rax
 movq %rbp, %rax
 subq $144, %rax
 pushq %rax
 movq $3, %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 leaq L_.str.93(%rip), %rax
 pushq %rax
 movq %rbp, %rax
 subq $176, %rax
 pushq %rax
 movq $0, %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 leaq L_.str.94(%rip), %rax
 pushq %rax
 movq %rbp, %rax
 subq $176, %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 leaq L_.str.95(%rip), %rax
 pushq %rax
 movq %rbp, %rax
 subq $176, %rax
 pushq %rax
 movq $2, %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 leaq L_.str.96(%rip), %rax
 pushq %rax
 movq %rbp, %rax
 subq $176, %rax
 pushq %rax
 movq $3, %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 leaq L_.str.97(%rip), %rax
 pushq %rax
 movq %rbp, %rax
 subq $208, %rax
 pushq %rax
 movq $0, %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 leaq L_.str.98(%rip), %rax
 pushq %rax
 movq %rbp, %rax
 subq $208, %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 leaq L_.str.99(%rip), %rax
 pushq %rax
 movq %rbp, %rax
 subq $208, %rax
 pushq %rax
 movq $2, %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 leaq L_.str.100(%rip), %rax
 pushq %rax
 movq %rbp, %rax
 subq $208, %rax
 pushq %rax
 movq $3, %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 leaq L_.str.101(%rip), %rax
 pushq %rax
 movq %rbp, %rax
 subq $240, %rax
 pushq %rax
 movq $0, %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 leaq L_.str.102(%rip), %rax
 pushq %rax
 movq %rbp, %rax
 subq $240, %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 leaq L_.str.103(%rip), %rax
 pushq %rax
 movq %rbp, %rax
 subq $240, %rax
 pushq %rax
 movq $2, %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 leaq L_.str.104(%rip), %rax
 pushq %rax
 movq %rbp, %rax
 subq $240, %rax
 pushq %rax
 movq $3, %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 leaq L_.str.105(%rip), %rax
 pushq %rax
 movq %rbp, %rax
 subq $272, %rax
 pushq %rax
 movq $0, %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 leaq L_.str.106(%rip), %rax
 pushq %rax
 movq %rbp, %rax
 subq $272, %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 leaq L_.str.107(%rip), %rax
 pushq %rax
 movq %rbp, %rax
 subq $272, %rax
 pushq %rax
 movq $2, %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 leaq L_.str.108(%rip), %rax
 pushq %rax
 movq %rbp, %rax
 subq $272, %rax
 pushq %rax
 movq $3, %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 leaq L_.str.109(%rip), %rax
 pushq %rax
 movq %rbp, %rax
 subq $304, %rax
 pushq %rax
 movq $0, %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 leaq L_.str.110(%rip), %rax
 pushq %rax
 movq %rbp, %rax
 subq $304, %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 leaq L_.str.111(%rip), %rax
 pushq %rax
 movq %rbp, %rax
 subq $304, %rax
 pushq %rax
 movq $2, %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 leaq L_.str.112(%rip), %rax
 pushq %rax
 movq %rbp, %rax
 subq $304, %rax
 pushq %rax
 movq $3, %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 popq %r10
 movq %r10, (%rax)

 movslq -12(%rbp), %rax
 pushq %rax
 popq %rdi
 callq _log2_int
 movl %eax, -12(%rbp)


 movq -8(%rbp), %rax
 pushq %rax
 leaq L_.str.80(%rip), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _strcmp
 cmpq $0, %rax
 setne %al
 xorb $-1, %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE329
 movq %rbp, %rax
 subq $48, %rax
 pushq %rax
 movslq -12(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 movq (%rax), %rax
 movq %rbp, %rsp
 popq %rbp
 ret
 jmp END_IF329
ELSE329:
END_IF329:


 movq -8(%rbp), %rax
 pushq %rax
 leaq L_.str.84(%rip), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _strcmp
 cmpq $0, %rax
 setne %al
 xorb $-1, %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE330
 movq %rbp, %rax
 subq $80, %rax
 pushq %rax
 movslq -12(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 movq (%rax), %rax
 movq %rbp, %rsp
 popq %rbp
 ret
 jmp END_IF330
ELSE330:
END_IF330:


 movq -8(%rbp), %rax
 pushq %rax
 leaq L_.str.88(%rip), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _strcmp
 cmpq $0, %rax
 setne %al
 xorb $-1, %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE331
 movq %rbp, %rax
 subq $112, %rax
 pushq %rax
 movslq -12(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 movq (%rax), %rax
 movq %rbp, %rsp
 popq %rbp
 ret
 jmp END_IF331
ELSE331:
END_IF331:


 movq -8(%rbp), %rax
 pushq %rax
 leaq L_.str.92(%rip), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _strcmp
 cmpq $0, %rax
 setne %al
 xorb $-1, %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE332
 movq %rbp, %rax
 subq $144, %rax
 pushq %rax
 movslq -12(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 movq (%rax), %rax
 movq %rbp, %rsp
 popq %rbp
 ret
 jmp END_IF332
ELSE332:
END_IF332:


 movq -8(%rbp), %rax
 pushq %rax
 leaq L_.str.96(%rip), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _strcmp
 cmpq $0, %rax
 setne %al
 xorb $-1, %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE333
 movq %rbp, %rax
 subq $176, %rax
 pushq %rax
 movslq -12(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 movq (%rax), %rax
 movq %rbp, %rsp
 popq %rbp
 ret
 jmp END_IF333
ELSE333:
END_IF333:


 movq -8(%rbp), %rax
 pushq %rax
 leaq L_.str.100(%rip), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _strcmp
 cmpq $0, %rax
 setne %al
 xorb $-1, %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE334
 movq %rbp, %rax
 subq $208, %rax
 pushq %rax
 movslq -12(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 movq (%rax), %rax
 movq %rbp, %rsp
 popq %rbp
 ret
 jmp END_IF334
ELSE334:
END_IF334:


 movq -8(%rbp), %rax
 pushq %rax
 leaq L_.str.104(%rip), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _strcmp
 cmpq $0, %rax
 setne %al
 xorb $-1, %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE335
 movq %rbp, %rax
 subq $240, %rax
 pushq %rax
 movslq -12(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 movq (%rax), %rax
 movq %rbp, %rsp
 popq %rbp
 ret
 jmp END_IF335
ELSE335:
END_IF335:


 movq -8(%rbp), %rax
 pushq %rax
 leaq L_.str.108(%rip), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _strcmp
 cmpq $0, %rax
 setne %al
 xorb $-1, %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE336
 movq %rbp, %rax
 subq $272, %rax
 pushq %rax
 movslq -12(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 movq (%rax), %rax
 movq %rbp, %rsp
 popq %rbp
 ret
 jmp END_IF336
ELSE336:
END_IF336:


 movq -8(%rbp), %rax
 pushq %rax
 leaq L_.str.112(%rip), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _strcmp
 cmpq $0, %rax
 setne %al
 xorb $-1, %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE337
 movq %rbp, %rax
 subq $304, %rax
 pushq %rax
 movslq -12(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 movq (%rax), %rax
 movq %rbp, %rsp
 popq %rbp
 ret
 jmp END_IF337
ELSE337:
END_IF337:

 movq $0, %rax
 pushq %rax
 popq %rdi
 callq _assert

 movq $0, %rax
 movq %rbp, %rsp
 popq %rbp
 ret


_add_string_lit:
 pushq %rbp
 movq %rsp, %rbp
 subq $32, %rsp
 movq %rdi, -8(%rbp)


 movq $0, %rax
 movl %eax, -12(%rbp)
FOR338:
 movslq -12(%rbp), %rax
 pushq %rax
 movslq _strings_literal_count(%rip), %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setl %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je FOR_END338



 movq -8(%rbp), %rax
 pushq %rax
 movq _strings_literal@GOTPCREL(%rip), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _strcmp
 cmpq $0, %rax
 setne %al
 xorb $-1, %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE339
 movslq -12(%rbp), %rax
 movq %rbp, %rsp
 popq %rbp
 ret
 jmp END_IF339
ELSE339:
END_IF339:

FOR_INC338:
 movslq -12(%rbp), %rax
 pushq %rax
 movslq -12(%rbp), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, -12(%rbp)
 popq %rax
 jmp FOR338
FOR_END338:
 movq -8(%rbp), %rax
 pushq %rax
 movq _strings_literal@GOTPCREL(%rip), %rax
 pushq %rax
 movslq _strings_literal_count(%rip), %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 movslq _strings_literal_count(%rip), %rax
 pushq %rax
 movslq _strings_literal_count(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _strings_literal_count(%rip)
 popq %rax
 movq %rbp, %rsp
 popq %rbp
 ret

 movq $0, %rax
 movq %rbp, %rsp
 popq %rbp
 ret


_gen:
 pushq %rbp
 movq %rsp, %rbp
 subq $288, %rsp
 movq %rdi, -8(%rbp)


 movq -8(%rbp), %rax
 cmpq $0, %rax
 setne %al
 xorb $-1, %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 movq $1, %rax
 jne AND_OR341


 movq -8(%rbp), %rax
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
 movq $0, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR341:
 cmpq $0, %rax
 je ELSE340
 movq %rbp, %rsp
 popq %rbp
 ret
 jmp END_IF340
ELSE340:
END_IF340:



 movq -8(%rbp), %rax
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
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE342



 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $40, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 movq %rax, -16(%rbp)
WHILE343:
 movq -16(%rbp), %rax
 cmpq $0, %rax
 je WHILE_END343


 movq -16(%rbp), %rax
 pushq %rax
 popq %rdi
 callq _gen


 movq -16(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $40, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 movq %rax, -16(%rbp)

 jmp WHILE343
WHILE_END343:

 jmp END_IF342
ELSE342:



 movq -8(%rbp), %rax
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
 movq $14, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE344




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $48, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 cmpq $0, %rax
 setne %al
 xorb $-1, %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE345
 movq %rbp, %rsp
 popq %rbp
 ret
 jmp END_IF345
ELSE345:
END_IF345:






 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 leaq L_.str.113(%rip), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _strcmp
 cmpq $0, %rax
 setne %al
 xorb $-1, %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE346

 movq _f(%rip), %rax
 pushq %rax
 leaq L_.str.114(%rip), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _fprintf
 jmp END_IF346
ELSE346:
END_IF346:

 leaq L_.str.115(%rip), %rax
 pushq %rax





 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $144, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _get_type_str
 pushq %rax




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdx
 popq %rsi
 popq %rdi
 callq _dbg

 movq $0, %rax
 movl %eax, -20(%rbp)
FOR347:
 movslq -20(%rbp), %rax
 pushq %rax


 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $1764, %rax
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
 cmpq %r10, %rax
 setl %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je FOR_END347


 leaq L_.str.116(%rip), %rax
 pushq %rax







 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $960, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movslq -20(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _get_type_str
 pushq %rax






 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $960, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movslq -20(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdx
 popq %rsi
 popq %rdi
 callq _dbg

 movslq -20(%rbp), %rax
 pushq %rax


 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $1764, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 subq %r10, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setl %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE348

 leaq L_.str.117(%rip), %rax
 pushq %rax
 popq %rdi
 callq _dbg
 jmp END_IF348
ELSE348:
END_IF348:

FOR_INC347:
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
 jmp FOR347
FOR_END347:

 leaq L_.str.118(%rip), %rax
 pushq %rax
 popq %rdi
 callq _dbg

 movq _f(%rip), %rax
 pushq %rax
 leaq L_.str.119(%rip), %rax
 pushq %rax




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdx
 popq %rsi
 popq %rdi
 callq _fprintf

 leaq L_.str.120(%rip), %rax
 pushq %rax
 popq %rdi
 callq _out

 leaq L_.str.121(%rip), %rax
 pushq %rax
 popq %rdi
 callq _out



 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $1768, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 movq $16, %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _align
 pushq %rax


 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $1768, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movl %r10d, (%rax)

 leaq L_.str.122(%rip), %rax
 pushq %rax


 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $1768, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _out
 leaq L_.str.92(%rip), %rax
 pushq %rax
 movq %rbp, %rax
 subq $72, %rax
 pushq %rax
 movq $0, %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 leaq L_.str.96(%rip), %rax
 pushq %rax
 movq %rbp, %rax
 subq $72, %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 leaq L_.str.84(%rip), %rax
 pushq %rax
 movq %rbp, %rax
 subq $72, %rax
 pushq %rax
 movq $2, %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 leaq L_.str.88(%rip), %rax
 pushq %rax
 movq %rbp, %rax
 subq $72, %rax
 pushq %rax
 movq $3, %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 leaq L_.str.100(%rip), %rax
 pushq %rax
 movq %rbp, %rax
 subq $72, %rax
 pushq %rax
 movq $4, %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 leaq L_.str.104(%rip), %rax
 pushq %rax
 movq %rbp, %rax
 subq $72, %rax
 pushq %rax
 movq $5, %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 popq %r10
 movq %r10, (%rax)

 movq $0, %rax
 movl %eax, -76(%rbp)
FOR349:
 movslq -76(%rbp), %rax
 pushq %rax


 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $1764, %rax
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
 cmpq %r10, %rax
 setl %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 movq $0, %rax
 je AND_OR350
 movslq -76(%rbp), %rax
 pushq %rax
 movq $6, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setl %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR350:
 cmpq $0, %rax
 je FOR_END349





 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $960, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movslq -76(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 movq %rax, -88(%rbp)

 leaq L_.str.123(%rip), %rax
 pushq %rax





 movq -88(%rbp), %rax
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
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _get_inst_suffix
 pushq %rax

 movq %rbp, %rax
 subq $72, %rax
 pushq %rax
 movslq -76(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 movq (%rax), %rax
 pushq %rax




 movq -88(%rbp), %rax
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
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _get_register_by_size
 pushq %rax


 movq -88(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax


 movq -88(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %r8
 popq %rcx
 popq %rdx
 popq %rsi
 popq %rdi
 callq _out

FOR_INC349:
 movslq -76(%rbp), %rax
 pushq %rax
 movslq -76(%rbp), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, -76(%rbp)
 popq %rax
 jmp FOR349
FOR_END349:



 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $1764, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 movq $6, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setg %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE351







 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $960, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $5, %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, -92(%rbp)
 movq $16, %rax
 movl %eax, -96(%rbp)

 movq $6, %rax
 movl %eax, -100(%rbp)
FOR352:
 movslq -100(%rbp), %rax
 pushq %rax


 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $1764, %rax
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
 cmpq %r10, %rax
 setl %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je FOR_END352


 leaq L_.str.124(%rip), %rax
 pushq %rax
 movslq -96(%rbp), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _out

 leaq L_.str.125(%rip), %rax
 pushq %rax
# 22508 "final.s"
 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $960, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movslq -100(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _get_inst_suffix
 pushq %rax

 leaq L_.str.80(%rip), %rax
 pushq %rax
# 22582 "final.s"
 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $960, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movslq -100(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _get_register_by_size
 pushq %rax






 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $960, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movslq -100(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
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
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $960, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movslq -100(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %r8
 popq %rcx
 popq %rdx
 popq %rsi
 popq %rdi
 callq _out
 movslq -92(%rbp), %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, -92(%rbp)
 movslq -96(%rbp), %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, -96(%rbp)

FOR_INC352:
 movslq -100(%rbp), %rax
 pushq %rax
 movslq -100(%rbp), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, -100(%rbp)
 popq %rax
 jmp FOR352
FOR_END352:

 jmp END_IF351
ELSE351:
END_IF351:



 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $48, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _gen

 leaq L_.str.126(%rip), %rax
 pushq %rax
 popq %rdi
 callq _out

 leaq L_.str.127(%rip), %rax
 pushq %rax
 popq %rdi
 callq _out

 leaq L_.str.128(%rip), %rax
 pushq %rax
 popq %rdi
 callq _out

 leaq L_.str.129(%rip), %rax
 pushq %rax
 popq %rdi
 callq _out

 jmp END_IF344
ELSE344:



 movq -8(%rbp), %rax
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
 movq $11, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE353



 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $96, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 movq %rax, -112(%rbp)

 leaq L_.str.130(%rip), %rax
 pushq %rax




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _dbg
WHILE354:
 movq -112(%rbp), %rax
 cmpq $0, %rax
 je WHILE_END354


 movq -112(%rbp), %rax
 pushq %rax
 popq %rdi
 callq _gen


 movq -112(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $80, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 movq %rax, -112(%rbp)

 jmp WHILE354
WHILE_END354:

 leaq L_.str.131(%rip), %rax
 pushq %rax
 popq %rdi
 callq _dbg

 jmp END_IF353
ELSE353:



 movq -8(%rbp), %rax
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
 movq $17, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE355



 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $88, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 movq %rax, -120(%rbp)
WHILE356:
 movq -120(%rbp), %rax
 cmpq $0, %rax
 je WHILE_END356






 movq -120(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 cmpq $0, %rax
 je ELSE357


 jmp END_IF357
ELSE357:





 movq -120(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 cmpq $0, %rax
 setne %al
 xorb $-1, %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 movq $0, %rax
 je AND_OR359


 movq -120(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR359:
 cmpq $0, %rax
 je ELSE358



 movq -120(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _gen
 jmp END_IF358
ELSE358:
END_IF358:
END_IF357:


 movq -120(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $88, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 movq %rax, -120(%rbp)

 jmp WHILE356
WHILE_END356:

 jmp END_IF355
ELSE355:



 movq -8(%rbp), %rax
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
 movq $7, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE360




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _gen

 leaq L_.str.127(%rip), %rax
 pushq %rax
 popq %rdi
 callq _out

 leaq L_.str.128(%rip), %rax
 pushq %rax
 popq %rdi
 callq _out

 leaq L_.str.132(%rip), %rax
 pushq %rax
 popq %rdi
 callq _out

 jmp END_IF360
ELSE360:



 movq -8(%rbp), %rax
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
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE361

 movslq _curr_label(%rip), %rax
 pushq %rax
 movslq _curr_label(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _curr_label(%rip)
 popq %rax
 movl %eax, -124(%rbp)

 movq _f(%rip), %rax
 pushq %rax
 leaq L_.str.133(%rip), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _fprintf



 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $56, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _gen

 leaq L_.str.134(%rip), %rax
 pushq %rax
 popq %rdi
 callq _out

 leaq L_.str.135(%rip), %rax
 pushq %rax
 movslq -124(%rbp), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _out



 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $48, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _gen

 leaq L_.str.136(%rip), %rax
 pushq %rax
 movslq -124(%rbp), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _out

 movq _f(%rip), %rax
 pushq %rax
 leaq L_.str.137(%rip), %rax
 pushq %rax
 movslq -124(%rbp), %rax
 pushq %rax
 popq %rdx
 popq %rsi
 popq %rdi
 callq _fprintf



 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $128, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 cmpq $0, %rax
 je ELSE362



 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $128, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _gen
 jmp END_IF362
ELSE362:
END_IF362:

 movq _f(%rip), %rax
 pushq %rax
 leaq L_.str.138(%rip), %rax
 pushq %rax
 movslq -124(%rbp), %rax
 pushq %rax
 popq %rdx
 popq %rsi
 popq %rdi
 callq _fprintf

 jmp END_IF361
ELSE361:



 movq -8(%rbp), %rax
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
 movq $9, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE363

 movslq _curr_label(%rip), %rax
 pushq %rax
 movslq _curr_label(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _curr_label(%rip)
 popq %rax
 movl %eax, -128(%rbp)

 movq _f(%rip), %rax
 pushq %rax
 leaq L_.str.139(%rip), %rax
 pushq %rax
 movslq -128(%rbp), %rax
 pushq %rax
 popq %rdx
 popq %rsi
 popq %rdi
 callq _fprintf



 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $56, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _gen

 leaq L_.str.134(%rip), %rax
 pushq %rax
 popq %rdi
 callq _out

 leaq L_.str.140(%rip), %rax
 pushq %rax
 movslq -128(%rbp), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _out
 movslq _loop_counter(%rip), %rax
 pushq %rax
 movslq _loop_counter(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _loop_counter(%rip)
 popq %rax
 movslq _curr_loop_label(%rip), %rax
 movl %eax, -132(%rbp)
 movslq _curr_loop_is_for(%rip), %rax
 movl %eax, -136(%rbp)
 movslq -128(%rbp), %rax
 movl %eax, _curr_loop_label(%rip)
 movq $0, %rax
 movl %eax, _curr_loop_is_for(%rip)



 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $48, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _gen
 movslq -132(%rbp), %rax
 movl %eax, _curr_loop_label(%rip)
 movslq -136(%rbp), %rax
 movl %eax, _curr_loop_is_for(%rip)
 movslq _loop_counter(%rip), %rax
 pushq %rax
 movslq _loop_counter(%rip), %rax
 pushq %rax
 movq $-1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _loop_counter(%rip)
 popq %rax

 leaq L_.str.141(%rip), %rax
 pushq %rax
 movslq -128(%rbp), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _out

 movq _f(%rip), %rax
 pushq %rax
 leaq L_.str.142(%rip), %rax
 pushq %rax
 movslq -128(%rbp), %rax
 pushq %rax
 popq %rdx
 popq %rsi
 popq %rdi
 callq _fprintf

 jmp END_IF363
ELSE363:



 movq -8(%rbp), %rax
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
 movq $10, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE364

 movslq _curr_label(%rip), %rax
 pushq %rax
 movslq _curr_label(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _curr_label(%rip)
 popq %rax
 movl %eax, -140(%rbp)

 movq _f(%rip), %rax
 pushq %rax
 leaq L_.str.143(%rip), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _fprintf



 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $64, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _gen

 movq _f(%rip), %rax
 pushq %rax
 leaq L_.str.144(%rip), %rax
 pushq %rax
 movslq -140(%rbp), %rax
 pushq %rax
 popq %rdx
 popq %rsi
 popq %rdi
 callq _fprintf



 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $56, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 cmpq $0, %rax
 je ELSE365




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $56, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _gen

 leaq L_.str.134(%rip), %rax
 pushq %rax
 popq %rdi
 callq _out

 leaq L_.str.145(%rip), %rax
 pushq %rax
 movslq -140(%rbp), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _out

 jmp END_IF365
ELSE365:
END_IF365:
 movslq _loop_counter(%rip), %rax
 pushq %rax
 movslq _loop_counter(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _loop_counter(%rip)
 popq %rax
 movslq _curr_loop_label(%rip), %rax
 movl %eax, -144(%rbp)
 movslq _curr_loop_is_for(%rip), %rax
 movl %eax, -148(%rbp)
 movslq -140(%rbp), %rax
 movl %eax, _curr_loop_label(%rip)
 movq $1, %rax
 movl %eax, _curr_loop_is_for(%rip)



 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $48, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _gen
 movslq _loop_counter(%rip), %rax
 pushq %rax
 movslq _loop_counter(%rip), %rax
 pushq %rax
 movq $-1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _loop_counter(%rip)
 popq %rax
 movslq -144(%rbp), %rax
 movl %eax, _curr_loop_label(%rip)
 movslq -148(%rbp), %rax
 movl %eax, _curr_loop_is_for(%rip)

 movq _f(%rip), %rax
 pushq %rax
 leaq L_.str.146(%rip), %rax
 pushq %rax
 movslq -140(%rbp), %rax
 pushq %rax
 popq %rdx
 popq %rsi
 popq %rdi
 callq _fprintf



 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $72, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _gen

 leaq L_.str.147(%rip), %rax
 pushq %rax
 movslq -140(%rbp), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _out

 movq _f(%rip), %rax
 pushq %rax
 leaq L_.str.148(%rip), %rax
 pushq %rax
 movslq -140(%rbp), %rax
 pushq %rax
 popq %rdx
 popq %rsi
 popq %rdi
 callq _fprintf

 jmp END_IF364
ELSE364:



 movq -8(%rbp), %rax
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
 movq $3, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE366






 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq $6, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE367

 leaq L_.str.149(%rip), %rax
 pushq %rax




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _out
 jmp END_IF367
ELSE367:

 leaq L_.str.150(%rip), %rax
 pushq %rax




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _out
END_IF367:

 jmp END_IF366
ELSE366:



 movq -8(%rbp), %rax
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
 movq $18, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE368






 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _add_string_lit
 movl %eax, -152(%rbp)

 leaq L_.str.151(%rip), %rax
 pushq %rax
 movslq -152(%rbp), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _out

 jmp END_IF368
ELSE368:



 movq -8(%rbp), %rax
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
 movq $2, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE369






 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq $3, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 movq $1, %rax
 jne AND_OR371




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq $7, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR371:
 cmpq $0, %rax
 je ELSE370






 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 cmpq $0, %rax
 je ELSE372


 leaq L_.str.152(%rip), %rax
 pushq %rax




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _out

 jmp END_IF372
ELSE372:


 leaq L_.str.153(%rip), %rax
 pushq %rax




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _out

 leaq L_.str.154(%rip), %rax
 pushq %rax




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _out

END_IF372:

 jmp END_IF370
ELSE370:





 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE373


 leaq L_.str.155(%rip), %rax
 pushq %rax




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _out

 jmp END_IF373
ELSE373:






 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 cmpq $0, %rax
 je ELSE374






 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 cmpq $0, %rax
 je ELSE375






 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 movq $4, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setl %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE376

 leaq L_.str.156(%rip), %rax
 pushq %rax





 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _get_inst_suffix
 pushq %rax




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rcx
 popq %rdx
 popq %rsi
 popq %rdi
 callq _out
 jmp END_IF376
ELSE376:

 leaq L_.str.157(%rip), %rax
 pushq %rax





 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _get_inst_suffix
 pushq %rax




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax

 leaq L_.str.80(%rip), %rax
 pushq %rax




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _get_register_by_size
 pushq %rax




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %r8
 popq %rcx
 popq %rdx
 popq %rsi
 popq %rdi
 callq _out
END_IF376:

 jmp END_IF375
ELSE375:






 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setl %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE377


 leaq L_.str.158(%rip), %rax
 pushq %rax





 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _get_inst_suffix
 pushq %rax




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdx
 popq %rsi
 popq %rdi
 callq _out

 jmp END_IF377
ELSE377:

 leaq L_.str.159(%rip), %rax
 pushq %rax




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _out
END_IF377:

END_IF375:

 jmp END_IF374
ELSE374:






 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 cmpq $0, %rax
 je ELSE378






 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 movq $4, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setl %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE379

 leaq L_.str.160(%rip), %rax
 pushq %rax





 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _get_inst_suffix
 pushq %rax




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
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
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rcx
 popq %rdx
 popq %rsi
 popq %rdi
 callq _out
 jmp END_IF379
ELSE379:

 leaq L_.str.161(%rip), %rax
 pushq %rax





 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _get_inst_suffix
 pushq %rax




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax

 leaq L_.str.80(%rip), %rax
 pushq %rax




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _get_register_by_size
 pushq %rax




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %r8
 popq %rcx
 popq %rdx
 popq %rsi
 popq %rdi
 callq _out
END_IF379:

 jmp END_IF378
ELSE378:






 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setl %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE380


 leaq L_.str.162(%rip), %rax
 pushq %rax





 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _get_inst_suffix
 pushq %rax




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
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
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rcx
 popq %rdx
 popq %rsi
 popq %rdi
 callq _out

 jmp END_IF380
ELSE380:

 leaq L_.str.163(%rip), %rax
 pushq %rax




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
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
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdx
 popq %rsi
 popq %rdi
 callq _out
END_IF380:

END_IF378:

END_IF374:

END_IF373:
END_IF370:

 jmp END_IF369
ELSE369:



 movq -8(%rbp), %rax
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
 movq $12, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE381







 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 leaq L_.str.53(%rip), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _strcmp
 cmpq $0, %rax
 setne %al
 xorb $-1, %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE382

 movslq _curr_label(%rip), %rax
 pushq %rax
 movslq _curr_label(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _curr_label(%rip)
 popq %rax
 movl %eax, -156(%rbp)




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 movq %rax, -168(%rbp)
WHILE383:

 movq -168(%rbp), %rax
 movsbq (%rax), %rax
 pushq %rax
 movq $10, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setne %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je WHILE_END383
 movq -168(%rbp), %rax
 pushq %rax
 movq -168(%rbp), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 movq %rax, -168(%rbp)
 popq %rax
 jmp WHILE383
WHILE_END383:

 movq _f(%rip), %rax
 pushq %rax
 leaq L_.str.164(%rip), %rax
 pushq %rax

 movq -168(%rbp), %rax
 pushq %rax




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 movq %rax, %r10
 popq %rax
 subq %r10, %rax
 movq $1, %r10
 xorq %rdx, %rdx
 divq %r10
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 pushq %rax




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rcx
 popq %rdx
 popq %rsi
 popq %rdi
 callq _fprintf



 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $160, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $0, %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _gen

 leaq L_.str.165(%rip), %rax
 pushq %rax
 popq %rdi
 callq _out



 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $160, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _gen

 leaq L_.str.166(%rip), %rax
 pushq %rax
 popq %rdi
 callq _out

 leaq L_.str.167(%rip), %rax
 pushq %rax
 movslq -156(%rbp), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _out

 leaq L_.str.168(%rip), %rax
 pushq %rax




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _out

 leaq L_.str.169(%rip), %rax
 pushq %rax




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _out

 leaq L_.str.170(%rip), %rax
 pushq %rax




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _out

 leaq L_.str.171(%rip), %rax
 pushq %rax
 popq %rdi
 callq _out

 movq _f(%rip), %rax
 pushq %rax
 leaq L_.str.172(%rip), %rax
 pushq %rax
 movslq -156(%rbp), %rax
 pushq %rax
 popq %rdx
 popq %rsi
 popq %rdi
 callq _fprintf

 jmp END_IF382
ELSE382:

 leaq L_.str.92(%rip), %rax
 pushq %rax
 movq %rbp, %rax
 subq $216, %rax
 pushq %rax
 movq $0, %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 leaq L_.str.96(%rip), %rax
 pushq %rax
 movq %rbp, %rax
 subq $216, %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 leaq L_.str.84(%rip), %rax
 pushq %rax
 movq %rbp, %rax
 subq $216, %rax
 pushq %rax
 movq $2, %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 leaq L_.str.88(%rip), %rax
 pushq %rax
 movq %rbp, %rax
 subq $216, %rax
 pushq %rax
 movq $3, %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 leaq L_.str.100(%rip), %rax
 pushq %rax
 movq %rbp, %rax
 subq $216, %rax
 pushq %rax
 movq $4, %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 leaq L_.str.104(%rip), %rax
 pushq %rax
 movq %rbp, %rax
 subq $216, %rax
 pushq %rax
 movq $5, %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 popq %r10
 movq %r10, (%rax)

 leaq L_.str.173(%rip), %rax
 pushq %rax




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _dbg

 movq $0, %rax
 movl %eax, -220(%rbp)
FOR384:
 movslq -220(%rbp), %rax
 pushq %rax


 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $1760, %rax
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
 cmpq %r10, %rax
 setl %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 movq $0, %rax
 je AND_OR385
 movslq -220(%rbp), %rax
 pushq %rax
 movq $6, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setl %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR385:
 cmpq $0, %rax
 je FOR_END384




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $160, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movslq -220(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _gen

 leaq L_.str.174(%rip), %rax
 pushq %rax
 popq %rdi
 callq _out

FOR_INC384:
 movslq -220(%rbp), %rax
 pushq %rax
 movslq -220(%rbp), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, -220(%rbp)
 popq %rax
 jmp FOR384
FOR_END384:

 movq $0, %rax
 movl %eax, -224(%rbp)
FOR386:
 movslq -224(%rbp), %rax
 pushq %rax


 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $1760, %rax
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
 cmpq %r10, %rax
 setl %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 movq $0, %rax
 je AND_OR387
 movslq -224(%rbp), %rax
 pushq %rax
 movq $6, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setl %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR387:
 cmpq $0, %rax
 je FOR_END386



 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $1760, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 movl %eax, -228(%rbp)

 movslq -228(%rbp), %rax
 pushq %rax
 movq $6, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setg %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE388
 movq $6, %rax
 movl %eax, -228(%rbp)
 jmp END_IF388
ELSE388:
END_IF388:

 leaq L_.str.175(%rip), %rax
 pushq %rax
 movq %rbp, %rax
 subq $216, %rax
 pushq %rax
 movslq -228(%rbp), %rax
 pushq %rax
 movslq -224(%rbp), %rax
 movq %rax, %r10
 popq %rax
 subq %r10, %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 subq %r10, %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _out

FOR_INC386:
 movslq -224(%rbp), %rax
 pushq %rax
 movslq -224(%rbp), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, -224(%rbp)
 popq %rax
 jmp FOR386
FOR_END386:



 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $1760, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 subq %r10, %rax
 movl %eax, -232(%rbp)
FOR389:
 movslq -232(%rbp), %rax
 pushq %rax
 movq $6, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setge %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je FOR_END389




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $160, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movslq -232(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _gen

 leaq L_.str.174(%rip), %rax
 pushq %rax
 popq %rdi
 callq _out

FOR_INC389:
 movslq -232(%rbp), %rax
 pushq %rax
 movslq -232(%rbp), %rax
 pushq %rax
 movq $-1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, -232(%rbp)
 popq %rax
 jmp FOR389
FOR_END389:

 leaq L_.str.176(%rip), %rax
 pushq %rax




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _out



 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $1760, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 movq $6, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setg %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE390

 leaq L_.str.177(%rip), %rax
 pushq %rax


 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $1760, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 movq $6, %rax
 movq %rax, %r10
 popq %rax
 subq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq %r10, %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _out
 jmp END_IF390
ELSE390:
END_IF390:

END_IF382:

 jmp END_IF381
ELSE381:



 movq -8(%rbp), %rax
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
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE391






 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq $15, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE392






 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _gen

 jmp END_IF392
ELSE392:





 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq $2, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE393
# 26599 "final.s"
 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 cmpq $0, %rax
 je ELSE394


 leaq L_.str.152(%rip), %rax
 pushq %rax






 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _out

 jmp END_IF394
ELSE394:


 leaq L_.str.178(%rip), %rax
 pushq %rax






 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _out

 leaq L_.str.154(%rip), %rax
 pushq %rax






 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _out

END_IF394:

 jmp END_IF393
ELSE393:





 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq $21, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE395





 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax


 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)

 movq -8(%rbp), %rax
 pushq %rax
 popq %rdi
 callq _gen

 jmp END_IF395
ELSE395:

 movq $0, %rax
 pushq %rax
 popq %rdi
 callq _assert
END_IF395:
END_IF393:
END_IF392:

 jmp END_IF391
ELSE391:



 movq -8(%rbp), %rax
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
 movq $15, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE396




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _gen







 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 cmpq $0, %rax
 setne %al
 xorb $-1, %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE397



 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 leaq L_.str.179(%rip), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _error_token
 jmp END_IF397
ELSE397:
END_IF397:





 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq $7, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE398
 jmp END_IF398
ELSE398:





 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setl %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE399

 leaq L_.str.180(%rip), %rax
 pushq %rax





 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _get_inst_suffix
 pushq %rax
 popq %rsi
 popq %rdi
 callq _out
 jmp END_IF399
ELSE399:

 leaq L_.str.181(%rip), %rax
 pushq %rax
 popq %rdi
 callq _out
END_IF399:
END_IF398:

 jmp END_IF396
ELSE396:



 movq -8(%rbp), %rax
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
 movq $6, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE400




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _gen







 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 cmpq $0, %rax
 je ELSE401



 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 leaq L_.str.182(%rip), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _error_token
 jmp END_IF401
ELSE401:
END_IF401:

 leaq L_.str.183(%rip), %rax
 pushq %rax
 popq %rdi
 callq _out

 leaq L_.str.184(%rip), %rax
 pushq %rax
 popq %rdi
 callq _out

 leaq L_.str.185(%rip), %rax
 pushq %rax
 popq %rdi
 callq _out

 jmp END_IF400
ELSE400:



 movq -8(%rbp), %rax
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
 movq $21, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE402


 leaq L_.str.186(%rip), %rax
 pushq %rax



 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _get_type_str
 pushq %rax
 popq %rsi
 popq %rdi
 callq _dbg



 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _gen




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 movq %rax, -240(%rbp)


 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 movq %rax, -248(%rbp)





 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq $3, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE403


 movq $1, %rax
 pushq %rax
 popq %rdi
 callq _new_type
 movq %rax, -248(%rbp)




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax


 movq -248(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)

 jmp END_IF403
ELSE403:
END_IF403:



 movq -240(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 cmpq $0, %rax
 setne %al
 xorb $-1, %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 movq $0, %rax
 je AND_OR405


 movq -248(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 cmpq $0, %rax
 setne %al
 xorb $-1, %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR405:
 cmpq $0, %rax
 je ELSE404




 movq -248(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax


 movq -240(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
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
 cmpq %r10, %rax
 setl %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE406


 leaq L_.str.187(%rip), %rax
 pushq %rax



 movq -248(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _get_inst_suffix
 pushq %rax

 leaq L_.str.80(%rip), %rax
 pushq %rax


 movq -248(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _get_register_by_size
 pushq %rax
 popq %rdx
 popq %rsi
 popq %rdi
 callq _out

 leaq L_.str.185(%rip), %rax
 pushq %rax
 popq %rdi
 callq _out

 jmp END_IF406
ELSE406:
END_IF406:

 jmp END_IF404
ELSE404:



 movq -248(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 cmpq $0, %rax
 je ELSE407


 leaq L_.str.183(%rip), %rax
 pushq %rax
 popq %rdi
 callq _out

 leaq L_.str.188(%rip), %rax
 pushq %rax



 movq -248(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _get_inst_suffix
 pushq %rax

 leaq L_.str.80(%rip), %rax
 pushq %rax


 movq -248(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _get_register_by_size
 pushq %rax

 leaq L_.str.108(%rip), %rax
 pushq %rax


 movq -248(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _get_register_by_size
 pushq %rax
 popq %rcx
 popq %rdx
 popq %rsi
 popq %rdi
 callq _out

 leaq L_.str.185(%rip), %rax
 pushq %rax
 popq %rdi
 callq _out

 jmp END_IF407
ELSE407:




 movq -248(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setl %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE408


 leaq L_.str.183(%rip), %rax
 pushq %rax
 popq %rdi
 callq _out

 leaq L_.str.188(%rip), %rax
 pushq %rax



 movq -248(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _get_inst_suffix
 pushq %rax

 leaq L_.str.80(%rip), %rax
 pushq %rax


 movq -248(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _get_register_by_size
 pushq %rax

 leaq L_.str.108(%rip), %rax
 pushq %rax


 movq -248(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _get_register_by_size
 pushq %rax
 popq %rcx
 popq %rdx
 popq %rsi
 popq %rdi
 callq _out

 leaq L_.str.189(%rip), %rax
 pushq %rax



 movq -248(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _get_inst_suffix
 pushq %rax

 leaq L_.str.108(%rip), %rax
 pushq %rax


 movq -248(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _get_register_by_size
 pushq %rax
 popq %rdx
 popq %rsi
 popq %rdi
 callq _out

 jmp END_IF408
ELSE408:
END_IF408:

END_IF407:
END_IF404:

 jmp END_IF402
ELSE402:



 movq -8(%rbp), %rax
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
 movq $4, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE409




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _gen






 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq $258, %rax
 pushq %rax
 movq $259, %rax
 pushq %rax
 movq $1, %rax
 xorq %r10, %r10
 subq %rax, %r10
 movq %r10, %rax
 pushq %rax
 popq %rcx
 popq %rdx
 popq %rsi
 popq %rdi
 callq _type_match
 cmpq $0, %rax
 je ELSE410

 movslq _curr_label(%rip), %rax
 pushq %rax
 movslq _curr_label(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _curr_label(%rip)
 popq %rax
 movl %eax, -252(%rbp)




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq $258, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 movl %eax, -256(%rbp)

 leaq L_.str.134(%rip), %rax
 pushq %rax
 popq %rdi
 callq _out

 leaq L_.str.190(%rip), %rax
 pushq %rax
 movslq -256(%rbp), %rax
 cmpq $0, %rax
 setne %al
 xorb $-1, %al
 andb $1, %al
 movzbq %al, %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _out

 leaq L_.str.191(%rip), %rax
 pushq %rax
 movslq -256(%rbp), %rax
 cmpq $0, %rax
 je QUES411
 leaq L_.str.192(%rip), %rax
 jmp QUES_END411
QUES411:
 leaq L_.str.193(%rip), %rax
QUES_END411:
 pushq %rax
 movslq -252(%rbp), %rax
 pushq %rax
 popq %rdx
 popq %rsi
 popq %rdi
 callq _out



 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _gen

 leaq L_.str.134(%rip), %rax
 pushq %rax
 popq %rdi
 callq _out

 leaq L_.str.194(%rip), %rax
 pushq %rax
 popq %rdi
 callq _out

 leaq L_.str.195(%rip), %rax
 pushq %rax
 popq %rdi
 callq _out

 movq _f(%rip), %rax
 pushq %rax
 leaq L_.str.196(%rip), %rax
 pushq %rax
 movslq -252(%rbp), %rax
 pushq %rax
 popq %rdx
 popq %rsi
 popq %rdi
 callq _fprintf

 jmp END_IF410
ELSE410:


 leaq L_.str.174(%rip), %rax
 pushq %rax
 popq %rdi
 callq _out



 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _gen

 leaq L_.str.197(%rip), %rax
 pushq %rax
 popq %rdi
 callq _out

 leaq L_.str.198(%rip), %rax
 pushq %rax
 popq %rdi
 callq _out





 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _assert





 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _assert





 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq $43, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 movq $1, %rax
 jne AND_OR413




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq $45, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR413:
 cmpq $0, %rax
 je ELSE412
# 28436 "final.s"
 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 cmpq $0, %rax
 movq $0, %rax
 je AND_OR415






 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 cmpq $0, %rax
 setne %al
 xorb $-1, %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR415:
 cmpq $0, %rax
 je ELSE414

 leaq L_.str.199(%rip), %rax
 pushq %rax
# 28547 "final.s"
 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _out
 jmp END_IF414
ELSE414:







 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 cmpq $0, %rax
 movq $0, %rax
 je AND_OR417






 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 cmpq $0, %rax
 setne %al
 xorb $-1, %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR417:
 cmpq $0, %rax
 movq $0, %rax
 je AND_OR418




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq $43, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR418:
 cmpq $0, %rax
 je ELSE416

 leaq L_.str.200(%rip), %rax
 pushq %rax
# 28770 "final.s"
 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _out
 jmp END_IF416
ELSE416:
END_IF416:
END_IF414:

 jmp END_IF412
ELSE412:
END_IF412:





 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq $43, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE419

 leaq L_.str.201(%rip), %rax
 pushq %rax
 popq %rdi
 callq _out
 jmp END_IF419
ELSE419:





 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq $45, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE420

 leaq L_.str.202(%rip), %rax
 pushq %rax
 popq %rdi
 callq _out
 jmp END_IF420
ELSE420:





 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq $42, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE421

 leaq L_.str.203(%rip), %rax
 pushq %rax
 popq %rdi
 callq _out
 jmp END_IF421
ELSE421:





 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq $47, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 movq $1, %rax
 jne AND_OR423




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq $37, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR423:
 cmpq $0, %rax
 je ELSE422






 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 cmpq $0, %rax
 setne %al
 xorb $-1, %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE424


 leaq L_.str.204(%rip), %rax
 pushq %rax
 popq %rdi
 callq _out

 leaq L_.str.205(%rip), %rax
 pushq %rax
 popq %rdi
 callq _out

 jmp END_IF424
ELSE424:


 leaq L_.str.206(%rip), %rax
 pushq %rax
 popq %rdi
 callq _out

 leaq L_.str.207(%rip), %rax
 pushq %rax
 popq %rdi
 callq _out

END_IF424:





 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq $37, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE425

 leaq L_.str.208(%rip), %rax
 pushq %rax
 popq %rdi
 callq _out
 jmp END_IF425
ELSE425:
END_IF425:

 jmp END_IF422
ELSE422:






 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq $260, %rax
 pushq %rax
 movq $261, %rax
 pushq %rax
 movq $262, %rax
 pushq %rax
 movq $263, %rax
 pushq %rax
 movq $60, %rax
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
 movq $62, %rax
 pushq %rax
 callq _type_match
 addq $16, %rsp
 cmpq $0, %rax
 je ELSE426

 leaq L_.str.192(%rip), %rax
 movq %rax, -264(%rbp)





 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq $260, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE427
 leaq L_.str.209(%rip), %rax
 movq %rax, -264(%rbp)
 jmp END_IF427
ELSE427:





 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq $261, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE428
 leaq L_.str.210(%rip), %rax
 movq %rax, -264(%rbp)
 jmp END_IF428
ELSE428:





 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq $60, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE429
 leaq L_.str.73(%rip), %rax
 movq %rax, -264(%rbp)
 jmp END_IF429
ELSE429:





 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq $62, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE430
 leaq L_.str.211(%rip), %rax
 movq %rax, -264(%rbp)
 jmp END_IF430
ELSE430:





 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq $262, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE431
 leaq L_.str.212(%rip), %rax
 movq %rax, -264(%rbp)
 jmp END_IF431
ELSE431:





 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq $263, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE432
 leaq L_.str.213(%rip), %rax
 movq %rax, -264(%rbp)
 jmp END_IF432
ELSE432:

 movq $0, %rax
 pushq %rax
 popq %rdi
 callq _assert
END_IF432:
END_IF431:
END_IF430:
END_IF429:
END_IF428:
END_IF427:

 leaq L_.str.214(%rip), %rax
 pushq %rax
 popq %rdi
 callq _out

 leaq L_.str.215(%rip), %rax
 pushq %rax
 movq -264(%rbp), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _out

 leaq L_.str.216(%rip), %rax
 pushq %rax
 popq %rdi
 callq _out

 leaq L_.str.195(%rip), %rax
 pushq %rax
 popq %rdi
 callq _out

 jmp END_IF426
ELSE426:
END_IF426:
END_IF422:
END_IF421:
END_IF420:
END_IF419:







 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 cmpq $0, %rax
 movq $0, %rax
 je AND_OR434






 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR434:
 cmpq $0, %rax
 movq $0, %rax
 je AND_OR435




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq $45, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR435:
 cmpq $0, %rax
 je ELSE433


 leaq L_.str.217(%rip), %rax
 pushq %rax
# 29732 "final.s"
 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _out

 leaq L_.str.206(%rip), %rax
 pushq %rax
 popq %rdi
 callq _out

 leaq L_.str.207(%rip), %rax
 pushq %rax
 popq %rdi
 callq _out

 jmp END_IF433
ELSE433:
END_IF433:

END_IF410:

 jmp END_IF409
ELSE409:



 movq -8(%rbp), %rax
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
 movq $5, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE436






 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq $15, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE437




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _gen





 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq $7, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE438


 movq $0, %rax
 pushq %rax
 popq %rdi
 callq _assert

 leaq L_.str.174(%rip), %rax
 pushq %rax
 popq %rdi
 callq _out



 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _gen

 leaq L_.str.218(%rip), %rax
 pushq %rax
 popq %rdi
 callq _out

 leaq L_.str.219(%rip), %rax
 pushq %rax
 popq %rdi
 callq _out

 leaq L_.str.220(%rip), %rax
 pushq %rax




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _out

 leaq L_.str.221(%rip), %rax
 pushq %rax
 popq %rdi
 callq _out

 jmp END_IF438
ELSE438:


 leaq L_.str.174(%rip), %rax
 pushq %rax
 popq %rdi
 callq _out





 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _gen
# 30078 "final.s"
 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 cmpq $0, %rax
 setne %al
 xorb $-1, %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE439



 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 leaq L_.str.179(%rip), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _error_token
 jmp END_IF439
ELSE439:
END_IF439:

 leaq L_.str.222(%rip), %rax
 pushq %rax
 popq %rdi
 callq _out

 leaq L_.str.223(%rip), %rax
 pushq %rax





 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _get_inst_suffix
 pushq %rax

 leaq L_.str.108(%rip), %rax
 pushq %rax




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _get_register_by_size
 pushq %rax
 popq %rdx
 popq %rsi
 popq %rdi
 callq _out

END_IF438:

 jmp END_IF437
ELSE437:





 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq $2, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE440




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _gen






 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq (%rax), %rax
 pushq %rax




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)





 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _assert





 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq $3, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE441



 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 leaq L_.str.224(%rip), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _error_token
 jmp END_IF441
ELSE441:
END_IF441:







 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 cmpq $0, %rax
 je ELSE442






 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq $7, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE443

 movq $0, %rax
 pushq %rax
 popq %rdi
 callq _assert
 jmp END_IF443
ELSE443:
END_IF443:

 leaq L_.str.225(%rip), %rax
 pushq %rax





 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _get_inst_suffix
 pushq %rax

 leaq L_.str.80(%rip), %rax
 pushq %rax




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _get_register_by_size
 pushq %rax






 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rcx
 popq %rdx
 popq %rsi
 popq %rdi
 callq _out

 jmp END_IF442
ELSE442:






 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq $7, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE444


 movq $0, %rax
 pushq %rax
 popq %rdi
 callq _assert

 leaq L_.str.226(%rip), %rax
 pushq %rax
 popq %rdi
 callq _out

 leaq L_.str.227(%rip), %rax
 pushq %rax






 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _out

 leaq L_.str.228(%rip), %rax
 pushq %rax
 popq %rdi
 callq _out

 leaq L_.str.220(%rip), %rax
 pushq %rax
# 30857 "final.s"
 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _out

 leaq L_.str.221(%rip), %rax
 pushq %rax
 popq %rdi
 callq _out

 jmp END_IF444
ELSE444:


 leaq L_.str.229(%rip), %rax
 pushq %rax





 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _get_inst_suffix
 pushq %rax

 leaq L_.str.80(%rip), %rax
 pushq %rax




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $136, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _get_register_by_size
 pushq %rax






 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
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
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %r8
 popq %rcx
 popq %rdx
 popq %rsi
 popq %rdi
 callq _out

END_IF444:

END_IF442:

 jmp END_IF440
ELSE440:

 movq $0, %rax
 pushq %rax
 popq %rdi
 callq _assert
END_IF440:
END_IF437:

 jmp END_IF436
ELSE436:



 movq -8(%rbp), %rax
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
 movq $19, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE445


 movslq _loop_counter(%rip), %rax
 cmpq $0, %rax
 setne %al
 xorb $-1, %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE446



 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 leaq L_.str.230(%rip), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _error_token
 jmp END_IF446
ELSE446:
END_IF446:

 movslq _curr_loop_is_for(%rip), %rax
 cmpq $0, %rax
 je ELSE447

 leaq L_.str.231(%rip), %rax
 pushq %rax
 movslq _curr_loop_label(%rip), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _out
 jmp END_IF447
ELSE447:

 leaq L_.str.141(%rip), %rax
 pushq %rax
 movslq _curr_loop_label(%rip), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _out
END_IF447:

 jmp END_IF445
ELSE445:



 movq -8(%rbp), %rax
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
 movq $20, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE448


 movslq _loop_counter(%rip), %rax
 cmpq $0, %rax
 setne %al
 xorb $-1, %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE449



 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 leaq L_.str.232(%rip), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _error_token
 jmp END_IF449
ELSE449:
END_IF449:

 movslq _curr_loop_is_for(%rip), %rax
 cmpq $0, %rax
 je ELSE450

 leaq L_.str.233(%rip), %rax
 pushq %rax
 movslq _curr_loop_label(%rip), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _out
 jmp END_IF450
ELSE450:

 leaq L_.str.234(%rip), %rax
 pushq %rax
 movslq _curr_loop_label(%rip), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _out
END_IF450:

 jmp END_IF448
ELSE448:



 movq -8(%rbp), %rax
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
 movq $13, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE451




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _gen





 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq $33, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE452


 leaq L_.str.134(%rip), %rax
 pushq %rax
 popq %rdi
 callq _out

 leaq L_.str.194(%rip), %rax
 pushq %rax
 popq %rdi
 callq _out

 leaq L_.str.235(%rip), %rax
 pushq %rax
 popq %rdi
 callq _out

 leaq L_.str.216(%rip), %rax
 pushq %rax
 popq %rdi
 callq _out

 leaq L_.str.195(%rip), %rax
 pushq %rax
 popq %rdi
 callq _out

 jmp END_IF452
ELSE452:





 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq $275, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 movq $1, %rax
 jne AND_OR454




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq $276, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR454:
 cmpq $0, %rax
 je ELSE453


 leaq L_.str.174(%rip), %rax
 pushq %rax
 popq %rdi
 callq _out

 movq $3, %rax
 pushq %rax
 popq %rdi
 callq _new_node
 movq %rax, -272(%rbp)

 movq $256, %rax
 pushq %rax
 popq %rdi
 callq _new_temp_token
 pushq %rax


 movq -272(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)





 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq $275, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je QUES455
 movq $1, %rax
 jmp QUES_END455
QUES455:
 movq $1, %rax
 xorq %r10, %r10
 subq %rax, %r10
 movq %r10, %rax
QUES_END455:
 pushq %rax




 movq -272(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)

 movq $5, %rax
 pushq %rax
 popq %rdi
 callq _new_node
 movq %rax, -280(%rbp)

 movq $61, %rax
 pushq %rax
 popq %rdi
 callq _new_temp_token
 pushq %rax


 movq -280(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)


 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax


 movq -280(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)

 movq $4, %rax
 pushq %rax
 popq %rdi
 callq _new_node
 pushq %rax


 movq -280(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)

 movq $43, %rax
 pushq %rax
 popq %rdi
 callq _new_temp_token
 pushq %rax




 movq -280(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)


 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax




 movq -280(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)
 movq -272(%rbp), %rax
 pushq %rax




 movq -280(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 popq %r10
 movq %r10, (%rax)

 movq -280(%rbp), %rax
 pushq %rax
 popq %rdi
 callq _add_type

 movq -280(%rbp), %rax
 pushq %rax
 popq %rdi
 callq _gen

 leaq L_.str.198(%rip), %rax
 pushq %rax
 popq %rdi
 callq _out

 jmp END_IF453
ELSE453:

 movq $0, %rax
 pushq %rax
 popq %rdi
 callq _assert
END_IF453:
END_IF452:

 jmp END_IF451
ELSE451:



 movq -8(%rbp), %rax
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
 movq $22, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE456

 movslq _curr_label(%rip), %rax
 pushq %rax
 movslq _curr_label(%rip), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _curr_label(%rip)
 popq %rax
 movl %eax, -284(%rbp)



 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $56, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _gen

 leaq L_.str.134(%rip), %rax
 pushq %rax
 popq %rdi
 callq _out

 leaq L_.str.236(%rip), %rax
 pushq %rax
 movslq -284(%rbp), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _out



 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _gen

 leaq L_.str.237(%rip), %rax
 pushq %rax
 movslq -284(%rbp), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _out

 movq _f(%rip), %rax
 pushq %rax
 leaq L_.str.238(%rip), %rax
 pushq %rax
 movslq -284(%rbp), %rax
 pushq %rax
 popq %rdx
 popq %rsi
 popq %rdi
 callq _fprintf



 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _gen

 movq _f(%rip), %rax
 pushq %rax
 leaq L_.str.239(%rip), %rax
 pushq %rax
 movslq -284(%rbp), %rax
 pushq %rax
 popq %rdx
 popq %rsi
 popq %rdi
 callq _fprintf

 jmp END_IF456
ELSE456:

 movq $0, %rax
 pushq %rax
 popq %rdi
 callq _assert
END_IF456:
END_IF451:
END_IF448:
END_IF445:
END_IF436:
END_IF409:
END_IF402:
END_IF400:
END_IF396:
END_IF391:
END_IF381:
END_IF369:
END_IF368:
END_IF366:
END_IF364:
END_IF363:
END_IF361:
END_IF360:
END_IF355:
END_IF353:
END_IF344:
END_IF342:



 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $104, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 cmpq $0, %rax
 je ELSE457



 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $104, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _gen
 jmp END_IF457
ELSE457:
END_IF457:

 movq $0, %rax
 movq %rbp, %rsp
 popq %rbp
 ret


_print:
 pushq %rbp
 movq %rsp, %rbp
 subq $32, %rsp
 movq %rdi, -8(%rbp)

 movslq _tab(%rip), %rax
 pushq %rax
 movq $4, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, _tab(%rip)

 leaq L_.str.240(%rip), %rax
 pushq %rax
 movslq _tab(%rip), %rax
 pushq %rax
 movq $32, %rax
 pushq %rax
 popq %rdx
 popq %rsi
 popq %rdi
 callq _printf

 movq -8(%rbp), %rax
 cmpq $0, %rax
 setne %al
 xorb $-1, %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 movq $1, %rax
 jne AND_OR459


 movq -8(%rbp), %rax
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
 movq $0, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR459:
 cmpq $0, %rax
 je ELSE458

 leaq L_.str.241(%rip), %rax
 pushq %rax
 popq %rdi
 callq _printf
 jmp END_IF458
ELSE458:



 movq -8(%rbp), %rax
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
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE460


 leaq L_.str.242(%rip), %rax
 pushq %rax
 popq %rdi
 callq _printf


 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $40, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 movq %rax, -16(%rbp)
WHILE461:
 movq -16(%rbp), %rax
 cmpq $0, %rax
 je WHILE_END461


 movq -16(%rbp), %rax
 pushq %rax
 popq %rdi
 callq _print


 movq -16(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $40, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 movq %rax, -16(%rbp)

 jmp WHILE461
WHILE_END461:

 jmp END_IF460
ELSE460:



 movq -8(%rbp), %rax
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
 movq $14, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE462


 leaq L_.str.243(%rip), %rax
 pushq %rax




 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _printf

 movq $0, %rax
 movl %eax, -20(%rbp)
FOR463:
 movslq -20(%rbp), %rax
 pushq %rax


 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $1764, %rax
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
 cmpq %r10, %rax
 setl %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je FOR_END463


 leaq L_.str.116(%rip), %rax
 pushq %rax







 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $960, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movslq -20(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _get_type_str
 pushq %rax






 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $960, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movslq -20(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdx
 popq %rsi
 popq %rdi
 callq _printf

 movslq -20(%rbp), %rax
 pushq %rax


 movq -8(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $1764, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 subq %r10, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setl %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE464

 leaq L_.str.117(%rip), %rax
 pushq %rax
 popq %rdi
 callq _printf
 jmp END_IF464
ELSE464:
END_IF464:

FOR_INC463:
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
 jmp FOR463
FOR_END463:

 leaq L_.str.118(%rip), %rax
 pushq %rax
 popq %rdi
 callq _printf

 jmp END_IF462
ELSE462:
END_IF462:
END_IF460:
END_IF458:
 movslq _tab(%rip), %rax
 pushq %rax
 movq $4, %rax
 movq %rax, %r10
 popq %rax
 subq %r10, %rax
 movl %eax, _tab(%rip)

 movq $0, %rax
 movq %rbp, %rsp
 popq %rbp
 ret

.globl _main

_main:
 pushq %rbp
 movq %rsp, %rbp
 subq $48, %rsp

 leaq L_.str.244(%rip), %rax
 movq %rax, _filename(%rip)
 movq $4, %rax
 xorq %r10, %r10
 subq %rax, %r10
 movq %r10, %rax
 movl %eax, _tab(%rip)

 movq $6, %rax
 pushq %rax
 popq %rdi
 callq _new_type
 movq %rax, _type_long(%rip)

 movq $0, %rax
 pushq %rax
 popq %rdi
 callq _new_type
 movq %rax, _type_int(%rip)

 movq $4, %rax
 pushq %rax
 popq %rdi
 callq _new_type
 movq %rax, _type_short(%rip)

 movq $5, %rax
 pushq %rax
 popq %rdi
 callq _new_type
 movq %rax, _type_char(%rip)

 movq $2, %rax
 pushq %rax
 popq %rdi
 callq _new_type
 movq %rax, _type_void(%rip)

 movq _filename(%rip), %rax
 pushq %rax
 popq %rdi
 callq _read_entire_file
 movq %rax, _program_str(%rip)

 movq _program_str(%rip), %rax
 pushq %rax
 popq %rdi
 callq _parse
 movq %rax, -8(%rbp)

 movq _filename(%rip), %rax
 pushq %rax
 popq %rdi
 callq _strdup
 movq %rax, -16(%rbp)

 movq $115, %rax
 movsbq %al, %r10
 movq %r10, %rax
 pushq %rax
 movq -16(%rbp), %rax
 pushq %rax

 movq -16(%rbp), %rax
 pushq %rax
 popq %rdi
 callq _strlen
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 subq %r10, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 popq %r10
 movb %r10b, (%rax)

 movq -16(%rbp), %rax
 pushq %rax
 leaq L_.str.72(%rip), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _fopen
 movq %rax, _f(%rip)

 movq _f(%rip), %rax
 pushq %rax
 popq %rdi
 callq _assert

 leaq L_.str.245(%rip), %rax
 pushq %rax
 popq %rdi
 callq _printf

 movq -8(%rbp), %rax
 pushq %rax
 popq %rdi
 callq _print

 movq -8(%rbp), %rax
 pushq %rax
 popq %rdi
 callq _gen

 leaq L_.str.246(%rip), %rax
 pushq %rax
 popq %rdi
 callq _out

 movq $0, %rax
 movl %eax, -20(%rbp)
FOR465:
 movslq -20(%rbp), %rax
 pushq %rax


 movq _curr_scope(%rip), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $832, %rax
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
 cmpq %r10, %rax
 setl %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je FOR_END465





 movq _curr_scope(%rip), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movslq -20(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $40, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 movq %rax, -32(%rbp)



 movq -32(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 cmpq $0, %rax
 movq $0, %rax
 je AND_OR467






 movq -32(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq $3, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setne %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 setne %al
 movzbq %al, %rax
AND_OR467:
 cmpq $0, %rax
 je ELSE466


 leaq L_.str.247(%rip), %rax
 pushq %rax




 movq -32(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax






 movq -32(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 popq %rdx
 popq %rsi
 popq %rdi
 callq _printf





 movq -32(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 leaq L_.str.248(%rip), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _error_token

 jmp END_IF466
ELSE466:
END_IF466:







 movq -32(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq (%rax), %rax
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
 movq $3, %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 sete %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je ELSE468


 leaq L_.str.249(%rip), %rax
 pushq %rax




 movq -32(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax






 movq -32(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax






 movq -32(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
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
 imulq %r10, %rax
 pushq %rax
 movq $4, %rax
 pushq %rax
 popq %rcx
 popq %rdx
 popq %rsi
 popq %rdi
 callq _out

 jmp END_IF468
ELSE468:


 leaq L_.str.250(%rip), %rax
 pushq %rax




 movq -32(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _out







 movq -32(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
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
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _log2_int
 movl %eax, -36(%rbp)

 movslq -36(%rbp), %rax
 cmpq $0, %rax
 je ELSE469

 leaq L_.str.251(%rip), %rax
 pushq %rax
 movslq -36(%rbp), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _out
 jmp END_IF469
ELSE469:
END_IF469:

 movq _f(%rip), %rax
 pushq %rax
 leaq L_.str.119(%rip), %rax
 pushq %rax




 movq _curr_scope(%rip), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movslq -20(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rdx
 popq %rsi
 popq %rdi
 callq _fprintf

 leaq L_.str.252(%rip), %rax
 pushq %rax







 movq _curr_scope(%rip), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movslq -20(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 movq (%rax), %rax
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
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $28, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movslq (%rax), %rax
 pushq %rax
 popq %rdi
 callq _get_size_name
 pushq %rax


 movq -32(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 cmpq $0, %rax
 setne %al
 xorb $-1, %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je QUES470

 movq $0, %rax
 jmp QUES_END470
QUES470:
# 33367 "final.s"
 movq -32(%rbp), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $24, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $32, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $16, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 pushq %rax
 movq $8, %rax
 movq %rax, %r10
 popq %rax
 imulq $1, %r10
 addq %r10, %rax
 xorq %r10, %r10
 movq %rax, %r10
 movq %r10, %rax
 movq (%rax), %rax
QUES_END470:
 pushq %rax
 popq %rdx
 popq %rsi
 popq %rdi
 callq _out

END_IF468:

FOR_INC465:
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
 jmp FOR465
FOR_END465:

 movq $0, %rax
 movl %eax, -40(%rbp)
FOR471:
 movslq -40(%rbp), %rax
 pushq %rax
 movslq _strings_literal_count(%rip), %rax
 movq %rax, %r10
 popq %rax
 cmpq %r10, %rax
 setl %al
 andb $1, %al
 movzbq %al, %rax
 cmpq $0, %rax
 je FOR_END471


 movq _f(%rip), %rax
 pushq %rax
 leaq L_.str.253(%rip), %rax
 pushq %rax
 movslq -40(%rbp), %rax
 pushq %rax
 popq %rdx
 popq %rsi
 popq %rdi
 callq _fprintf

 leaq L_.str.254(%rip), %rax
 pushq %rax
 movq _strings_literal@GOTPCREL(%rip), %rax
 pushq %rax
 movslq -40(%rbp), %rax
 movq %rax, %r10
 popq %rax
 imulq $8, %r10
 addq %r10, %rax
 movq (%rax), %rax
 pushq %rax
 popq %rsi
 popq %rdi
 callq _out

FOR_INC471:
 movslq -40(%rbp), %rax
 pushq %rax
 movslq -40(%rbp), %rax
 pushq %rax
 movq $1, %rax
 movq %rax, %r10
 popq %rax
 addq %r10, %rax
 movl %eax, -40(%rbp)
 popq %rax
 jmp FOR471
FOR_END471:

 movq $0, %rax
 movq %rbp, %rsp
 popq %rbp
 ret

 .section __DATA,__data
 .globl _filename
 .p2align 3
_filename:
 .quad 0

 .globl _program_str
 .p2align 3
_program_str:
 .quad 0

 .globl _f
 .p2align 3
_f:
 .quad 0

 .comm _types,20560000,4

 .globl _type_count
 .p2align 2
_type_count:
 .long 0

 .comm _types_declared,8000,4

 .globl _types_declared_count
 .p2align 2
_types_declared_count:
 .long 0

 .comm _strings_literal,80000,4

 .globl _strings_literal_count
 .p2align 2
_strings_literal_count:
 .long 0

 .globl _type_long
 .p2align 3
_type_long:
 .quad 0

 .globl _type_int
 .p2align 3
_type_int:
 .quad 0

 .globl _type_short
 .p2align 3
_type_short:
 .quad 0

 .globl _type_char
 .p2align 3
_type_char:
 .quad 0

 .globl _type_void
 .p2align 3
_type_void:
 .quad 0

 .comm _funcs,160000,4

 .globl _func_count
 .p2align 2
_func_count:
 .long 0

 .comm _scopes,84000000,4

 .globl _scope_count
 .p2align 2
_scope_count:
 .long 0

 .globl _curr_scope
 .p2align 3
_curr_scope:
 .quad 0

 .comm _tokens,4000000,4

 .globl _ct
 .p2align 2
_ct:
 .long 0

 .comm __nodes,177600000,4

 .globl __curr_node
 .p2align 2
__curr_node:
 .long 0

 .comm _vars,480000,4

 .globl _var_count
 .p2align 2
_var_count:
 .long 0

 .comm _enums,160000,4

 .globl _enum_count
 .p2align 2
_enum_count:
 .long 0

 .globl _curr_func
 .p2align 3
_curr_func:
 .quad 0

 .comm _multi_char_tokens_type,320,4

 .comm _keywords,480,4

 .comm _token_type_name_c,2040,4

 .globl _multi_char_token_count
 .p2align 2
_multi_char_token_count:
 .long 0

 .globl _keyword_count
 .p2align 2
_keyword_count:
 .long 0

 .globl _curr_label
 .p2align 2
_curr_label:
 .long 0

 .globl _loop_counter
 .p2align 2
_loop_counter:
 .long 0

 .globl _curr_loop_label
 .p2align 2
_curr_loop_label:
 .long 0

 .globl _curr_loop_is_for
 .p2align 2
_curr_loop_is_for:
 .long 0

 .globl _tab
 .p2align 2
_tab:
 .long 0

L_.str.0:
 .asciz "assertion failed\n"
L_.str.1:
 .asciz "int"
L_.str.2:
 .asciz "identifier"
L_.str.3:
 .asciz "string"
L_.str.4:
 .asciz "=="
L_.str.5:
 .asciz "!="
L_.str.6:
 .asciz "<="
L_.str.7:
 .asciz ">="
L_.str.8:
 .asciz "&&"
L_.str.9:
 .asciz "||"
L_.str.10:
 .asciz "++"
L_.str.11:
 .asciz "--"
L_.str.12:
 .asciz "+="
L_.str.13:
 .asciz "-="
L_.str.14:
 .asciz "*="
L_.str.15:
 .asciz "/="
L_.str.16:
 .asciz "->"
L_.str.17:
 .asciz "return"
L_.str.18:
 .asciz "for"
L_.str.19:
 .asciz "while"
L_.str.20:
 .asciz "if"
L_.str.21:
 .asciz "else"
L_.str.22:
 .asciz "void"
L_.str.23:
 .asciz "char"
L_.str.24:
 .asciz "short"
L_.str.25:
 .asciz "long"
L_.str.26:
 .asciz "unsigned"
L_.str.27:
 .asciz "signed"
L_.str.28:
 .asciz "break"
L_.str.29:
 .asciz "continue"
L_.str.30:
 .asciz "sizeof"
L_.str.31:
 .asciz "struct"
L_.str.32:
 .asciz "union"
L_.str.33:
 .asciz "enum"
L_.str.34:
 .asciz "unclosed comment"
L_.str.35:
 .asciz "missing terminating ' character"
L_.str.36:
 .asciz "missing terminating \" character"
L_.str.37:
 .asciz "+-*/%()=;,<>{}&[]?:.!"
L_.str.38:
 .asciz "unknown token `%c`"
L_.str.39:
 .asciz "finished tokenize\n"
L_.str.40:
 .asciz "redeclaration of variable \"%s\"\n"
L_.str.41:
 .asciz "type with size 0?"
L_.str.42:
 .asciz "expected `%s`"
L_.str.43:
 .asciz "struct "
L_.str.44:
 .asciz "*"
L_.str.45:
 .asciz "[]"
L_.str.46:
 .asciz "unknown"
L_.str.47:
 .asciz "invalid operand for '%s' operator"
L_.str.48:
 .asciz "invalid operand for '&'"
L_.str.49:
 .asciz "derefrencing a non-pointer"
L_.str.50:
 .asciz "derefrencing a void pointer"
L_.str.51:
 .asciz "invalid operand for '-'"
L_.str.52:
 .asciz "invalid operands to binary expression ('%s' and '%s')"
L_.str.53:
 .asciz "ASSERT"
L_.str.54:
 .asciz "empty structs are not handled yet"
L_.str.55:
 .asciz "declared struct %s\n"
L_.str.56:
 .asciz "expected a function or variable declaration"
L_.str.57:
 .asciz "unknown type"
L_.str.58:
 .asciz "declared struct '%s': (size=%d)\n"
L_.str.59:
 .asciz "\t%s %s\n"
L_.str.60:
 .asciz "invalid type"
L_.str.61:
 .asciz "parse function %s\n"
L_.str.62:
 .asciz "variable type can't be void"
L_.str.63:
 .asciz "invalid initiliazer"
L_.str.64:
 .asciz "expression is not assignable"
L_.str.65:
 .asciz "expected struct pointer"
L_.str.66:
 .asciz "expected struct type"
L_.str.67:
 .asciz "undeclared struct member"
L_.str.68:
 .asciz "undeclared function \"%s\""
L_.str.69:
 .asciz "undeclared variable `%s`\n"
L_.str.70:
 .asciz "expected an expression"
L_.str.71:
 .asciz "b"
L_.str.72:
 .asciz "w"
L_.str.73:
 .asciz "l"
L_.str.74:
 .asciz "q"
L_.str.75:
 .asciz "byte"
L_.str.76:
 .asciz "quad"
L_.str.77:
 .asciz "al"
L_.str.78:
 .asciz "ax"
L_.str.79:
 .asciz "eax"
L_.str.80:
 .asciz "rax"
L_.str.81:
 .asciz "dh"
L_.str.82:
 .asciz "dx"
L_.str.83:
 .asciz "edx"
L_.str.84:
 .asciz "rdx"
L_.str.85:
 .asciz "ch"
L_.str.86:
 .asciz "cx"
L_.str.87:
 .asciz "ecx"
L_.str.88:
 .asciz "rcx"
L_.str.89:
 .asciz "dil"
L_.str.90:
 .asciz "di"
L_.str.91:
 .asciz "edi"
L_.str.92:
 .asciz "rdi"
L_.str.93:
 .asciz "sil"
L_.str.94:
 .asciz "si"
L_.str.95:
 .asciz "esi"
L_.str.96:
 .asciz "rsi"
L_.str.97:
 .asciz "r8b"
L_.str.98:
 .asciz "r8w"
L_.str.99:
 .asciz "r8d"
L_.str.100:
 .asciz "r8"
L_.str.101:
 .asciz "r9b"
L_.str.102:
 .asciz "r9w"
L_.str.103:
 .asciz "r9d"
L_.str.104:
 .asciz "r9"
L_.str.105:
 .asciz "r10b"
L_.str.106:
 .asciz "r10w"
L_.str.107:
 .asciz "r10d"
L_.str.108:
 .asciz "r10"
L_.str.109:
 .asciz "r11b"
L_.str.110:
 .asciz "r11w"
L_.str.111:
 .asciz "r11d"
L_.str.112:
 .asciz "r11"
L_.str.113:
 .asciz "main"
L_.str.114:
 .asciz ".globl\t_main\n"
L_.str.115:
 .asciz "//%s %s("
L_.str.116:
 .asciz "%s %s"
L_.str.117:
 .asciz ", "
L_.str.118:
 .asciz ")\n"
L_.str.119:
 .asciz "_%s:\n"
L_.str.120:
 .asciz "pushq %%rbp"
L_.str.121:
 .asciz "movq %%rsp, %%rbp"
L_.str.122:
 .asciz "subq $%d, %%rsp"
L_.str.123:
 .asciz "mov%s %%%s, -%d(%%rbp) //%s"
L_.str.124:
 .asciz "movq %d(%%rbp), %%rax"
L_.str.125:
 .asciz "mov%s %%%s, -%d(%%rbp) // %s"
L_.str.126:
 .asciz "movq $0, %%rax"
L_.str.127:
 .asciz "movq %%rbp, %%rsp"
L_.str.128:
 .asciz "popq %%rbp"
L_.str.129:
 .asciz "ret\n"
L_.str.130:
 .asciz "//{ (%d)\n"
L_.str.131:
 .asciz "//}\n"
L_.str.132:
 .asciz "ret"
L_.str.133:
 .asciz "//if begin\n"
L_.str.134:
 .asciz "cmpq $0, %%rax"
L_.str.135:
 .asciz "je ELSE%d"
L_.str.136:
 .asciz "jmp END_IF%d"
L_.str.137:
 .asciz "ELSE%d:\n"
L_.str.138:
 .asciz "END_IF%d:\n"
L_.str.139:
 .asciz "WHILE%d:\n"
L_.str.140:
 .asciz "je WHILE_END%d"
L_.str.141:
 .asciz "jmp WHILE%d"
L_.str.142:
 .asciz "WHILE_END%d:\n"
L_.str.143:
 .asciz "//for init\n"
L_.str.144:
 .asciz "FOR%d:\n"
L_.str.145:
 .asciz "je FOR_END%d"
L_.str.146:
 .asciz "FOR_INC%d:\n"
L_.str.147:
 .asciz "jmp FOR%d"
L_.str.148:
 .asciz "FOR_END%d:\n"
L_.str.149:
 .asciz "movabsq $%lld, %%rax"
L_.str.150:
 .asciz "movq $%lld, %%rax"
L_.str.151:
 .asciz "leaq L_.str.%d(%%rip), %%rax"
L_.str.152:
 .asciz "movq _%s@GOTPCREL(%%rip), %%rax"
L_.str.153:
 .asciz "movq %%rbp, %%rax // %s"
L_.str.154:
 .asciz "subq $%d, %%rax"
L_.str.155:
 .asciz "leaq _%s(%%rip), %%rax"
L_.str.156:
 .asciz "movz%sq _%s(%%rip), %%rax // %s"
L_.str.157:
 .asciz "mov%s _%s(%%rip), %%%s // %s"
L_.str.158:
 .asciz "movs%sq _%s(%%rip), %%rax"
L_.str.159:
 .asciz "movq _%s(%%rip), %%rax"
L_.str.160:
 .asciz "movz%sq -%d(%%rbp), %%rax // %s"
L_.str.161:
 .asciz "mov%s -%d(%%rbp), %%%s // %s"
L_.str.162:
 .asciz "movs%sq -%d(%%rbp), %%rax // %s"
L_.str.163:
 .asciz "movq -%d(%%rbp), %%rax // %s"
L_.str.164:
 .asciz "//%.*s"
L_.str.165:
 .asciz "movq %%rax, %%r12"
L_.str.166:
 .asciz "cmpq %%r12, %%rax"
L_.str.167:
 .asciz "je ASSERT_OK%d"
L_.str.168:
 .asciz "movq $%d, %%rdi"
L_.str.169:
 .asciz "movq %%r12, %%rsi"
L_.str.170:
 .asciz "movq %%rax, %%rdx"
L_.str.171:
 .asciz "callq _error"
L_.str.172:
 .asciz "ASSERT_OK%d:\n"
L_.str.173:
 .asciz "//call %s\n"
L_.str.174:
 .asciz "pushq %%rax"
L_.str.175:
 .asciz "popq %%%s"
L_.str.176:
 .asciz "callq _%s"
L_.str.177:
 .asciz "addq $%d, %%rsp"
L_.str.178:
 .asciz "movq %%rbp, %%rax // &%s"
L_.str.179:
 .asciz "dereferencing a non-pointer lvalue"
L_.str.180:
 .asciz "movs%sq (%%rax), %%rax"
L_.str.181:
 .asciz "movq (%%rax), %%rax"
L_.str.182:
 .asciz "negating a pointer"
L_.str.183:
 .asciz "xorq %%r10, %%r10"
L_.str.184:
 .asciz "subq %%rax, %%r10"
L_.str.185:
 .asciz "movq %%r10, %%rax"
L_.str.186:
 .asciz "//cast to (%s)\n"
L_.str.187:
 .asciz "movs%sq %%%s, %%r10"
L_.str.188:
 .asciz "mov%s %%%s, %%%s"
L_.str.189:
 .asciz "movs%sq %%%s, %%rax"
L_.str.190:
 .asciz "movq $%d, %%rax"
L_.str.191:
 .asciz "j%se AND_OR%d"
L_.str.192:
 .asciz ""
L_.str.193:
 .asciz "n"
L_.str.194:
 .asciz "setne %%al"
L_.str.195:
 .asciz "movzbq %%al, %%rax"
L_.str.196:
 .asciz "AND_OR%d:\n"
L_.str.197:
 .asciz "movq %%rax, %%r10"
L_.str.198:
 .asciz "popq %%rax"
L_.str.199:
 .asciz "imulq $%d, %%r10"
L_.str.200:
 .asciz "imulq $%d, %%rax"
L_.str.201:
 .asciz "addq %%r10, %%rax"
L_.str.202:
 .asciz "subq %%r10, %%rax"
L_.str.203:
 .asciz "imulq %%r10, %%rax"
L_.str.204:
 .asciz "cqto"
L_.str.205:
 .asciz "idivq %%r10"
L_.str.206:
 .asciz "xorq %%rdx, %%rdx"
L_.str.207:
 .asciz "divq %%r10"
L_.str.208:
 .asciz "movq %%rdx, %%rax"
L_.str.209:
 .asciz "e"
L_.str.210:
 .asciz "ne"
L_.str.211:
 .asciz "g"
L_.str.212:
 .asciz "le"
L_.str.213:
 .asciz "ge"
L_.str.214:
 .asciz "cmpq %%r10, %%rax"
L_.str.215:
 .asciz "set%s %%al"
L_.str.216:
 .asciz "andb $1, %%al"
L_.str.217:
 .asciz "movq $%d, %%r10"
L_.str.218:
 .asciz "popq %%rsi"
L_.str.219:
 .asciz "movq %%rax, %%rdi"
L_.str.220:
 .asciz "movq $%d, %%rdx"
L_.str.221:
 .asciz "callq _memcpy"
L_.str.222:
 .asciz "popq %%r10"
L_.str.223:
 .asciz "mov%s %%%s, (%%rax)"
L_.str.224:
 .asciz "array is constant"
L_.str.225:
 .asciz "mov%s %%%s, _%s(%%rip)"
L_.str.226:
 .asciz "movq %%rbp, %%rdi"
L_.str.227:
 .asciz "subq $%d, %%rdi"
L_.str.228:
 .asciz "movq %%rax, %%rsi"
L_.str.229:
 .asciz "mov%s %%%s, -%d(%%rbp) // %s = rax"
L_.str.230:
 .asciz "'continue' statement not in loop statement"
L_.str.231:
 .asciz "jmp FOR_INC%d"
L_.str.232:
 .asciz "'break' statement not in loop statement"
L_.str.233:
 .asciz "jmp FOR_END%d"
L_.str.234:
 .asciz "jmp WHILE_END%d"
L_.str.235:
 .asciz "xorb $-1, %%al"
L_.str.236:
 .asciz "je QUES%d"
L_.str.237:
 .asciz "jmp QUES_END%d"
L_.str.238:
 .asciz "QUES%d:\n"
L_.str.239:
 .asciz "QUES_END%d:\n"
L_.str.240:
 .asciz "%*ctype: "
L_.str.241:
 .asciz "none\n"
L_.str.242:
 .asciz "program\n"
L_.str.243:
 .asciz "function definition %s("
L_.str.244:
 .asciz "in3.c"
L_.str.245:
 .asciz "finished parsing\n"
L_.str.246:
 .asciz ".section	__DATA,__data"
L_.str.247:
 .asciz "error name: %s %c\n"
L_.str.248:
 .asciz "todo: evaluate constant expressions\n"
L_.str.249:
 .asciz ".comm _%s,%d,%d\n"
L_.str.250:
 .asciz ".globl _%s"
L_.str.251:
 .asciz ".p2align %d"
L_.str.252:
 .asciz ".%s %d\n"
L_.str.253:
 .asciz "L_.str.%d:\n"
L_.str.254:
 .asciz ".asciz \"%s\""
