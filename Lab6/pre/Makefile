#Yubin Lim yl2vv
#Makefile
#March 4, 2019 
#CS2150 - 103

CXXFLAGS= -Wall -O2 -g -std=c++11
CXX=clang++ $(CXXFLAGS)
DEBUG=-Wall -g

.SUFFIXES: .o .cpp

OFILES = timer.o hashTable.o wordPuzzle.o

main: $(OFILES)
	$(CXX) $(DEBUG) $(OFILES) 

hashTable.o: hashTable.cpp hashTable.h
	$(CXX) -c hashTable.cpp
timer.o: timer.cpp timer.h
	$(CXX) -c timer.cpp
wordPuzzle.o: wordPuzzle.cpp timer.h hashTable.h
	$(CXX) -c wordPuzzle.cpp

clean:
	-rm *.o *.~ main