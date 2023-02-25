; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h   
.Model SMALL
.STACK 100H
.DATA 
    A DB 2
    B DB 3    
    SUM DB ?

.CODE
MAIN PROC
   MOV AX,@DATA
   MOV DS,AX
              
   MOV AL,A
   MOV BL,B
   ADD AL,BL 
   MOV SUM,AL 
   ADD SUM,48
   
   MOV AH,2
   MOV DL,SUM
   INT 21H
   
    
END MAIN

ret




