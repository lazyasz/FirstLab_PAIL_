section .data
val db 0, 0

section .text
global _start
_start:
    mov al, 73
    mov bl, 25
    add al, bl

    mov ah, 0
    mov bl, 10
    div bl
    add al, '0'
    mov [val], al
    add ah, '0'
    mov [val+1], ah

    mov eax, 4
    mov ebx, 1
    mov ecx, val
    mov edx, 2
    int 0x80

    mov eax, 1
    xor ebx, ebx
    int 0x80
