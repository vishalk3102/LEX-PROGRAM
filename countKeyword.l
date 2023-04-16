%{
    #include<stdio.h>
    int w=0,n=0,k=0;
%}

%%
if|else|printf|goto   {k++;}
[0-9] {n++;}
[a-zA-z]+  {w++;}
%%

int main()
{
 printf("Enter the string :");
 yylex();
 printf("Number of keyword :%d\n",k);
 printf("Number of numbers :%d\n",n);
 printf("Number of words :%d\n",w);

}
int yywrap()
{
 return 1;
}