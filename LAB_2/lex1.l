/*Definition Section */
%{
#include <stdio.h>

%}


/*Rules Section */
%%

e+f+g+ {
    printf("Recognize one or more e followed by one or more f followed by one or more g : %s \n", yytext);
}

[0-9]+ {
    printf("Recognize the integer : %s \n", yytext);
}


. {}
%%

/* User code */

int main() {
    yyin=fopen("input.c", "r");
    yylex();

}

int yywrap() {
    return 1;
}
