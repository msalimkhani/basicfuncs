section .text
global main
extern mymain
exit:
    mov rdx, rax
    mov rax, 60
    mov rdi, rdx
    syscall
    ret
main:
    call mymain
    call exit