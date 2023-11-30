%{#include<stdio.h>
#include<stdlib.h>
%}
%%
1[0-9]* {
int va=atoi(yytext);
if(va%5==0)
{
printf("Accept\n");
}
else
printf("No\n");
}
[0-9]* {printf("No\n");}
"\n" return;
%%
int yywrap()
{return 1;}
int main()
{
printf("Enter the input\n");
yylex();
getch();
return 0;
}