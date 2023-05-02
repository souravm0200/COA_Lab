.model small
.stack 100h
.data
.code

main proc    
    mov al, 'a'   
    cmp al, 'A'
    jle then     
    mov cl, '5'
    jmp print_data 
    jmp exit   
then:  
    mov cl, '6'
    jmp print_data
    jmp exit     
print_data:    
    mov ah, 02h 
    add dl, cl
    int 21h        
exit:
    mov ah,4ch 
    int 21h
    main endp
end main
