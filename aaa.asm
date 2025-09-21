section .data
array db '1','2','3','4'
n db 4
aaaa db 0

section .bss
buffer resb 3

section .text
global _start
_start:
    mov esi, array
    mov cl, [n]
    xor bl, bl

loop_start:
    lodsb
    sub al, '0'
    add bl, al
    loop loop_start

    mov [aaaa], bl

    mov al, [aaaa]
    mov bl, 10
    xor ah, ah
    div bl
    add al, '0'
    mov [buffer], al
    add ah, '0'
    mov [buffer+1], ah

    mov eax, 4
    mov ebx, 1
    mov ecx, buffer
    mov edx, 2
    int 0x80

    mov eax, 1
    xor ebx, ebx
    int 0x80
