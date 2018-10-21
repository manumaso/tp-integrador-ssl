
%{
#include "preyasoc.tab.h"
#include <stdlib.h>
#include <ctype.h>
#include <stdio.h>

float octalToDecimal(char[] cadenaOctal){

	cantidadDeNumeros = largoDeCadena(cadenaOctal);
	int numeroOctal = atof(cadenaOctal);
	float numero = 0;

  //Seria 156)8 = 1 * 8^2 + 5 * 8^1 + 6 * 8^0 = 110)10
	
	for(int i = cantidadDeNumeros - 1; i >= 0; i--){

	}

	return numero;
}

float hexaToDecimal(numeroHexa){
	float numero = 0;
	return numero;
}

int largoDeCadena(cadena){
 return (sizeof(cadena) - 1)
}

float pow(float numero,float potencia){
	for(int i = 1; i < potencia; i++){
		numero = numero * numero;
	}
    return numero;
}

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
