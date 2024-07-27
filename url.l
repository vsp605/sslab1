%{
#include<stdio.h>
%}
%%
"HTTP://" ([a-zA-Z0-9\-]+\.)+[a-zA-Z] {2,3,4}(/[a-zA-Z0-9\-._?+&$=~]*)* {printf("URL:%s\n",yytext);}
"HTTPS://" ([a-zA-Z0-9\-]+\.)+[a-zA-Z] {2,3,4}(/[a-zA-Z0-9\-._?+&$=~]*)* {printf("URL:%s\n",yytext);}
%%
int main(int argc,char **argv)
{
yylex();
return 0;
}
int yywrap()
{
return 1;
}
