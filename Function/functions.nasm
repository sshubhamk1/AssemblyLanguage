; This program calls different functions
; functions.nasm
; Author: Shubham Kumar

global _start

section .text

display1:
	mov eax, 0x4
	mov ebx, 0x1
	mov ecx, var1
	mov edx, len1
	int 0x80
	ret
display2:
	mov eax, 0x4
	mov ebx, 0x1
	mov ecx, var2
	mov edx, len2
	int 0x80
	ret

_start:
	call display1
	call display2
	call display1
	call display2
	mov eax, 0x1
	mov ebx, 0x5
	int 0x80

section .data

	var1: db "This is message1", 0x0A, 0x00
	len1 equ $-var1
	var2: db "This is message2", 0x0A, 0x00
	len2 equ $-var2
