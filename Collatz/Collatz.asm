section .text
    global Collatz
    ;rdi=n
Collatz:
    mov rax, rdi ; Guardamos el valor de n
    mov rcx, 0 ; INicializamo en 0 el contador
    mov rbx, 1 ; Valor de 1 para comparar con rax

    .bucle:
        cmp rax, 1      ;SI esto es cierto hemmos llegado al final
        je .fin
        mov r8, rax     ; Guardamos el valor de rax para usarlo en la parte impar
        xor rdx, rdx    ; Limpiamos rdx para la división
        mov rbx, 2      ; Divisor para comprobar si es par o impar
        idiv rbx        ; Dividimos rax entre 2, el resultado queda en rax y el resto en rdx
        cmp rdx, 0      ; Si el resto es 0, es par
        je .par         ; Si es par, vamos a la parte par
        mov rax, r8     ;Recuperamos el valor de rax
        imul rax, 3     ; Multiplicamos por 3
        add rax, 1      ; Sumamos 1
        inc rcx          ; Contamos un paso
        jmp .bucle

    .par:
        inc rcx     ;Contamos un paso
        jmp .bucle  ; Volvemos al inicio del bucle para comprobar el nuevo valor de rax
    .fin:
        mov rax, rcx
        ret