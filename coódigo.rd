#include <stdio.h>
#include <stdlib.h>
#include <time.h>

void soma(int matriz[5][5]) {
    int matriz_B[5][5];
    for (int i = 0; i < 5; i++) {
        for (int l = 0; l < 5; l++) {
            matriz_B[i][l] = rand() % 9;
        }
    }
    for (int i = 0; i < 5; i++) {
        for (int l = 0; l < 5; l++) {
            printf("%d ", matriz_B[i][l]);
        }
        printf("\n");
    }
    int matriz_C[5][5];
    for (int i = 0; i < 5; i++) {
        for (int l = 0; l < 5; l++) {
            matriz_C[i][l] = matriz[i][l] + matriz_B[i][l];
        }
    }
    printf("\n\nSOMA DA MATRIZ\n\n");
    for (int i = 0; i < 5; i++) {
        for (int l = 0; l < 5; l++) {
            printf("%d ", matriz_C[i][l]);
        }
        printf("\n");
    }
}

void soma_linha(int matriz[5][5]) {
    int count = 4, vetor[5];
    for (int i = 0; i < 5; i++) {
        vetor[i] = matriz[count][i];
    }
    for (int i = 0; i < 5; i++) {
        printf("%d ", vetor[i]);
    }
}

void soma_coluna(int matriz[5][5]) {
    int linha = 2, vetor[5];
    for (int i = 0; i < 5; i++) {
        vetor[i] = matriz[i][linha];
    }
    for (int i = 0; i < 5; i++) {
        printf("%d ", vetor[i]);
    }
}

void diagonal_principal(int matriz[5][5]) {
    int vetor[5];
    for (int i = 0; i < 5; i++) {
        vetor[i] = matriz[i][i];
    }
    for (int i = 0; i < 5; i++) {
        printf("%d ", vetor[i]);
    }
}

void diagonal_secundaria(int matriz[5][5]) {
    int vetor[5];
    for (int i = 0; i < 5; i++) {
        vetor[i] = matriz[i][4 - i];
    }
    for (int i = 0; i < 5; i++) {
        printf("%d ", vetor[i]);
    }
}

int main() {
    int matriz[5][5];
    srand(time(0));
    for (int i = 0; i < 5; i++) {
        for (int j = 0; j < 5; j++) {
            matriz[i][j] = rand() % 9;
        }
    }
    soma(matriz);
    printf("\n");
    diagonal_principal(matriz);
    printf("\n");
    diagonal_secundaria(matriz);
    printf("\n");
    soma_linha(matriz);
    printf("\n");
    soma_coluna(matriz);
    return 0;
}

