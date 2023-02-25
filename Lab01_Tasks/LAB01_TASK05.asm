
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h   
.Model SMALL
.STACK 100H
.DATA  

.CODE
MAIN PROC
    MOV AL,'A'
    ADD AL,32
     
    MOV BL,'a'
    SUB BL,32
      
    MOV AH,2
    MOV DL,AL
    INT 21H
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    
END MAIN

ret




