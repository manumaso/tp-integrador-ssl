#include <stdlib.h>
#include <stdio.h>

float convertir_octal_decimal(char cadenaOctal[]){

	int cantidadDeNumeros = largoDeCadena(cadenaOctal);
	int arrayNumerosOctal [cantidadDeNumeros];
	int numeroEnBase10 = 0;

    for(int indice = 0; indice < cantidadDeNumeros; indice++){
        arrayNumerosOctal[indice] = cadenaOctal[indice] - '0' ;
    }
	for(int i = cantidadDeNumeros - 1, j = 0; i >= 0; i--,j++){
        numeroEnBase10 += arrayNumerosOctal[j] * potencia(8,i);
    }

	return numeroEnBase10;
}

float convertir_hexa_decimal(char hex[]){
		
    int dec=0, longitud, i=0;
    longitud = largoDeCadena(hex);

    while (i < longitud) {
        switch (hex[i]){
            case '0': dec = dec + potencia(16,longitud-i-1)* 0;break;
            case '1': dec = dec + potencia(16,longitud-i-1)* 1;break;
            case '2': dec = dec + potencia(16,longitud-i-1)* 2;break;
            case '3': dec = dec + potencia(16,longitud-i-1)* 3;break;
            case '4': dec = dec + potencia(16,longitud-i-1)* 4;break;
            case '5': dec = dec + potencia(16,longitud-i-1)* 5;break;
            case '6': dec = dec + potencia(16,longitud-i-1)* 6;break;
            case '7': dec = dec + potencia(16,longitud-i-1)* 7;break;
            case '8': dec = dec + potencia(16,longitud-i-1)* 8;break;
            case '9': dec = dec + potencia(16,longitud-i-1)* 9;break;
            case 'A': dec = dec + potencia(16,longitud-i-1)* 10;break;
            case 'B': dec = dec + potencia(16,longitud-i-1)* 11;break;
            case 'C': dec = dec + potencia(16,longitud-i-1)* 12;break;
            case 'D': dec = dec + potencia(16,longitud-i-1)* 13;break;
            case 'E': dec = dec + potencia(16,longitud-i-1)* 14;break;
            case 'F': dec = dec + potencia(16,longitud-i-1)* 15;break;
        }
            i++;
    }

		return (float) dec;
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
