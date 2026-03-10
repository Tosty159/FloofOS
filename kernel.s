org 0x1000

mov si, 0

print:
	mov ah, 0x0E
	mov al, [msg + si]
	int 0x10

	add si, 1

	cmp byte [msg + si], 0
	jne print


msg:
	db "Hello, World!", 0

jmp $
