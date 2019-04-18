
/* 
Yubin Lim yl2vv
huffmanNode.cpp
April 14, 2019
CS2150-103
*/ 

#include <stdlib.h>
#include <iostream>
#include "huffmanNode.h"
using namespace std;

huffmanNode::huffmanNode(int i, char c2) {
	c = c2;
	frequency = i;
	left = NULL;
	right = NULL;
}

huffmanNode::huffmanNode(int i) {
	frequency = i;
	c = '\n';
	left = NULL;
	right = NULL;
}