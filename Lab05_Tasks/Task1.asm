.MODEL SMALL
.STACK 100h
.DATA

.CODE


MAIN PROC 
     
    MOV AL, 5
    CMP AL, 0
    
    JG THEN
    JMP Exit

    THEN:  
    
    MOV BX, -1

Exit: 

MOV AH,4CH
INT 21h


  MAIN ENDP 
END MAIN
