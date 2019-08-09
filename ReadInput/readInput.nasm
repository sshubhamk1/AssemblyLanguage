;	This program reads an Integer from the user and displays it on the screen
;	readInput.nasm
;	Author: Shubham Kumar


global _start

section .text

	; This takes data and its length from the user at _start function
display:
	mov eax, 0x4
	mov ebx, 0x1
	int 0x80
	ret
	

_start:
	mov ecx, message
	mov edx, mlen
	call display
	
	mov eax, 0x3
	mov ebx, 0x1
	mov ecx, var1
	mov edx, 0x1
	int 0x80
	
	mov ecx, var1
	mov edx, 0x1
	call display

	mov eax, 0x1
	mov ebx, 0x4
	int 0x80

section .data

	message: db "Enter a number: ", 0x00
	mlen equ $-message

section .bss
	var1 resb 1
