.model small
.stack 100h

.data 
msg1 db 'enter a character: $' 

msg2 db 0dh, 0ah, 'want again y/n: $'  

msg3 db 0dh, 0ah, 'Invalid .$' 

msg4 db 0dh, 0ah, '$'

.code

main proc
    mov ax, @data
    mov ds, ax

 do_this_again:
    
    lea dx, msg4
    mov ah, 9
    int 21h
    lea dx, msg1
    mov ah, 9
    int 21h


    mov ah, 1
    int 21h
    mov bl, al

    lea dx, msg4
    mov ah, 9
    int 21h
    mov dl, bl
    mov ah, 2
    int 21h

    lea dx, msg2
    mov ah, 9
    int 21h

    mov ah, 1
    int 21h
    cmp al, 'Y'
    je do_this_again
    cmp al, 'Y'
    je do_this_again

    cmp al, 'N'
    je exit
    cmp al, 'N'
    je exit

    lea dx, msg3
    mov ah, 9
    int 21h
    jmp do_this_again
    
exit:
    mov ah, 4ch
    int 21h

    main endp
end main