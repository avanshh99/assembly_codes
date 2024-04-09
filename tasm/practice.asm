Assume ds:data, cs:code
Data segment
    n1 db 23h
data ends
Code segment
start:
        mov ax,data
        mov ds,ax
        mov al,n1
        neg al
        int 03h
code ends
end start
        