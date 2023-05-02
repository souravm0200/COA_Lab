.model small
.stack 100h
.data
    char db ? 
    msg db 'Input a char: $'
.code

main proc

    mov ax, @data
    mov ds, ax
    
    mov ah, 9
    lea dx, msg
    int 21h
        
    mov ah, 1
    int 21h
    mov char, al 
    
    mov cx, 30 
Print:
    mov ah, 2 
    mov dl, char 
    int 21h 
    loop Print 
    
exit:    
    mov ah, 4ch 
    int 21h 
    
    main endp
end main
