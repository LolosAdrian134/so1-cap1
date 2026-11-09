/*
 * Problema 4 - programul MENIU
 * Creati un program "MENIU" care returneaza una din valorile: 0, 1, 2, 3.
 */

#include <stdio.h>

int main(void)
{
    int opt;

    do {
        printf("1 - Creare fisier\n");
        printf("2 - Sortare fisier\n");
        printf("3 - Afisare fisier sortat\n");
        printf("0 - Iesire\n");
        printf("Optiune: ");
        scanf("%d", &opt);
    } while (opt < 0 || opt > 3);

    return opt;
}
