.model small
.stack 100h
.data
    input db ?
    msg db 'enter a char: $'
.code

main proc
    mov ax, @data
    mov ds, ax
    
start:
    mov ah, 9
    lea dx, msg
    int 21h
        
    mov ah, 1
    int 21h
    mov input, al 
    
    cmp input, 0dh 
    je end
    
    mov ah, 2 
    mov dl, input 
    int 21h 
    
    jmp start

end:
    mov ah, 4ch 
    int 21h 
    
    main endp
end main
