/*Definition Section */
%{
#include <stdio.h>

%}


/*Rules Section */
%%


[a-zA-Z_][a-zA-Z_0-9]*[_0-9] {
    printf("starts with a letter or underscore followed by any number of letters, didgits, or underscores and it ends with a digit: %s \n", yytext);
   
}

. {}

%%

/* User code */

int main() {
    yyin=fopen("lab1.c", "r");
    yylex ();

}

int yywrap() {
    return 1;
}