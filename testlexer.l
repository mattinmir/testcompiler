%option noyywrap
%{

#include "Parserbase.h"

%}

NUM 		[0-9]+
STR		\"(\\.|[^\\"])*\"

%%

{NUM}		return ParserBase::NUM;
{STR}		return ParserBase::STR;


%%

int main()
{
    yyFlexLexer lexer;
    while(lexer.yylex() != 0);

    return 0;
}
