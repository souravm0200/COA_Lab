.model small
.stack 100h
.data
    msg1 db 0dh, 0ah, 'enter a char input: $'  
                                               
    msg2 db 0dh, 0ah, 'Binary : $'
    
    msg3 db 0dh, 0ah,  'number of 1 bits: $' 
    
    msg4 db 0 
    
.code

main proc
    mov ax, @data
    mov ds, ax

 
    mov ah, 9
    mov dx, offset msg1
    int 21h
    
    mov ah, 1
    int 21h
    mov bl, al 
  
    lea ah, 9
    mov dx, offset msg2
    int 21h

    mov cx, 8 
    
print:
    shl bl, 1 
    jc insert 
    
   
    mov dl, '0'
    jmp print_char
    
insert:
   
    mov dl, '1'
    inc msg4 
    
print_char:
    mov ah, 2
    int 21h
    
   
    dec cx
    jnz print
    mov dl, 0ah
    mov ah, 2
    int 21h

    mov ah, 9
    mov dx, offset msg3
    int 21h

    mov dl , msg4
    add dl, '0'

  
    mov ah, 2
    int 21h
    
exit:
    mov ah,4ch
    int 21h

    main endp
end main
