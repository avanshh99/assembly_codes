Assume ds:data, cs:code
Data segment
       msg db "Technical avan xdxd $"
Data ends       
Code segment
start:
    mov ax, data
    mov ds, ax          ; Load data segment into DS

    lea dx, msg         ; Load effective address of msg into DX
    mov ah, 09h         ; Function to print string

    int 21h             ; DOS interrupt to print string

    mov ax, 4C00h       ; Exit program with code 0
    int 21h
code ends
end start