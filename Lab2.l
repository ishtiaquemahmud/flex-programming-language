/*Definition Section */
%{
#include <stdio.h>

%}


/*Rules Section */
%%

x+ {
    printf("Starts with one or more x : %s \n", yytext);
   
}

x+y+ {
    printf("Starts with one or more x follwed by one or more yy: %s \n", yytext);
   
}

xyz {
    printf("Follows the exact sequence of xyz: %s \n", yytext);
   
}
. {}

%%

/* User code */

int main() {
    yyin=fopen("lab2.c", "r");
    yylex ();

}

int yywrap() {
    return 1;
}