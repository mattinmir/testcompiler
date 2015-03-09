all:  parse.cc lex.yy.cc
	g++  parse.cc lex.yy.cc -o calc

parse.cc:
	bisonc++ testparser.y

lex.yy.cc:
	flex++ testlexer.l

clean:
	rm lex.yy.cc Parserbase.h parse.cc
