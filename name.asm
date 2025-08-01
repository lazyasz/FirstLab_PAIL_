global _start

section .data
    first db "Dhruv", 10
    len1 equ $ - first

    last db "Sakhare", 10
    len2 equ $ - last

section .text
_start:
    mov eax, 4
    mov ebx, 1
    mov ecx, first
    mov edx, len1
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, last
    mov edx, len2
    int 0x80

    xor ebx, ebx
    mov eax, 1
    int 0x80

