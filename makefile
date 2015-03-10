all:  testparser.tab.cc lex.yy.cc
	g++  testparser.tab.cc lex.yy.cc -o calc

testparser.tab.hh testparser.tab.cc:
	bison -d testparser.y -o testparser.tab.cc

lex.yy.cc: testparser.tab.hh
	flex --outfile='lex.yy.cc' testlexer.l

clean:
	rm lex.yy.cc testparser.tab.cc
