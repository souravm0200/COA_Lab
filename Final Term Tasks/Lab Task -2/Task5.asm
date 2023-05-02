.model small
.stack 100h
.data
    char db ?
   msgt db 'enter a char: $'
.code

main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 9
    lea dx,msgt
    int 21h
        
    mov ah, 1
    int 21h
    mov char, al 
    
    mov cx, 30
    mov bx, 0
print:
    mov ah, 2
    mov dl, char
    int 21h
    inc bx
    
    cmp bx, 10
    jne again
    
    mov ah, 2
    mov dl, 0dh
    int 21h
    mov dl, 0ah
    int 21h
    mov bx, 0
again:
    loop print 
exit:    
    mov ah, 4ch
    int 21h 
    
main endp
end main
