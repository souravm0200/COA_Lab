.model small
.stack 100h
.data
    msg1 db 0dh, 0ah, 'enter a char input: $'
    
    msg2 db 0dh, 0ah, 'hexa : $' 
    
.code

main proc
    mov ax, @data
    mov ds, ax

first_loop:

    mov ah, 9
    mov dx, offset msg1
    int 21h


    mov ah, 1
    int 21h

    xor ah, ah
    mov bx, ax

 
    cmp bl, 0dh
    je exit

    mov ah, 9
    mov dx, offset msg2
    int 21h

show_hex_number:

    mov cx,4

    mov ax,bx

 convert:
        jcxz  first_loop

        rol ax,4
        
        mov dl,al
    
        and dl,0xf

        add dl,'0'
        cmp dl,'9'

        jbe print
    
        add dl,7 
        
print:            
        push ax
        mov ah,2
        int 21h
        pop ax
        loop convert
        jmp first_loop
        
        mov ah, 4ch
        int 21h

    main endp
end main
