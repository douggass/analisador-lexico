%option noyywrap

%{
#include <stdio.h>
#include <regex.h>

int palavras = 0;
int frases = 0;
int palavrasDiferentes = 0;
int densidadeLexica = 0;

%}

%%

[A-Za-záãâàõôóòûùúêéèíì]{1,}   palavras++;
\.	frases++;

%%

int main(int argc, char *argv[]){

	yyin = fopen(argv[1], "r");

	yylex();
	fclose(yyin);

	printf("Número de palavras: %d\n", palavras);
	printf("Número de frases: %d\n", frases);
    printf("Média de frases por palavras: %d\n", (palavras/frases));


    char texto[] = "TESTE";
    printf("Valor da variavel texto = %s\n", texto);

	return 0;
}

int teste() {

    return 0;
}
