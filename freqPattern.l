%{
 #include<stdio.h>
 int c=0;
%}
%%
"the"  {c++;}
.  ;
%%
int main()
{
    printf("Enter the string :\n");
    yylex();
    printf("no of frequency :%d\n",c);
}
int yywrap()
{
    return 1;
}