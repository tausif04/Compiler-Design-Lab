
/*Definaiton Section*/
%{
#include <stdio.h>

%}

/* Rules Section */
%%
[A-Za-z_][A-Za-z0-9_]*[0-9]   {
    printf("Valid string: %s\n", yytext);
}

. {}
%%

/* User code section */
int main() {
    yyin = fopen("input.c", "r"); 
    yylex();   
    return 0;
}

int yywrap() {
    return 1;
}

