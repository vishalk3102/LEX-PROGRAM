%{
#include<stdio.h>
int num,power=0,sum=0,rem=0,temp;
%}

%%
[0-9]+      {
                num=atoi(yytext);
                temp=num;
                while(temp>0)
                {
                    rem=temp%10;
                    power=rem*rem*rem;
                    sum+=power;
                    temp=temp/10;
                }
                if(sum==num)
                {
                    printf("Armstrong Number");
                }
                else
                {
                    printf("Not Armstrong Number");
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