#include <stdio.h>

// Declaramos la función externa que vas a escribir en ASM
// Recibe un número (long) y devuelve la cantidad de pasos (long)
extern long Collatz(long n);

int main() {
    long num;
    
    printf("--- CONJETURA DE COLLATZ ---\n");
    printf("Introduce un número entero positivo: ");
    
    // Validamos que el usuario ingrese un número
    if (scanf("%ld", &num) != 1) {
        printf("Error: Entrada no válida.\n");
        return 1;
    }

    // Validamos que sea mayor a 0, ya que Collatz aplica a enteros positivos
    if (num <= 0) {
        printf("Por favor, introduce un número mayor que 0.\n");
        return 1;
    }

    // Llamamos a tu función en ensamblador
    long pasos = Collatz(num);

    printf("El número %ld llegó a 1 en %ld pasos.\n", num, pasos);

    return 0;
}