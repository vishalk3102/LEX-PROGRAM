%{
#include<stdio.h>
int year;
%}

%%
[1-9][0-9][0-9][0-9]    {year=atoi(yytext);
                           if(year%400==0)
                           {
                            printf("Leap Year");
                           }
                           else if(year%100==0)
                           {
                               if(year%4==0)
                               {
                                printf("Leap Year");
                               }
                               else
                               {
                                printf("Not Leap Year");
                               }
                           }
                           else if(year%4==0)
                           {
                                printf("Leap Year");
                           }
                           else
                           {
                            printf("Not Leap Year");
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