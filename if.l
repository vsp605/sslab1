%{
#include"if.tab.h"
%}
%%
"if" {return IF;}
"else" {return EL;}
"(" {return LP;}
")" {return RP;}
"{" {return LB;}
"}" {return RB;}
";" {return SEMI;}
[<>=!][=]? {return ROP;}
"||" {return OR;}
"&&" {return AND;}
"statement" {return ALL;}
[\n\t ] {}
[a-zA-Z_]+ {return ID;}
%%
int yywrap(void){
    return 1;
}
