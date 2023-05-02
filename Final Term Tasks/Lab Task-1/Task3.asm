.model small
.stack 100h
.data
.code

main proc 
    mov ax, 40
    mov bx, 20
    mov cx, 30
    
    ; compare ax and bx
    cmp ax, bx
    je then     ; jump to then if ax = bx
    jg else     ; jump to else if ax > bx
    
    ; else, compare bx and cx
    cmp bx, cx
    je again     ; jump to again if bx = cx
    jg else     ; jump to else if bx > cx
    
    ; else, set cx to 0
    mov cx, 0
    jmp exit

then:
    ; set ax to 0
    mov ax, 0
    jmp exit

again:
    ; set bx to 0
    mov bx, 0
    jmp exit

else
    ; set cx to 0
    mov cx, 0

exit: 
    ; exit program
    mov ah, 4ch 
    int 21h     
main endp
end main
