%{
#include "yacc1.y"
%}
%%
a   { return A; }
b   { return B; }
c   { return C; }
%%
int yywrap()
	{
		return 1;
	}
