%{
#include<stdio.h>
int integer=0;
int floating=0;
int ch=0;
%}
%%
[-][0-9]+[0-9]+ {integer++;}
[0-9]+ {integer++;}
[0-9][.] {floating++;}
[a-zA-Z] {ch++;}
%%
int main()
{
printf("Enter the inputs:\n");
yylex();
printf("integer count=%d\n",integer-floating);
printf("float count=%d\n",floating);
printf("character count=%d\n",ch);
return 0;
}
int yywrap()
{
return 1;
}
