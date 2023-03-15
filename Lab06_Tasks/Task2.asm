.MODEL SMALL
.STACK 100H
.DATA 

.CODE
MAIN PROC 
    
    mov ah,2
    mov dx,'4'
    int 21h 
    
    
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah ;new line
    int 21h
    
    mov ah,2
    mov dx,'3'
    int 21h
    
    mov ah,4CH
    int 21h
    MAIN endp
end MAIN 
    