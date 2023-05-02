.model small
.stack 100h
.data
.code

main proc
    mov dx, 5

    mov ah ,01h
    int 21h 
    
    and al, 0fh
    mov cl, al
    shl dx, cl
    mov ah, 2h
    int 21h

    mov ah, 4ch
    int 21h    
    main endp
end main
