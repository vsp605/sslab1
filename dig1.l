%{
#include<stdio.h>
int dc=0;
%}
%%
[0-9] {dc++;}
%%
int main()
{
	printf("Enter phone number\n");
	yylex();
	printf("phone number is=%d\n",dc);
}
	int yywrap()
	{
		return 1;
	}

