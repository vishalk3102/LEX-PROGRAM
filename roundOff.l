%{
 #include<stdio.h>
 int num,flag=0;
%}
%%
[0-9]+              {flag=0;}
[0-9]+[.][0-9]+     { 
                        flag=1;
                        num=(int)(atof(yytext)+0.5);
                    }
%%
int main()
{
    printf("Enter the string :\n");
    yylex();
    if(flag==1)
    {
        printf("float number");
        printf("New Number :%d\n",num);
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