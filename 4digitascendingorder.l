%{
#include<stdio.h>
%}
%%
[1-9][0-9][0-9][0-9] { if((int)(yytext[0]-'0')<=(int)(yytext[1]-'0') && 
(int)(yytext[1]-'0')<=(int)(yytext[2]-'0') && (int)(yytext[2]-'0')<=(int)(yytext[3]-'0')){printf("accepted");} else{printf("not accepted");} }
.* { printf("not accepted"); }
%%
int yywrap()
{
return 1;
}
int main()
{
 printf("enter the string");
 yylex();
 getch();
 return 0;
}