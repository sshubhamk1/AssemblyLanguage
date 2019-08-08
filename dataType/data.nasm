; data.nasm
; to see different type of data types


global _start

section .text

_start:

	mov eax, 0x4
	mov ebx, 0x1
	mov ecx, message
	mov edx, mlen
	int 0x80
	
	mov eax, 0x1
	mov ebx, 0xf
	int 0x80

section .data
	message: db "Hello World"
	mlen equ $-message
	var1: db 0x12
	var2: db 0x12, 0x13, 0x14
	var3: dw 0x65
	var4: dw 0x65, 0x66
	var5: db 0x61, 0x62, 0x63, 0x64
