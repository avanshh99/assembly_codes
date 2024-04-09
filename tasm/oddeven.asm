Assume ds:data, cs:code
Data segment
   num db 12h,35h,43h,98h,20h,24h
   
data ends
Code segment
start:
        mov ax,data
        mov ds,ax
        lea si,num
        mov bl,0   ;for even
        mov dl,0  ; for odd
        mov cl,6
    again: 
            mov al,[si]
            and al, 01h
            jz evenn
            inc dl
            jmp next
        evenn: 
            inc bl
            next: 
            inc si
            loop again
            int 03h
code ends
end start
        