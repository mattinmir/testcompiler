%option noyywrap
%{

#include "testparser.tab.hh"
#include <iostream>
using namespace std;

%}

NUM 		[0-9]+
STR		\"(\\.|[^\\"])*\"

%%

{NUM}		cout << "NUM"; return NUM;
{STR}		cout << "STR"; return STR;


%%

