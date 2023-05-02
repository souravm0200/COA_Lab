.model small
.stack 100h
.data
.code

main proc   

    mov ax, 0001h

    shr ax, 1
    mov ah, 4ch
    int 21h 
    main endp
end main
