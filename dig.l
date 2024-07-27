%{
#include<stdio.h>
int wc=0,sc=0,lc=0;
%}
%%
[\n] {lc++;}
[\t] {sc++;}
[^' '\t\n]+ {wc++;}
%%
int main()
{
	printf("Enter input:\n");
	yylex();
	printf("number of words=%d\n",wc);
	printf("number of space count=%d\n",sc);
	printf("number of lines count=%d\n",lc);
}
	int yywrap()
	{
		return 1;
	}

