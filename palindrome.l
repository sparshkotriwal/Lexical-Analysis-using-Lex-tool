%{ 
	int i, j, flag; 
%} 
%% 
	[a-zA-Z0-9]* 
{ 
	for (i=0,j=yyleng-1;i<=j;i++,j--)
	 { 
		if (yytext[i] == yytext[j]) { 
			flag = 1; 
		} 
		else { 
			flag = 0; 
			break; 
		} 
	}
} 
%% 
int yywrap() 
{ 
	return 1; 
} 

int main() 
{ 
	printf("Enter a string :"); 
	yylex();
	if (flag == 1) 
		printf("Given string is Palindrome"); 
	else
		printf("Given string is not Palindrome");  
	return 0; 
} 
