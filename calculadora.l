
%{
#include "calculadora_bison.tab.h"
#include "funciones.c"
#include <stdlib.h>
#include <ctype.h>
#include <stdio.h>

//NOTA: LOS PRINTF TIENEN QUE IR EN %f SINO DAN ERROR, CHEQUEAR BIEN C/TIPO

%}
%%
0[0-7]* {yylval.real = convertir_octal_decimal(yytext); return NUM;}
0[xX][0-9 a-f]+ {yylval.real = convertir_hexa_decimal(yytext); return NUM;}
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
