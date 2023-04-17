%{
#include<stdio.h>
int num=0,op=0;
%}
 
%%
[0-9]   { num++;}
[+\-*\/%=]   {op++;}
. {}

%%

int main()
{
   extern FILE *yyin;
   yyin=fopen("input.txt","r");
   yylex();
   printf("Number of operator :%d\n",op);
   printf("Number of no's :%d\n",num);
   return 0;
}
int yywrap()
{
    return 1;
}