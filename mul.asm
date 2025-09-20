section .data
    num1 db 6
    num2 db 7
    result db 0

section .text
global _start
_start:
    mov al, [num1]
    mov bl, [num2]
    mul bl         ; unsigned multiply: AX = AL * BL
    mov [result], al   ; low 8-bit result

    mov eax, 1
    xor ebx, ebx
    int 0x80

