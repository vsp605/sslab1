%{
#include <stdio.h>
#include <stdlib.h>

// Forward declaration of the lexer function
int yylex(void);
void yyerror(const char *msg);
%}

%token NUMBER ID NL
%left '+' '-'
%left '*' '/'

%%

stmt : exp NL { printf("Valid Expression\n"); exit(0); }
     ;

exp  : exp '+' exp
    | exp '-' exp
    | exp '*' exp
    | exp '/' exp
    | '(' exp ')'
    | ID
    | NUMBER
    ;

%%

int yyerror(const char *msg) {
    printf("Invalid Expression\n");
    return 1;  // Return non-zero to indicate an error
}

int main() {
    printf("Enter the expression:\n");
    yyparse();
    return 0;
}
