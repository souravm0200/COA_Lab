.model small
.stack 100h
.data
    value db 6 
.code
main proc

    mov ax , @data
    mov ds , ax

    mov ah, 0ah 
    mov dx, offset value
    int 21h 
exit:
    mov ah, 4ch 
    int 21h 

main endp
