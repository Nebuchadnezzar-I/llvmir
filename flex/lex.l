%{
#include <stdio.h>
%}

DIGIT      [0-9]+
IDENTIFIER [a-zA-Z_][a-zA-Z0-9_]*

%%

{DIGIT}      { printf("TOKEN: INTEGER (%s)\n", yytext); }
{IDENTIFIER} { printf("TOKEN: IDENTIFIER (%s)\n", yytext); }
"+"|"-"      { printf("TOKEN: OPERATOR (%s)\n", yytext); }
[ \t\n]+     { /* Ignore whitespace */ }
.            { printf("TOKEN: UNKNOWN (%s)\n", yytext); }

%%

int main(int argc, char **argv) {
    yylex();
    return 0;
}
