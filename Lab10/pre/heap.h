/* 
Yubin Lim yl2vv
heap.h
April 14, 2019
CS2150-103
*/ 

#ifndef HEAP_H
#define HEAP_H

#include <vector>
#include <unordered_map>
#include "huffmanNode.h"
using namespace std;

class heap {
public:
	heap();
	heap(vector<huffmanNode*> vec);
	~heap();
	void insert(huffmanNode* x);
	huffmanNode* findMin();
	huffmanNode* deleteMin();
	unsigned int size();
	void makeEmpty();
	bool isEmpty();
	void print();
	

private:
	vector<huffmanNode*> h;
	unsigned int heap_size;
	void percolateUp(int hole);
	void percolateDown(int hole);
};

#endif
