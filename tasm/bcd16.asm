Assume ds:data, cs:code
Data segment
        num1 db 23h,87h
        num2 db 34h,67h
        num3 db 00h,00h
Data ends       
Code segment
start:  
        mov ax,data
        mov ds,ax
        mov al,num1
        mov bl,num2
        add al,bl
        daa
        mov num3,al
        
        mov al,num1+1
        mov bl,num2+1
        adc al,bl
        daa
        mov num3+1,al
        int 03h
code ends
end start
        