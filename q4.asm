org 0x100

jmp start

arr: dw 1,2,3,4,5,6

start:
 mov bx,arr
 mov ax,[bx]
 mov cx,12
 mov si,10

l1:
	mov ax,[bx+si]
	sub si,2
sub cx,2
jnz l1

mov ax,0x4c00
int 0x21