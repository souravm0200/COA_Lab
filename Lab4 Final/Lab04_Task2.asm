org 100h

start:
  mov ah, 1      ; set AH to 1 to read a character from standard input
  int 21h        ; read a character from standard input
  cmp al, 0Dh    ; compare the character to a carriage return
  je exit        ; if the character is a carriage return, exit the program
  mov ah, 2      ; set AH to 2 to print a character to standard output
  mov dl, al     ; move the character to DL to print it
  int 21h        ; print the character to standard output
  mov ah, 2      ; set AH to 2 to print a newline to standard output
  mov dl, 0Ah    ; move the ASCII code for a newline to DL to print it
  int 21h        ; print the newline to standard output
  mov ah, 2      ; set AH to 2 to print the ASCII code in hex to standard output
  mov dl, al     ; move the ASCII code to DL to print it
  mov bl, dl     ; move the ASCII code to BL to preserve it
  shr bl, 4      ; shift BL right by 4 to get the high nibble
  call print_hex ; print the high nibble
  mov dl, bl     ; move BL back to DL
  call print_hex ; print the low nibble
  mov ah, 2      ; set AH to 2 to print a newline to standard output
  mov dl, 0Ah    ; move the ASCII code for a newline to DL to print it
  int 21h        ; print the newline to standard output
  jmp start      ; repeat the process

exit:
  mov ah, 4Ch    ; set AH to 4Ch to exit the program
  int 21h        ; exit the program

print_hex:
  push bx        ; save BX on the stack
  push ax        ; save AX on the stack
  mov bh, 0      ; set BH to 0 for leading zero suppression
  mov bl, dl     ; move DL to BL to work with it
  and bl, 0Fh    ; mask off the high nibble
  cmp bl, 0Ah    ; compare the low nibble to 10
  jb hex_digit   ; if the low nibble is less than 10, jump to hex_digit
  add bl, 7h     ; otherwise, add 7 to the low nibble to get the ASCII code for A-F
hex_digit:
  add bl, 30h    ; add 30h to the low nibble to get the ASCII code for 0-9 or A-F
  mov dl, bl     ; move the ASCII code to DL to print it
  mov ah, 2      ; set AH to 2 to print the ASCII code to standard output
  int 21h        ; print the ASCII code to standard output
  pop ax         ; restore AX from the stack
  pop bx         ; restore BX from the stack
  ret            ; return from the procedure
