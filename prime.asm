extern printf
extern scanf

section .data
        it: db "%d", 0
        out: db "Prime Number ",10,0
        outp: db "Not Prime %d",10,0
        ou:db "%d",10,0
section .text
        global main
  
        main:
 
        push ebp
        mov ebp,esp
        sub esp, 0x10

        lea eax, [ebp-0x4]
        push eax
        push it
        call scanf
          
        mov ebx,0
        mov ecx,2
        Loop:
            mov edx,0
            mov eax, dword [ebp-0x4]
            div ecx
            cmp edx,0
            je addnum
            add ecx,1
            cmp ecx, dword [ebp-0x4]
            jl Loop
            cmp ebx,1
            je print
        print:
             push out
             call printf
        addnum:
              add ebx,1
 
leave
ret
            

