BITS 64
default rel

section .data
num1 dq 5, 6, 7 ,8 ,9
count equ 5
result dq 0

section .text
    global _start
_start:
    xor rax, rax
    xor rcx, rcx
.loop:
    cmp rcx, count
    je .done
    mov rbx, [rel num1 + rcx*8]
    add rax, rbx
    inc rcx
    jmp .loop
.done:
    mov [rel result], rax
    mov rax, 60
    xor rdi, rdi
    syscall