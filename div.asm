section .data
    num1 db 40
    num2 db 5
    quotient db 0
    remainder db 0

section .text
global _start
_start:
    mov al, [num1]
    mov bl, [num2]
    xor ah, ah
    div bl

    mov ah, 0
    mov bl, 10
    div bl
    add al, '0'
    mov [quotient], al
    mov al, ah
    add al, '0'
    mov [quotient+1], al

    mov ah, 0
    mov al, [remainder]
    div bl
    add al, '0'
    mov [remainder], al

    mov eax, 4
    mov ebx, 1
    mov ecx, quotient
    mov edx, 2
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, remainder
    mov edx, 1
    int 0x80

    mov eax, 1
    xor ebx, ebx
    int 0x80
