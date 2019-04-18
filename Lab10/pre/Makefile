#Yubin Lim yl2vv
#Makefile
#April 15, 2019 
#CS2150 - 103

CXXFLAGS= -Wall -O2 -g -std=c++11
CXX=clang++ $(CXXFLAGS)
DEBUG=-Wall -g

.SUFFIXES: .o .cpp

OFILES = heap.o huffmanNode.o huffmanenc.o

main: $(OFILES)
	$(CXX) $(DEBUG) $(OFILES) 

heap.o: heap.cpp heap.h huffmanNode.h
	$(CXX) -c heap.cpp
huffmanNode.o: huffmanNode.cpp huffmanNode.h
	$(CXX) -c huffmanNode.cpp
huffmanenc.o: huffmanenc.cpp heap.h huffmanNode.h
	$(CXX) -c huffmanenc.cpp

clean:
	-rm *.o *.~ main