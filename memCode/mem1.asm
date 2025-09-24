section .data
num1 dq 5
num2 dq 20
result dq 0

section .text
    global _start
_start:
    mov rax, [rel num1]
    add rax, [rel num2]
    mov [rel result], rax

    mov rax, 60
    xor rdi, rdi
    syscall
