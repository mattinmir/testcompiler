all: lex.yy.cc parse.cc
	g++ lex.yy.cc parse.cc -o calc

lex.yy.cc:
	flex++ testlexer.l

parse.cc:
	bisonc++ testparser.y

clean:
	rm !(*.y | *.l | Parser.ih | Parser.h)	
