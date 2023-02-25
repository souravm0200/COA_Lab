; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h   
.Model SMALL
.STACK 100H
.DATA 
        
    SUM DB ?

.CODE
MAIN PROC
   MOV AX,@DATA
   MOV DS,AX
     
   MOV AH,1
   INT 21H         
   MOV BL,AL
   
   MOV AH,1
   INT 21H
   MOV CL,AL
   
   ADD BL,CL 
   SUB BL,48
   MOV SUM,BL  
   
   
   MOV AH,2
   MOV DL,SUM
   INT 21H
   
    
END MAIN

ret




