.MODEL SMALL
.STACK 100h
.DATA
.CODE

MAIN PROC

    MOV DL, 'F'

    CMP DL, 'A'
    JL END_IF
    CMP DL, 'Z'
    JG END_IF

    
    MOV AH, 2        ; If true
    MOV DL, DL
    INT 21h

END_IF: 

    MOV AH, 4CH
    INT 21h

MAIN ENDP
END MAIN
