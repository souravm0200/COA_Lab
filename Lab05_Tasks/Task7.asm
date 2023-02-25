.MODEL SMALL
.STACK 100h
.DATA
.CODE

MAIN PROC

    MOV AL, '3' 
   
    CMP AL, 'I'
    JE DISP_O
   
    CMP AL, '3'
    JE DISP_O
   
    CMP AL, '2'
    JE DISP_e
   
    CMP AL, '4'
    JE DISP_e
    
    
    JMP END_IF       ; Else

DISP_O:

    MOV AH, 2
    MOV DL, 'o'
    INT 21h
    JMP END_IF

DISP_e:

    MOV AH, 2
    MOV DL, 'e'
    INT 21h

END_IF:

    MOV AH, 4CH
    INT 21h

MAIN ENDP
END MAIN
