.model small
.stack 100h
.data
.code

main proc 
    mov ah, 01h 
    int 21h     
    cmp al, 'A' 
    je carriage   
    cmp al, 'B' 
    je line 
    jmp dos
    
lineFeed: 
        mov ah, 02h 
        mov dl, 0ah 
        int 21h     
        jmp dos      
carriageReturn: 
        mov ah, 02h 
        mov dl, 0dh 
        int 21h     
        jmp dos  
  dos: 
        mov ah, 4ch 
        int 21h     
main endp
end main
