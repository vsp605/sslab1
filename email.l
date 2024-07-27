%{
#include<stdio.h>
int flag=0;
%}
%%
[a-zA-Z0-9_]+"@"[a-z]+".com"|".in" {flag=1;}
%%
int yywrap()
{
return 1;
}
int main()
{
yylex();
if(flag==1)
  printf("accepted\n");
else
  printf("not accepted\n");
  return 0;
  }  
