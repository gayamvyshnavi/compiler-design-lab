%{
#include<stdio.h>
int line=0;
%}
%%
[\n] line++;
.* 
%%
int yywrap(){return 1;}
int main()
{
printf("Enter the input\n");
yylex();
printf("Number of lines are %d\n",line);
return 0;
}