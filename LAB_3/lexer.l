/* Defination Section */
%{
    #include <stdlib.h> 
    #include <stdlib.h>   /* for atoi */
%}

/* Rules Section */
%%
[0-9]+  { yylval.num=atoi(yytext); return NUMBER; }
\n { return EOL }
"+" {return PLUS  }
. { }
%%

/*User section*/
int yywrap(void) { return 1; }