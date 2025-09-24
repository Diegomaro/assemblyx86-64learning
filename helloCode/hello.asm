section .data
    msg db "Hello, world!", 10
    len equ $ - msg

section .text
    global _start
_start:
    mov rax, 1        ; write syscall
    mov rdi, 1        ; stdout
    mov rsi, msg      ; buffer
    mov rdx, len      ; length
    syscall

    mov rax, 60       ; exit syscall
    xor rdi, rdi
    syscall