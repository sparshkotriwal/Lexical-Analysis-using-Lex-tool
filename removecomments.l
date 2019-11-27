%{ 
%}


start \/\* 

end \*\/ 

/*Rule Section*/ 
%% 


\/\/(.*) ; 

{start}.*{end} ; 

%% 
int yywrap(void){}
int main(int k,char **argcv) 
{ 
yyin=fopen(argcv[1],"r"); 
yyout=fopen("something.c","w"); 

yylex(); 
return 0; 
} 
