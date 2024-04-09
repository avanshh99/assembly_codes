Assume ds:data, cs:code
Data segment
    n1 db 23h,76h
    n2 dw 1278h, 2388h
    n3 dw 00h
    n4 dw 0000h
data ends
Code segment
start:
        mov ax,data
        mov ds,ax
        mov al,n1
        mov bl,n1+1
        mul bl
       
        mov n3,ax
        
        mov ax,n2
        mov bx,n2+2
        mul bx
 
        mov n4,ax
        mov n4+2,dx
        int 03h
code ends
end start
        