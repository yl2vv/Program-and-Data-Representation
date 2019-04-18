/* 
Yubin Lim yl2vv
huffmandec.cpp
April 16, 2019
CS2150-103
*/ 

#include <iostream>
#include <fstream>
#include <sstream>
#include <stdlib.h>
#include "huffmanNode.h"
using namespace std;

void makeTree(huffmanNode*& node, char c, string s){
	if(s.length() == 0){
    	node = new huffmanNode(0, c);
    	return;
	}
	if(node == NULL)
      	node = new huffmanNode(0);
  	if(s[0] ==  '0')
    	makeTree(node->left, c, s.substr(1));
  	else
    makeTree(node->right, c, s.substr(1));
  }

void readTree(huffmanNode*& node, string s){
  	if(node->left == NULL && node->right == NULL)
    	cout<< node->c;
    if(s[0] == '0')
		readTree(node->left, s.substr(1));
    if(s[0] == '1')
		readTree(node->right, s.substr(1));
    }

int main (int argc, char **argv) {

	if ( argc != 2 ) {
        cout << "Must supply the input file name as the only parameter" << endl;
        exit(1);
    }

    ifstream file(argv[1], ifstream::binary);

    if ( !file.is_open() ) {
    cout << "Unable to open file '" << argv[1] << "'." << endl;
    exit(2);
    }

    huffmanNode* node = new huffmanNode(0);

    while ( true ) {
        string character, prefix;

        file >> character;

        if ( (character[0] == '-') && (character.length() > 1) )
            break;

        if ( character == "space" )
            character = " ";

        file >> prefix;

        makeTree(node, character[0], prefix);
    }

    stringstream sstm;
    while ( true ) {
        string bits;

        file >> bits;

        if ( bits[0] == '-' )
            break;

        sstm << bits;

        readTree(node,bits);
    }

    cout << endl;

    file.close();
    delete node;
}