%{
#include <stdio.h>
#include <stdlib.h>
int yyerror(const char *s);
int yylex(void);
%}
%token A B C
%%
stmt : sequence '\n' { printf("Valid string.\n"); }
     ;
sequence : a_seq B c_seq
         ;
a_seq : A a_seq
      | /* empty */
      ;
c_seq : C c_seq
      | /* empty */
      ;
%%
int main() 
{ 
    printf("Enter the string:\n"); 
    yyparse(); 
    return 0; 
}
int yyerror() 
{ 
    printf("Invalid string.\n"); 
    exit(1); 
} 

