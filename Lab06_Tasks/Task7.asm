.MODEL SMALL
.STACK 100h
.DATA
.CODE

MAIN PROC
    mov ah,1
    int 21h
    
    mov al,'0'
    
    cmp al,b
     


    MOV AH, 4CH
    INT 21h

MAIN ENDP
END MAIN
