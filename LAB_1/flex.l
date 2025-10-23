/* Defination Section */
%{
    #include <stdio.h>
    int keyword_count=0;
    int id_count=0;
%}

/* Rules Section */
%%

(int|printf) {
    printf(" keyword deteced %s, count %d",yytext,keyword_count);
}

[a-zA-Z_][a-zA-Z_0-9]* {
    id_count++;
    printf("Identifier detected %s, count %d \n", yytext, id_count);
}
. {}
%%
/* User Section */
int main(){
    yyin=fopen("lab_1.c", "r");
    yylex();
    printf("Total numner of keywords: %d",keyword_count);
}
int  yywrap(){
    return 1;
}