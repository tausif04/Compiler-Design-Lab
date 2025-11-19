/* Defination Section */
%{
#include <stdio.h>
int yylex();
int yyerror(); 
extern FILE *yyin;
%}

%union {
    int num;
}

%token PLUS
%token EOL
%token<num> NUMBER 
%type<num> exp

/* Rules Section */
%%
input:
      /* empty */
    | input line
    ;

line:
      exp EOL          { printf("%d\n", $1); }
    | EOL              /* empty line */
    ;
exp:
    NUMBER { $$=$1; }
|   exp PLUS exp { $$ =$1 +$3; }
;

%%

/*User section */
int main(){
    yyin=fopen("input.txt", "r");
    int res=yyparse();
    fclose(yyin);
    return res;
}

int yyerror(const char *s){
    printf("Error : %s \n" , s );
    return 0;
}