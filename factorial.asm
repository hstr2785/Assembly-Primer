extern printf
extern scanf

section .data
        fmt: db "%d", 0
        out: db "Factorial is %d",10,0
        ou:db "%d",10,0
section .text
        global main
  
        main:
 
        push ebp
        mov ebp,esp
        sub esp, 0x10

        lea eax, [ebp-0x4]
        push eax
        push fmt
        call scanf

        mov ebx, dword [ebp-0x4]
        push ebx
        push ou
        call printf
        
        mov ecx,1
        mov ebx,0
        L1:
          add ebx,1
          mov edx, dword [ebp-0x4]
          imul ecx,ebx
          cmp ebx,edx 
          jl L1
        push ecx
        push out
        call printf
        
leave
        
ret
        

        
        
