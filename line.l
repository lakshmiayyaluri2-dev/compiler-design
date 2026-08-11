%{
#include <stdio.h>
int line_num = 1;
%}

%%

^.     {printf("%d: %s", line_num++,yytext);}/* match first char of a line */
\n     {printf("\n");}
.      {printf("%s",  yytext);}

%%


int yywrap() { return 1;} 

int main(){
	yylex();
	return 0;
}
