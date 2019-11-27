%{ 
#include<string.h>
int len=0, counter=0; 
%} 

%% 
[a-zA-Z]+ { len=strlen(yytext); 
			if(len<10 && len>5) 
			{counter++;} } 
%% 

int yywrap (void){} 

int main() 
{ 
printf("Enter the string:"); 
yylex(); 
printf("\n %d", counter); 
return 0; 
} 
