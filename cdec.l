%{
#include"cdec.tab.h"
%}
%%
";" {return SEMI;}
"printf" {return PRI;}
"\"" {return QUO;}
[\(\),] {return *yytext;}
[ \t\n] {}
[a-zA-Z_]+   { return ALL;}
. {return *yytext;}
%%
int yywrap(void){
    return 1;
}
