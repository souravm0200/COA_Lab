; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h   
.Model SMALL
.STACK 100H
.DATA  

.CODE
MAIN PROC
    MOV AL,2
    MOV BL,3
    ADD AL,BL
    ADD AL,48
      
    MOV AH,2
    MOV DL,AL 
    INT 21H
    
END MAIN

ret




