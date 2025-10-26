/*Definition Section (headers, diclearation , variables etc)*/
%{
    #include<stdio.h>
    int keyword_count=0;
    int id_count=0;
%}


/*Rules Section*/
%%
(int|printf) {
    keyword_count++;
    printf("Keyword detected %s, count %d \n", yytext,keyword_count);

}
[a-zA-Z_][a-zA-Z_0-9]* {
    id_count++;
    printf("Identifier detected %s, count %d \n", yytext, id_count);
}
. {}


%%
/*User Section*/
int main() {
    yyin=fopen("print.c", "r");
    yylex();
    printf("Total number of keywords : %d \n", keyword_count);
    printf("Total number of identifiers : %d \n", id_count);
}
int yywrap(){
    return 1;
}