bits 16
org 0x7C00

mov si, 0

print:
	mov ah, 0x0e
	mov al, [msg + si]
	int 0x10

	add si, 1

	cmp byte [msg + si], 0
	jne print

msg:
	db "Hello, World!", 0

jmp $

times 510-($$-$) db 0
dw 0xAA55
