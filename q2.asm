[org 0x0100]

jmp start

data : dw 47, 11, 51


myfun:

    push bp
    mov bp,sp

    mov ax, [data+si]
    
    mov bl,10
    div bl

    add al,ah

    mov [data+si], al

    add si,2

ret 



findNum:
            mov ax, [bx]    
            mov cx, 15

    max_l1:   cmp ax, [bx]     
                jge max_l2     
                mov ax, [bx]     
    max_l2:
                add bx, 2        
                loop max_l1


    ret

 start:     

    mov si,0
    push si

    call myfun

    
    mov bx, data     
    mov cx, 3
    call findNum

    mov ax, 0x4c00
    int 0x21

    
