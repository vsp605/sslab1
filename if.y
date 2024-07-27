%{
#include<stdio.h>
void yyerror(char*);
int yylex(void);
%}
%token LP RP LB RB SEMI ID IF EL ROP OR AND ALL
%%
inp:exp {printf("Valid if else statement\n");}
;
exp:IF LP cond RP LB stat RB EL LB stat RB
   |IF LP cond RP LB stat RB
   ;
cond:ID ROP ID OR cond
    |ID ROP ID AND cond
    |ID ROP ID
;
stat:ALL SEMI
|ALL SEMI stat;
%%
int main(){
    printf("Enter printf st : ");
    yyparse();
}
void yyerror(char *s){
    printf("\nError in stat");
}
