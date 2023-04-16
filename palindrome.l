%{
    #include<stdio.h>
    int flag,i,j;
%}

%%
[A-za-z0-9]*   { 
                for(int i=0,j=yyleng-1;i<=j;i++,j--)
                {
                    if(yytext[i]==yytext[j])
                    {
                        flag=1;
                    }
                    else{
                        flag=0;
                        break;
                    }
                }
                if(flag==1)
                {
                    printf("palindrome");
                }      
                else
                {
                    printf("not palindrome");
                }       
            }
%%

int main()
{
  printf("Enter the string :");
  yylex();
}

int yywrap()
{
    return 1;
}