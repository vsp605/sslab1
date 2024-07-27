%{
#include<stdio.h>
void yyerror(char*);
int yylex(void);
%}
%token SEMI PRI QUO AS ALL
%%
inp:exp {printf("\nValid statement");}
|
;
exp:PRI '(' state ')' SEMI 
;
state:QUO al QUO vars
;
al:'%'AS al
  |'%'AS
  ;
vars:','ALL
    |','ALL vars
    |',''&'ALL vars
    |',''&'ALL
    ; 
%%
int main(){
    printf("Enter printf st : ");
    yyparse();
}
void yyerror(char *s){
    printf("\nError in stat");
}
