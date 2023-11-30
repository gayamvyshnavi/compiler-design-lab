%{#include<stdio.h>
int c=0;
int f=0;
%}
%%
[0-9]* {
if(yyleng<5)
{
printf("No\n");
}
int i,j;
for(i=0;i<yyleng-5;i++)
{
c=0;
for(j=0;j<5;j++)
{
if(yytext[i+j]=='5')
{
printf("Vysh");
c++;
}
}
if(c>=2)
{
printf("%d is c\n",c);
f=1;
}
else
{
f=0;
return;
}
}
}
"\n" return 0;
%%
int yywrap()
{
return 1;
}
int main(){
printf("Enter the input\n");
yylex();
printf("%d\n",f);
if(f==0)
{printf("Not\n");}
else{printf("yes\n");}
getch();
return 0;
}
