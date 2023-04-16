%{
#include<stdio.h>
int valid=0;
%}

%%
[0-2][1-9][\-][0][1-9][\-][1-9][0-9][0-9][0-9]     {valid=1;}
[0-2][1-9][\-][1][0-2][\-][1-9][0-9][0-9][0-9]     {valid=1;}
[3][0][\-][0][13456789][\-][1-9][0-9][0-9][0-9]     {valid=1;}
[3][0][\-][1][0-2][\-][1-9][0-9][0-9][0-9]     {valid=1;}
[3][1][\-][0][13578][\-][1-9][0-9][0-9][0-9]     {valid=1;}
[3][1][\-][1][02][\-][1-9][0-9][0-9][0-9]     {valid=1;}
%%

int main()
{
    printf("Enter the number :");
    yylex();
    if(valid==1)
    {
        printf("Valid Date ");
    }
    else
    {
        printf("Not Valid Date ");
    }
}
int yywrap()
{
    return 1;
}