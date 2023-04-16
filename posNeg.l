%{
#include<stdio.h>
int pos=0,neg=0;
%}

%%
[0-9]+  {pos++;}
-[0-9]+  {neg++;}
%%

int main()
{
    printf("Enter the number :");
    yylex();
    printf("No of Positive number :%d\n ",pos);
    printf("No of Negative number :%d\n ",neg);
}
int yywrap()
{
    return 1;
}