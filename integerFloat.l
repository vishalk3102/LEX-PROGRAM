%{
 #include<stdio.h>
 int flag=0;
%}
%%
[0-9]+              {flag=0;}
[0-9]+[.][0-9]+     {flag=1;}
%%
int main()
{
    printf("Enter the string :\n");
    yylex();
    if(flag==1)
    {
        printf("float number");
    }
    else
    {
        printf("integer number");
    }
}
int yywrap()
{
    return 1;
}