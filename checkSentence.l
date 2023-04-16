%{
    #include<stdio.h>
    int c=0;
%}

%%
and|but|because {c++;}
%%

int main()
{
  printf("Enter the string :");
  yylex();

  if(c!=0)
  {
    printf("compound statement");
  }
  else
  {
    printf("simple statement");
  }

}

int yywrap()
{
    return 1;
}