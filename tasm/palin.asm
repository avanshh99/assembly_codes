Assume ds:data, cs:code
Data segment
        msg1 db "messi$"
        msg2 db "It is a palindrome$"
        msg3 db "Not a palindrome $"
        count dw 7h
Data ends       
Code segment
disp proc near
mov ah, 09h
int 21h 
ret 
disp endp
start:
      mov ax,data
      mov ds,ax
      mov cx,count
      lea si,msg1
      lea di,msg1
      add di,cx
      dec di
      again: mov al,[si]
             cmp [di],al
            jnz notfound
            inc si
            dec di
            Loop again
            
            lea dx,msg2
            call disp
            jmp exit
            
      notfound:
            lea dx,msg3
            call disp
            
            
      exit :
            mov ax,4C00H
            int 21h
            int 03h
            
     code ends
     end start
            