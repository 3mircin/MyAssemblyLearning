section .text
    global mayor
    ;rdi = a
    ;rsi = b
    ;rdx = c

mayor:
    cmp rdi, rsi
    jl .byc
    cmp rdi, rdx
    jl .ctrax 
    jmp .atrax
    .byc:
        cmp rsi, rdx
        jl .ctrax
        jmp .btrax 
    .atrax:
        mov rax, rsi
        ret
    .btrax:
        mov rax, rdi
        ret
    .ctrax:
        mov rax, rdx
        ret 
