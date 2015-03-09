%token NUM STR
%stype std::string
%%

thing 	: num {std::cout << "Thing is: " << $1 << std::endl;}
	| str {std::cout << "Thing is: " << $1 << std::endl;}
	;

num	: NUM {$$ = $1;}
	;

str	: STR {$$ = lexer.YYText();}
	;	

%%

using namespace std;
