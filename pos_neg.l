%{
#include<stdio.h>
int postive=0,negtive=0;
%}
DIGIT[0-9]
%%
\+?{DIGIT}+ postive++;
-{DIGIT}+ negtive++;
.;
%%
int main()
{
yylex();
printf("number of postive number=%d\n",postive);
printf("number of negtive number=%d\n",negtive);
return 0;
}
int yywrap()
{
return 1;
}
