
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.model small
.stack 100h
.data
msg DB 0ah,0dh,'Simple Message$'

.code

main proc
    mov ax,@data
    mov ds,ax
    
    lea dx,msg ;for call multiple string[LEA: Load effective address]
    mov ah,9   ; for print multiple data
    int 21h
    
    mov ah,4ch 
    int 21h
    main endp 

end main
    

ret




