
%{
	#include<stdio.h>
	int vc=0;
	int cc=0;
%}

%%
[aeiouAEIOU] vc+=1;
[A-Za-z] cc+=1;
[\n]
%%
int yywrap(){return 1;}
int main()
{
printf("Enter the input\n");
yylex();
printf("Number of vowels are %d\n",vc);
printf("Number of consonants are %d\n",cc);
	return 0;
}