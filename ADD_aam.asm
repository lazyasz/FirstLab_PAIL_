global _start

section .data
     val:db 0
     val:db 0

section .text
     _start:
     mov al, 73
     mov bl, 25
     add al, bl
     aam
     add al, '0'
     mov [val], ah

     mov eax, 4
     mov ebx, 1
     mov ecx, vah
     mov edx, 1
     int 80h

     mov eax, 4
     mov ebx, 1
     mov ecx, val
     mov edx, 1
     int 80h

     mov eax, 1
     int 80h
