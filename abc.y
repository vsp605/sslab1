%{
#include <stdio.h>
int ca=0,cc=0;
%}
%token A B C
%%
string:a B c
 ;
a:a A {ca++;}
 |A {ca++;}
 ;
c:c C {cc++;}
 |C {cc++;}
 ; 
 %%
int main()
 {
    printf("Enter the string:\n");
    yyparse();
    if(ca<=3 && cc>=2 && cc<=10)
    {
      printf("valid string\n");
    }
}
void yyerror()
{
printf("invalid string\n");
}
