%{
#include<stdio.h>
%}
 
%%
[ \n\t]+ {fprintf(yyout, "%s");}
.       { fprintf(yyout, "%s", yytext); }

%%

int main()
{%{
 #include<stdio.h>
 int c=0,v=0;
%}
%%
[  \t\n]+ ;
[AEIOUaeiou]+ {v++;}
[^(AEIOUaeiou)] {c++;}
%%
int main()
{
    printf("Enter the string :\n");
    yylex();
    printf("Number of vowel :%d\n",v);
    printf("Number of consonats :%d\n",c);
}
int yywrap()
{
    return 1;
}
    extern FILE *yyin, *yyout;
    yyin = fopen("Input.txt", "r");
    yyout = fopen("Output.txt", "w");
    yylex();
    return 0;
}
int yywrap()
{
    return 1;
}