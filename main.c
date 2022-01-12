#include <stdio.h>
#include <stdlib.h>
#include <math.h>
double erro=0;
int linhas=0, colunas=0;
double **inicia_matriz(){
    double **matriz;
    matriz = (double **) malloc(linhas*sizeof(double *));
    for (int i = 0; i < linhas; ++i) {
        matriz[i] = (double *) malloc(colunas*sizeof(double));
    }
    return matriz;
}
void leitura(double **matriz, double *divisores){
    for (int i = 0; i < linhas; ++i) {
        for (int j = 0; j < colunas; ++j) {
            printf("Entre com o valor (%dx%d): ",i+1 ,j+1);
            scanf("%lf", &matriz[i][j]);
        }
    }
    for (int k = 0; k < linhas; ++k) {
        printf("Entre com o %d valor do lance inicial: ", k+1);
        scanf("%lf", &divisores[k]);
    }
}
void print_matriz(double **matriz){
    for (int i = 0; i < linhas; ++i) {
        for (int j = 0; j < colunas; ++j) {
            printf("%.9lf ", matriz[i][j]);
        }
       printf("\n");
    }
}
void criterio_linhas(double **matriz){
    int posicao=0, cont=0;
    double **aux=inicia_matriz();
    for (int i = 0; i < linhas; ++i) {
        for (int j = cont; j < linhas; ++j) {
            if (matriz[i][posicao] < matriz[j][posicao]){
                aux[0]=matriz[j];
                matriz[j]=matriz[i];
                matriz[i]=aux[0];
            }
        }
        cont++;
        posicao++;
    }
    free(aux);
}
void contas(double **matriz, double *divisores){
    int cont=0, xx=0, posicao=0, posicao2=0, Xn=0;
    double dr=1000;
    double *aux=(double *) malloc(linhas*sizeof(double ));
    double *sum=(double *) malloc(linhas*sizeof(double ));
    double *DivInicial=(double *) malloc(linhas*sizeof(double ));
    for (int i = 0; i < linhas; ++i) {
        aux[i] = matriz[i][i];
        matriz[i][i]=0;
        sum[i]=0;
        DivInicial[i] = divisores[i];
    }
    while (dr >= erro) {
        Xn++;
        printf("X%d:\n", Xn);
        for (int j = 0; j < linhas; ++j) {
            for (xx = 0; xx < linhas; ++xx) {
                sum[j] += -(matriz[j][xx] * divisores[xx]);
            }
            sum[j] += matriz[j][xx];
            divisores[j] = sum[j] / aux[j];
            printf("%.9lf  ->  ",divisores[j]);
            printf("|%.9lf - %.9lf| = ", divisores[j], DivInicial[j]);
            DivInicial[j] = (fabs(fabs(divisores[j]) - fabs(DivInicial[j])));
            printf("%.9lf\n",DivInicial[j]);
        }
        for (int i = 0; i < linhas; ++i) sum[i] = 0;
        for (int k = 0; k < linhas; ++k) {
            for (int i = 0; i < linhas; ++i) {
                if (divisores[k] > divisores[i]) cont++;
                if (cont == linhas - 1) posicao = k;
            }
            cont = 0;
        }
        for (int k = 0; k < linhas; ++k) {
            for (int i = 0; i < linhas; ++i) {
                if (DivInicial[k] > DivInicial[i]) cont++;
                if (cont == linhas - 1) posicao2 = k;
            }
            cont = 0;
        }
        dr = DivInicial[posicao2] / divisores[posicao];
        printf("\ndr = %.9lf / %.9lf\n",DivInicial[posicao2] , divisores[posicao]);
        if (dr < erro) printf("dr = %.9lf\ndr < %.9lf\n", dr, erro);
        else printf("dr = %.9lf\ndr > %.9lf\n", dr, erro);
        for (int l = 0; l < linhas; ++l) DivInicial[l] = divisores[l];
        if(Xn == 10){
            printf("Nao converge!!\n");
            return;
        }
    }
    printf("FOI REALIZADA %d INTERACOES\n", Xn);
}
void free_memoria(double **matriz, double *divisores){
    for (int i = 0; i < linhas; ++i) {
        free(matriz[i]);
    }
    free(divisores);
}
int main() {
    double **matriz, *divisores;
    printf("Entre com a quantidade de linhas: ");
    scanf("%d", &linhas);
    while (linhas > 10){
        printf("Ordem MAX E 10\n" );
        scanf("%d", &linhas);
    }
    printf("Entre com a quantidade de colunas: ");
    scanf("%d", &colunas);
    while (colunas > 11){
        printf("Ordem MAX E 10\n" );
        scanf("%d", &colunas);
    }
    printf("Entre com o ERRO: ");
    scanf("%lf", &erro);
    divisores = (double *) malloc(linhas*sizeof(double ));
    matriz = inicia_matriz();
    leitura(&*matriz, &*divisores);
    criterio_linhas(&*matriz);
    contas(&*matriz, &*divisores);
    print_matriz(&*matriz);
    printf("SOLUCAO:\n");
    for (int i = 0; i < linhas; ++i) {
        printf("%.9lf\n", divisores[i]);
    }
    free_memoria(&*matriz, &*divisores);
    return 0;
}