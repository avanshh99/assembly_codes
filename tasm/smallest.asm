Assume ds:data, cs:code
Data segment
        array db 27h,12h,65h,02h,33h,50h
        min db 00h
Data ends       
Code segment
start:
        mov ax,data
        mov ds,ax
        xor di,di
        mov cl ,06h
        lea bx,array
        mov al,00h
    back: cmp al,[bx + di]
        jc skip
        mov al,[bx+di]
        skip: inc di
              dec cl
              jnz back
              mov min,al
int 03h
code ends
end start
        
        