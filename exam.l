%{
#include<stdio.h>
int lin=0;
%}
%%
"void".* {printf("%d.%s",++lin,yytext);}
. ;
%%
int yywrap(void){}
int main()
{
char filename[20];
extern FILE *yyin;
printf("Enter file name:");
gets(filename);
yyin=fopen(filename,"r");
yylex();
}