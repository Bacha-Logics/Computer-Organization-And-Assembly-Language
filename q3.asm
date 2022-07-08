[org 0x0100]

jmp start
num : dw 0

add2_fun:

    add ax, [bp+4]
    add dx, ax

    mov [num], dx

    ret


add1_fun:
    push bp 
    mov bp, sp
    
    add ax,bx
    add dx,bx
    

    push dx

    call add2_fun

    ret 6


start:

    mov ax, 12
    mov bx, 12

    push ax
    push bx

    call add1_fun

	pop dx
	pop bx
	pop ax
    
mov ax, 0x4c00
int 0x21