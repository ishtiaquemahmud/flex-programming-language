/*Definition Section */
%{
#include <stdio.h>

%}


/*Rules Section */
%%


[0-9] {
    printf("Matched one or more occurrences of integer: %s \n", yytext);
}

xyz {
    printf("Matched xyz exactly: %s \n", yytext);
}
e+f+g+ {
    printf("Matched one or more e followed by one or more f followed by onr or more g exactly: %s \n", yytext);
}

. {}

%%

/* User code */

int main() {
    yyin=fopen("input.c", "r");
    yylex ();

}

int yywrap() {
    return 1;
}