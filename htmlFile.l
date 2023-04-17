%{
#include<stdio.h>
%}
 
%%
\<[^>]*\>   { fprintf(yyout,"%s",yytext);}
.   ;
%%

int main()
{
   extern FILE *yyin ,*yyout;
   yyin=fopen("input.txt","r");
   yyout=fopen("output.txt","w");
   yylex();
   return 0;
}
int yywrap()
{
    return 1;
}