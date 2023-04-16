%{
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