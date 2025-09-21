section .data
array db '1','2','3','4'
n db 4
sum db 0

section .text
global _start

_start:
    mov esi, array
    mov cl, [n]
    xor ax, ax

loop_start:
    lodsb
    sub al, '0'
    add al, bl
    aaa
    loop loop_start

    add al, '0'
    mov [sum], al

    mov eax, 1
    xor ebx, ebx
    int 0x80

