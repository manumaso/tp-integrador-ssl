
%{
#include "preyasoc.tab.h"
#include <stdlib.h>
#include <ctype.h>
#include <stdio.h>

octalToDecimal(numeroOctal){
float numero = 0;
return numero;
}
hexaToDecimal(numeroHexa){
float numero = 0;
return numero;
}

%}
%%
0[0-7]* {yyval.real = octalToDecimal(atof(yytext)); return NUM;}
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
