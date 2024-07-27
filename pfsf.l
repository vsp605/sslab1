%{
#include<stdio.h>
int pf=0,sf=0;
%}
%%
"printf" {pf++;printf("sprintf");}
"scanf" {sf++;printf("sscanf");}
.|\n {putchar(yytext[0]);}
%%
int main()
{
yylex();
printf("enter input:");
printf("\n number of printf statements=%d",pf);
printf("\n number of scanf statements=%d",sf);
return 0;
}
int yywrap()
{
return 1;
}
