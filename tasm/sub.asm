Assume ds:data, cs:code
Data segment
        num1 db 35h
        num2 db 27h
        num3 db 00h
Data ends       
Code segment
start:
        mov ax,data
        mov ds,ax
        mov al,num1
        mov bl,num2
        sub al,bl
        mov num3,al
        int 03h
 code ends
end start