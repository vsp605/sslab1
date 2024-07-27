%{
#include<stdio.h>
char p=0,np=0;
%}
%%
i |
he |
she |
we |
they |
you |
it {printf("%sproun is\n",yytext);}
[a-zA-Z] {printf("%s not a proun\n",yytext);}
%%
int main()
{
	printf("Enter input\n");
	yylex();
}
	int yywrap()
	{
		return 1;
	}

