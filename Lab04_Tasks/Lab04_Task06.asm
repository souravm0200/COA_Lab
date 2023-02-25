.model small
.stack 100h

.data  

input_buffer db 12, ?, 13, 10, '$'
input_msg db 0dh, 0ah, 'Enter your password: $'
matched_msg db 0dh, 0ah, 'Password Matched $'
not_matched_msg db 0dh, 0ah, 'Password Not Matched $'
password db 'mypassword$'

.code
main proc  
     
    mov ax, @data
    mov ds, ax

    ; display input message
    mov ah, 09h
    lea dx, input_msg
    int 21h

    ; read input from user
    mov ah, 0ah
    lea dx, input_buffer
    int 21h

    ; check if input matches password
    mov si, offset password
    mov di, offset input_buffer + 2 ; skip over length byte and carriage return character
    mov cx, 10 ; length of password
    repeat:
        mov al, [si]
        cmp al, [di]
        jne not_matched
        inc si
        inc di
        loop repeat
    ; password matched
    mov ah, 09h
    lea dx, matched_msg
    int 21h
    jmp exit

not_matched:
    ; password not matched
    mov ah, 09h
    lea dx, not_matched_msg
    int 21h

exit:
    mov ah, 4ch
    int 21h
main endp


    ;input_buffer db 12, ?, 13, 10, '$' ; max input length is 10, followed by carriage return and line feed
end main
