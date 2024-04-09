Assume ds:data, cs:code
Data segment
    dividend dw 1000h   ; Dividend (16-bit integer)
    divisor dw 100h     ; Divisor (16-bit integer)
    quotient dw ?       ; Quotient (16-bit integer)
Data ends

Code segment
start:
    mov ax, data   ; Load the address of the data segment into AX
    mov ds, ax     ; Set the data segment register DS to the value in AX
    
    ; Perform division
    mov ax, dividend   ; Load dividend into AX
    xor dx, dx         ; Clear DX (for 16-bit division)
    mov bx, divisor    ; Load divisor into BX
    div bx             ; Divide AX by BX (quotient in AX, remainder in DX)
    mov quotient, ax   ; Store the quotient
    
    ; Display the quotient
    mov dx, offset msg    ; Load address of the message
    mov ah, 09h           ; DOS print string function
    int 21h               ; Display the message
    
    mov ax, quotient      ; Load the quotient into AX
    add ax, '0'           ; Convert quotient to ASCII
    mov dl, ah            ; Move quotient to DL for display
    mov ah, 02h           ; DOS display character function
    int 21h               ; Display the quotient
    
    ; Terminate the program
    mov ax, 4C00h         ; DOS terminate program function
    int 21h               ; Terminate the program

msg db "Quotient: $"
Code ends
End start
