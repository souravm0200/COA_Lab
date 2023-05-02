.model small
.stack 100h
.data

.code

main proc

    mov ax, 1
    or ax, 1
    and ax, 0
    xor ax, 1
    mov ah, 4ch
    int 21h 
    
    main endp
end main
