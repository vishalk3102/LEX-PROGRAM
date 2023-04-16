%{
#include<stdio.h>
int c,i,flag=0;
%}

%%
[0-9]+     {
                c=atoi(yytext);
                if(c==2)
                {
                    printf("prime number");
                }
                else if(c==1 || c==0)
                {
                printf("Not prime number");
                }
                else
                {
                    for(int i=2;i<c;i++)
                    {
                        if(c%i==0)
                        {
                            flag=1;
                        }
                    }
                }
                if(flag==1)
                {
                    printf("Not prime");
                }
                else{
                    printf("Prime");
                }

           }
%%

int main()
{
    printf("Enter the number :");
    yylex();
}
int yywrap()
{
    return 1;
}