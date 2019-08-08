; swapping variables without using xchg instructions
; swap_values.nasm



global _start

section .text

_start:
	; displaying var1
	mov eax , 0x4
	mov ebx , 0x1
	mov ecx , var1
	mov edx , len1
	int 0x80
	
	; displaying var2
	mov eax , 0x4
	mov ebx , 0x1
	mov ecx , var2
	mov edx , len2
	int 0x80

	mov eax, [var1]
	mov ebx, [var2]
	mov [var2] , eax
	mov [var1] , ebx
	
	
	; displaying var1
        mov eax , 0x4
        mov ebx , 0x1
        mov ecx , var1
        mov edx , len1
        int 0x80

        ; displaying var2
        mov eax , 0x4
        mov ebx , 0x1
        mov ecx , var2 
        mov edx , len2
        int 0x80

	mov eax , 0x1
	mov ebx , 0x8
	int 0x80


section .data
	var1: db "This", 0x0A, 0x00
	len1 equ $-var1
	var2: db "That", 0x0A, 0x00
	len2 equ $-var2
