%{
#include<stdio.h>
%}

%%
((http)|(ftp))s?:\/\/[a-zA-z0-9]{2,}(\.[a-z]{2,})+(\/[a-zA-z0-9+=?]*)*   {printf("Valid url");}
.+ {printf("not valid url");}

%%

int main()
{
    printf("Enter the url :");
    yylex();
   
}
int yywrap()
{
    return 1;
}