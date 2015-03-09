%option noyywrap
%{
#include <iostream>
#include "Parserbase.h"
using namespace std;
%}

NUM 			[0-9]+
SUB				-
ADD				+
MULT			*
DIV				/ 


%%

{NUM}		return ParserBase::NUM;
{SUB}		return ParserBase::SUB;
{ADD}		return ParserBase::ADD;
{MULT}		return ParserBase::MULT;
{DIV}		return ParserBase::DIV;
";"			return ParserBase::EOL;
.			;

%%

int main()
{
    yyFlexLexer lexer;
    while(lexer.yylex() != 0);

    return 0;
}