/*Defination section*/
%{
#include <stdio.h>
%}

/* Rules Section */
%%
x+ { 
    printf("Matched pattern [x+]: %s\n", yytext); 
    }
x+y+ { 
    printf("Matched pattern [x+y+]: %s\n", yytext); 
    }
xyz { 
    printf("Matched pattern [xyz]: %s\n", yytext); 
    }

. {}
%%

int main() {
    yyin = fopen("input.c", "r"); 
    yylex();   
    return 0;
}

int yywrap() {
    return 1;
}
