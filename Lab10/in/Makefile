#Yubin Lim yl2vv
#Makefile
#April 15, 2019 
#CS2150 - 103

CXXFLAGS= -Wall -O2 -g -std=c++11
CXX=clang++ $(CXXFLAGS)
DEBUG=-Wall -g

.SUFFIXES: .o .cpp

OFILES = huffmanNode.o huffmandec.o

main: $(OFILES)
	$(CXX) $(DEBUG) $(OFILES) 

huffmanNode.o: huffmanNode.cpp huffmanNode.h
	$(CXX) -c huffmanNode.cpp
huffmandec.o: huffmandec.cpp huffmanNode.h
	$(CXX) -c huffmandec.cpp

clean:
	-rm *.o *.~ main