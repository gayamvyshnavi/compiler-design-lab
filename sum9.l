%{
#include <stdio.h>
int sum=0;
int flag;
int decimal_value;
%}

%%
[0-9]* {
    if(yyleng==4){
    int i;
        for(i=0;i<4;i++){
            sum+=(int)yytext[i]-48;
        }
        if(sum==9){
            flag=1;
            return;
        }else {
            flag=0;
            return;
        }
    }else {
        flag=0;
        return;
    }
}
%%
int yywrap() {return 1;}
int main() {
    printf("Enter a string: "); 
    yylex(); 
    if(flag){
        printf("Accepted");
    }else {
        printf("Not Accepted");
    }
    return 0;
}