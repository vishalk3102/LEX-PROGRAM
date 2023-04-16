%{
    #include<stdio.h>
    int max=0;
%}

%%
[A-za-z]+   { 
                if(max<yyleng)
                {
                    max=yyleng;
                }
            }
%%

int main()
{
  printf("Enter the string :");
  yylex();
  printf("max :%d\n",max);

}

int yywrap()
{
    return 1;
}