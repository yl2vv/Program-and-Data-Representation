#Yubin Lim yl2vv
#Makefile
#February 26, 2019 
#CS2150 - 103
CXXFLAGS= -Wall -O2 -g -std=c++11
CXX=clang++ $(CXXFLAGS)
DEBUG=-Wall -g

.SUFFIXES: .o .cpp

OFILES = BinaryNode.o BinarySearchTree.o BSTPathTest.o

BST: $(OFILES)
	$(CXX) $(DEBUG) $(OFILES) 

BSTPathTest.o: BSTPathTest.cpp BinarySearchTree.h BinarySearchTree.cpp BinaryNode.h BinaryNode.cpp
	$(CXX) -c BSTPathTest.cpp
BinaryNode.o: BinaryNode.cpp BinaryNode.h
	$(CXX) -c BinaryNode.cpp
BinarySearchTree.o: BinarySearchTree.cpp BinarySearchTree.h BinaryNode.cpp BinaryNode.h
	$(CXX) -c BinarySearchTree.cpp

clean:
	-rm *.o a.out