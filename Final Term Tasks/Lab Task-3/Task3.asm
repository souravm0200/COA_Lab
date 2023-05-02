.model small
.stack 100h
.data

.code

main proc

    mov al , 4h ; convert in hex 4h='0000 0100'
    mov bl , 14h ; convert in hex 14h='0001 0100'

    or al , bl ; do or logic '0001 0100'

    mov ah, 02h
    mov dl, al
    int 21h
    mov ah, 4ch
    int 21h 
    
    main endp
end main
