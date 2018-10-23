
%{
#include "preyasoc.tab.h"
#include <stdlib.h>
#include <ctype.h>
#include <stdio.h>

float OctalToDecimal(char cadenaOctal[]){
	int cantidadDeNumeros = largoDeCadena(cadenaOctal);
	int arrayNumerosOctal [cantidadDeNumeros];
	int numeroEnBase10 = 0;
    
	for(int indice = 0; indice < cantidadDeNumeros; indice++){arrayNumerosOctal[indice] = cadenaOctal[indice] - '0' ;}
    
    	for(int i = cantidadDeNumeros - 1, j = 0; i >= 0; i--,j++){
        	numeroEnBase10 += arrayNumerosOctal[j] * potencia(8,i);
    	}
	return numeroEnBase10;
}

float hexaToDecimal(numeroHexa){
	float numero = 0;
	return numero;
}

int largoDeCadena(char cadena []){
    int contador;
    for(contador = 0;cadena[contador] != '\0';contador++);
    return contador;
}

int potencia(int base,int exponente){

    if(exponente == 0){
        return 1;
    }
    else{
        int numero = base;
        for(int i = 1; i < exponente; i++){
            numero *= base;
        }
        return numero;
	}
}

//NOTA: LOS PRINTF TIENEN QUE IR EN %f SINO DAN ERROR, CHEQUEAR BIEN C/TIPO

%}
%%
0[0-7]* {yyval.real = octalToDecimal(yytext); return NUM;}
0[xX][0-9 a-f]+ {yyval.real = hexaToDecimal(atof(yytext)); return NUM;}
[1-9][0-9]*("."[0-9]+)? {yylval.real = atof(yytext); return NUM;}
"+"     {return '+';}
"-"     {return '-';}
"*"     {return '*';}
"/"     {return '/';}
"^"     {return '^';}
"("     {return '(';}
")"     {return ')';}
"\n"    {return '\n';}
%%
