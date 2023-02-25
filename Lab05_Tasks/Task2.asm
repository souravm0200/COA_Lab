.MODEL SMALL
.STACK 100h
.DATA

.CODE

MAIN PROC
    MOV AL, 5  
    CMP AL, 0
    JL THEN
    MOV AH, 0     ; else
    JMP Exit

    
    THEN:        ;if true
    MOV AH, 0xFFh

Exit:
MOV AH,4CH
INT 21h


MAIN ENDP
END MAIN
