Assume ds:data, cs:code
Data segment
    l1 db 23h,4h,45h,46h,37h,28h,73h,18h,23h
    l2 db 0,0,0,0,0,0,0,0,0
    count db 9h
data ends
Code segment
start:     
        mov ax,data
        mov ds,ax
        lea si,l1
        lea di,l2
        mov cl,count
        again:
                 mov al,[si]
                 mov [di],al
                 inc si
                 inc di
                 loop again 
                 int 03h
code ends
end start
                 
        