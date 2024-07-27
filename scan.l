%{
#include"scan.tab.h"
%}
%%
";" {return SEMI;}
"scanf" {return PRI;}
"\"" {return QUO;}
[dplf] {return AS;}
[\(\),&] {return *yytext;}
[ \t\n] {}
[a-zA-Z_]+   { return ALL;}
. {return *yytext;}
%%
int yywrap(void){
    return 1;
}
