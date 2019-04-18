
/* 
Yubin Lim yl2vv
huffmanNode.h
April 14, 2019
CS2150-103
*/ 

#ifndef HUFFMANNODE_H
#define HUFFMANNODE_H

using namespace std;

class huffmanNode {
	public:
		huffmanNode(int i, char ch);
		huffmanNode(int i);
		huffmanNode* left; 
		huffmanNode* right;
		char c;
		int frequency;
};

#endif