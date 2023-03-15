.MODEL SMALL
.STACK 100h
.DATA

 
.CODE


MAIN PROC  
    
    mov ah,2 
    mov dl,'5'
    int 21h
 

  MAIN ENDP 
END MAIN
