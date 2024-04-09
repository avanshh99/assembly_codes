Assume ds:data, cs:code
Data segment
   num db 39h
   msg1 db "even number$"
   msg2 db "odd num$"
data ends
Code segment
start:
        mov ax,data
        mov ds,ax
        mov al,num
        and al, 01h
        
        jnz odd
        jmp evenn
        
        
        odd : mov dx, offset msg2
                jmp exit
        
        evenn:  mov dx, offset msg1
            jmp exit
              
        exit:
               mov ah,09h
               int 21h
               mov ax, 4C00H
               int 21h
        

code ends
end start