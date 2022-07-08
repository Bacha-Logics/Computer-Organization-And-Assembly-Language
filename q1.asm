org 0x100

jmp start

num:dw 0
start:

	mov ax,0
	mov cx,20
l1:
   add ax,20
   sub cx,1
jnz l1

   mov [num],ax
mov ax,0x4c00
int 0x21
	