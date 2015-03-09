%token NUM SUB ADD MULT DIV EOL
%{
	#include <iostream>
	using namespace std;
%}
%%

line	: expr EOL  {cout << $1 << endl;}
		;

expr	: NUM ADD expr 	{$$ = $1 + $3}
		| NUM SUB expr 	{$$ = $1 - $3}
		| NUM MULT expr {$$ = $1 * $3}
		| NUM DIV expr 	{$$ = $1 / $3}
		| NUM			{$$ = $1}
		;

