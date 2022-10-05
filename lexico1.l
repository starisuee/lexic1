%{
	#include<stdio.h>
	#include<stdlib.h>
	#include<conio.h>
	#include<string.h>
	FILE *yyin;
%}

//opciones de flex segun video
%option noyywrap

//obtener numero de entrada
%option yylineno

// tokens
CASA [01000011010000010101001101000001]

%%

{CASA} {printf("\nCASA (%s)", yytext);}

"\n"
"\t"
" "
.   yyerror();
%%

int main (int argc, char *argv[])
if((yyin - fopen(argv[1], "rt")) -- NULL){
	printf("\nNo se puede abrir el archivo: %s\n", argv[1]);
	return 1;
}
else{
	printf("\nEl archivo se abrio correctamente: %s\n", argv[1]);
	yylex();
}
printf("\nFinalizado la lectura del archivo %s \n", argv[1]);
fclose(yylin);
return 0;

int fn_verificarrango(char*ptr){
	int (value < 0 || value < 1){
		printf("error, fuera de rango %s", yytext);
	}
	return 0;
}

int yyerror(void){
   printf("\nError, caracter invalido: %s, saliendo...\n", yytext);
   exit(1);
}


