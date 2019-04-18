#Yubin Lim yl2vv
#Makefile
#February 28, 2019 
#CS2150 - 103
CXXFLAGS= -Wall -O2 -g -std=c++11
CXX=clang++ $(CXXFLAGS)
DEBUG=-Wall -g

.SUFFIXES: .o .cpp

OFILES = AVLNode.o AVLTree.o AVLPathTest.o

BST: $(OFILES)
	$(CXX) $(DEBUG) $(OFILES) 

AVLNode.o: AVLNode.cpp AVLNode.h
	$(CXX) -c AVLNode.cpp
AVLPathTest.o: AVLPathTest.cpp AVLTree.h AVLNode.h
	$(CXX) -c AVLPathTest.cpp
AVLTree.o: AVLTree.cpp AVLTree.h AVLNode.h
	$(CXX) -c AVLTree.cpp

clean:
	-rm *.o a.out