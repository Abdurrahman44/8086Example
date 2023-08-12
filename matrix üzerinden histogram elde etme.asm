/*Burada 8086 code kullanarak bir matrix islemi sağlar.
Abdurrahman Gökta
goktasabdurrahman44@gmail.com
!!kullanılması istenirse bu kısmın silinmesi lazım!! 
*/


.MODEL SMALL

.DATA  

 x  db 1,2,3,2 , 3,3,2,1 , 2,1,3,2    ; 1:3 2:5 3:4
 lz equ $-x
 lx equ 3
 ly equ 4
 
 H db 3 dup(0)
 
.CODE

Main PROC Far 
    
    mov ax , @data
    mov ds , ax  
    
    
    
    mov ax , 0
    mov si , 0
    
    mov cx , lx
    
    L0: 
    push cx
    
    mov cx , ly
    L:
        mov al , x[si]
        cmp al , 1
        je CNT1
    
        cmp al , 2 
        je CNT2
    
        cmp al , 3 
        je CNT3
        
        D:
        inc si
         
    loop L 
    
    pop cx
    
    loop L0
    
   
    
    
    HLT
main endp


CNT1:
inc H[0]
jmp D

CNT2:
inc H[1]  
jmp D


CNT3:
inc H[2]
jmp D  
