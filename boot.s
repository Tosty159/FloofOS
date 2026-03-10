bits 16
org 0x7C00

load_kernel:
	mov ah, 0x02	; Read sectors from drive
	mov al, 4	; Number of sectors
	mov ch, 0	; Cylinder
	mov cl, 2	; Kernel starts at sector 2
	mov dh, 0	; Head
	mov dl, 0	; Drive
	mov bx, 0x1000	; Address to load
	int 0x13

jmp 0x0000:0x1000

times 510-($$-$) db 0
dw 0xAA55
