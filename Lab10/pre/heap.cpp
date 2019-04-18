/* 
Yubin Lim yl2vv
heap.cpp
April 14, 2019
CS2150-103
*/ 
#include <vector>
#include <stdlib.h>
#include<stdio.h>
#include <unordered_map>
#include <string>
#include <iostream>
#include "heap.h"
#include "huffmanNode.h"
using namespace std;

heap::heap() : heap_size(0) {
	h.push_back(0);
}

heap::heap(vector<huffmanNode*> vec) : heap_size(vec.size()) {
	h = vec;
	h.push_back(h[0]);
	h[0] = 0;
	for (int i = heap_size/2; i > 0; i--)
		percolateDown(i);
}

heap::~heap() {
}
	
void heap::insert(huffmanNode* x) {
	h.push_back(x);
	percolateUp(++heap_size);
}
	
huffmanNode* heap::findMin() {
 	if ( heap_size == 0 )
        throw "findMin() called on empty heap";
    return h[1];
}
	
huffmanNode* heap::deleteMin() {
	if( heap_size == 0) {
		throw "deleteMin() called on empty heap";
	}
	huffmanNode* ret = h[1];
	h[1] = h[heap_size--];
	h.pop_back();
	percolateDown(1);
	return ret;
}
	
unsigned int heap::size() {
	return heap_size;
}
	
void heap::makeEmpty() {
	heap_size = 0;
	h.resize(1);
}

bool heap::isEmpty() {
	return heap_size == 0;
}

void heap::print() {
	cout << "(" << h[0] << ") ";
	    for ( int i = 1; i <= heap_size; i++ ) {
	        cout << h[i]->c << " ";
	        // next line from from 
	        // http://tinyurl.com/mf9tbgm
	        bool isPow2 = (((i+1) & ~(i))==(i+1))? i+1 : 0; 
	        if ( isPow2 )
	            cout << endl << "\t";
	    }
	    cout << endl;
}

void heap::percolateUp(int hole) {
	huffmanNode* x = h[hole];
	for ( ; (hole > 1) && (x->frequency < h[hole/2]->frequency); hole /=2) {
		h[hole] = h[hole/2];
	}
	h[hole] = x;
}

void heap::percolateDown(int hole) {
	huffmanNode* x = h[hole];
	while ( hole*2 <= heap_size ) {
        int child = hole*2; 
        if ( (child+1 <= heap_size) && 
             (h[child+1]->frequency < h[child]->frequency) )
            child++;
        if ( x->frequency > h[child]->frequency ) {
            h[hole] = h[child]; 
            hole = child;             
        } else
            break;
    }
    h[hole] = x;
}
