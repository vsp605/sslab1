%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
void yyerror(const char *s);
int yylex(void);
%}

%%
"int"|"float"|"double"|"char"|"return"|"if"|"else"|"while"|"for" { printf("Keyword: %s\n", yytext); }
[a-zA-Z_][a-zA-Z0-9_]* { printf("Identifier: %s\n", yytext); }
[0-9]+(\.[0-9]*)?([eE][-+]?[0-9]+)? { printf("Number: %s\n", yytext); }
\"([^\"\\]|\\.)*\" { printf("String: %s\n", yytext); }
[+\-*/%=!&|<>^~] { printf("Operator: %s\n", yytext); }
[\(\)\[\]\{\};,] { printf("Punctuation: %s\n", yytext); }
[ \t\n]+          ; // Ignore whitespace
.                 { printf("Unknown: %s\n", yytext); }
%%
void yyerror(const char *s) {
    fprintf(stderr, "Error: %s\n", s);
}
int main() {
    yylex();  // Start scanning
    return 0;
}
