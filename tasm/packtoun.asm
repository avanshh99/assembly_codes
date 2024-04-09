Assume ds:data, cs:code
Data segment
    num db 35h
data ends
Code segment
start:
        mov ax,data
        mov ds,ax
        
        mov al,num
        and al,0f0h ;for most signi bit
        rcr al,4
        mov bh,al
        
        mov al,num
        and al,0fh ;for least signi bit
        mov bl,al
        
        int 03h
code ends
end start