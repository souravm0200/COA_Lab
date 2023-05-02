.model small
.stack 100h
.data
    input db ?
    msg db 'enter a number: $'
.code

main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 9
    lea dx, msg
    int 21h
        
    mov ah, 1
    int 21h
    mov input, al 
    test input, 1
    jz then 
    
    
    mov ah, 2
    mov dl, 'o'
    int 21h
    jmp exit
then:
    mov ah, 2
    mov dl, 'e'
    int 21h

exit:
    mov ah, 4ch
    int 21h 
    
    main endp
end main
