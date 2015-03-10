%token NUM STR
%{
#include <iostream>
using namespace std;
int yylex();

%}
%type <string> thing
%type <string> num
%type <string> str
%%

thing 	: num {cout << "Thing is: " << $1 << endl;}
	| str {cout << "Thing is: " << $1 << endl;}
	;

num	: NUM {$$ = $1;}
	;

str	: STR {$$ = yytext;}
	;	

%%

int main()
{

    yyparse();

    return 0;
}
