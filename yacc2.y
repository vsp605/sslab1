%{
#include<stdio.h>

int ca=0,cc=0;
%}

%token A B C
%%
string:a B c
;
a :A a {ca++;}
|A  {ca++;}
;
c :C c {cc++;}
|C  {cc++;}
; 
 %%
int main()
{
printf("Enter a string\n");
yyparse();
if(ca>3 && cc>2 && cc<10)
{
printf("Valid string\n");
}
else
printf("Invalid string\n");
}
 
void yyerror()
{
printf("Invalid string\n");
}
