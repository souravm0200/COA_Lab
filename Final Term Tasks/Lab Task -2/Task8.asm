.model small
.stack 100h
.data
    msg db 'enter a char: $'
.code
main proc
    mov ax, @data
    mov ds, ax


    mov al, 2 
    cmp al, 2
    jle else
    cmp al, 9
    jge else
    

    mov ah, 9
    lea dx, msg
    int 21h
    
    mov ah, 1
    int 21h
    mov dl, al
    mov ah, 2
    int 21h
    
    jmp exit
    
else:

    mov ah, 1
    int 21h

    cmp al, 'a'
    jl printN
    cmp al, 'z'
    jg uppercase
    jmp printC

uppercase:
    cmp al, 'a'
    jl printN
    cmp al, 'z'
    jg printN
    jmp printC
    
printC:
    ; print 'c'
    mov ah, 02h
    mov dl, 'c'
    int 21h
    
    jmp exit
    
printN:
    ; print 'n'
    mov ah, 02h
    mov dl, 'n'
    int 21h
    
exit:
    mov ah, 4ch
    int 21h

    
    main endp
end main
