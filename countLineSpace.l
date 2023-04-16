%{
#include<stdio.h>
int l=0,s=0,t=0,c=0;    
%}

%%
[\n] {l++;}
[\t] {t++;}
[ ] {s++;}
[^\t] {c++;}
%%

int main()
{
 printf("Enter the string :");
 yylex();
 printf("no of lines:%d\n",l);
 printf("no of tabs :%d\n",t);
 printf("no of spaces:%d\n",s);
 printf("no of characters:%d\n",c);
}

int yywrap()
{
    return 1;
}