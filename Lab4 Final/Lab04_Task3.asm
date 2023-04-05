org 100h

start:
  ; prompt the user to enter a binary number
  mov ah, 9
  mov dx, offset prompt
  int 21h

  ; read the binary number from standard input
  mov si, offset binary
  mov cx, 16  ; maximum 16 digits
read_digit:
  mov ah, 1   ; set AH to 1 to read a character from standard input
  int 21h     ; read a character from standard input
  cmp al, 0Dh ; compare the character to a carriage return
  je convert  ; if the character is a carriage return, convert the binary number to hex
  cmp al, '0' ; check if the character is a binary digit of '0'
  jb error    ; if the character is less than '0', it's an illegal character
  cmp al, '1' ; check if the character is a binary digit of '1'
  ja error    ; if the character is greater than '1', it's an illegal character
  mov [si], al ; store the binary digit in memory
  inc si      ; move the pointer to the next memory location
  loop read_digit ; repeat the process for the next digit

convert:
  ; convert the binary number to hex using bit-shifting operation
  mov cx, 4   ; 4 bits make 1 hex digit
  mov bx, 0   ; set BX to 0 to accumulate the hex value
next_digit:
  mov al, [binary] ; move the first binary digit to AL
  shr al, cl      ; shift the bits to the right by the number of bits per hex digit
  and al, 0Fh     ; mask the bits to get the hex value
  cmp al, 0Ah     ; check if the hex value is greater than 9
  jl hex_digit    ; if it's less than or equal to 9, it's a valid hex digit
  add al, 7h      ; if it's greater than 9, add 7 to get the ASCII code for A-F
hex_digit:
  add bl, al      ; add the hex value to BX
  shl bl, cl      ; shift the bits to the left by the number of bits per hex digit
  add [hex], bl   ; add BX to the hex value in memory
  mov bl, 0       ; reset BX to 0
  add si, 1       ; move the pointer to the next binary digit
  loop next_digit ; repeat the process for the next hex digit

  ; output the hex value to standard output
  mov ah, 9
  mov dx, offset hex_output
  int 21h

  ; exit the program
  mov ah, 4Ch
  int 21h

error:
  ; display an error message and prompt the user to start again
  mov ah, 9
  mov dx, offset error_msg
  int 21h
  jmp start

; data section
binary db 16 dup(0)
hex db 8 dup(0)
prompt db 'Enter a binary number of 16 digits or less:', 0Dh, 0Ah, '$'
error_msg db 'Error: illegal character entered. Please try again.', 0Dh, 0Ah, '$'
hex_output db 'The hexadecimal equivalent is:', 0Dh, 0Ah, '$'
