global _start
 
 section .data
 hello db "Hello, World!", 10
 hello_len equ $ - hello
 
 section .text
 _start:
 mov eax, 3
 mov ebx, 0
 mov ecx, hello
 mov edx, 32
 int 0x80
 
 mov eax, 4
 mov ebx, 1
 mov ecx, hello
 mov edx, hello_len
 int 0x80
 
 mov eax, 1
 xor ebx, ebx
 int 0x80
