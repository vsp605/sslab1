%{
#include<stdio.h>
void yyerror(char*);
int yylex(void);
%}
%token SEMI PRI QUO ALL
%%
inp:exp {printf("\nValid statement");}
|
;
exp:PRI '(' state ')' SEMI 
; 
state:QUO ALL QUO vars
     | QUO ALL QUO
;
vars:','ALL
    |','ALL vars
    ; 
%%
int main(){
    printf("Enter printf st : ");
    yyparse();
}
void yyerror(char *s){
    printf("\nError in stat");
}
