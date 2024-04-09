Assume ds:data, cs:code
Data segment
   num dw 0110101100101010b
data ends
Code segment
start:
        mov ax,data
        mov ds,ax
        mov si,0     ;initialize to 0 and its for 0
        mov di,0    ;initialize to 0 and its for 1
        mov cx,16
        again: 
                shr num,1
                jc one
                inc si
                jmp next
                
        one: 
                inc di
                
                next: loop again ; here cx is decremented and looped untill cx=0
                
                int 03h
code ends
end start
                