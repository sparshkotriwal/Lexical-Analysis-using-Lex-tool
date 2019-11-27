%{ 
#include<stdio.h> 
int num, r, b=0, p=1; 
%} 

DIGIT [0-9] 
%% 
{DIGIT}+ { num=atoi(yytext); 
			while (num > 0) 
			{ 
			r= num % 2; 
			b+= r*p; 
			p*= 10; 
			num/= 2; 
			} 
			printf("%d", b); 
		 }
		
%% 

int yywrap(void){} 
int main() 
{ 
	yylex(); 
	return 0; 
}	 
