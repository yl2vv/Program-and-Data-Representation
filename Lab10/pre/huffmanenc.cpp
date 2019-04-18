/* 
Yubin Lim yl2vv
huffmanenc.cpp
April 14, 2019
CS2150-103
*/ 
#include <iostream>
#include <algorithm>
#include <vector>
#include <stdlib.h>
#include<stdio.h>
#include <fstream>
#include <string>
#include "heap.h"
#include "huffmanNode.h"

using namespace std;

string prefix[126];
void printTree(huffmanNode* node, string s){
    if (node == NULL)
        return;
    if (node->left != NULL)
        printTree(node->left, s + "0");
    if (node->right != NULL)
        printTree(node->right, s + "1");
    else if (node->left == NULL && node->right == NULL){
        if (node->c == ' ') 
            cout << "space ";
        else {
            cout << node->c << " ";
        }
            prefix[(int)node->c] = s;
            cout << s << endl;
        }  
}

int main(int argc,char **argv) {

    if ( argc != 2 ) {
        cout << "Must supply the input file name as the one and only parameter" << endl;
        exit(1);
    }

    FILE *fp = fopen(argv[1], "r");

    if ( fp == NULL ) {
        cout << "File '" << argv[1] << "' does not exist!" << endl;
        exit(2);
    }

    vector<int> frequency;
    vector<char> cv;
    int total = 0;
    int distinct = 0;
    int word = 0;

    char g;
        while ( (g = fgetc(fp)) != EOF) {
        if ( find(cv.begin(), cv.end(),g) != cv.end()) {
            frequency[find(cv.begin(), cv.end(),g) - cv.begin()] += 1;
            total++;
        }
        else if (((int) g) > 31) {
            cv.push_back(g);
            frequency.push_back(1);
            total++;
        }
    }

    heap* h = new heap();

    for (int i = 0; i < frequency.size(); i++) {
        if (frequency[i] != 0) {
            int f = frequency[i];
            char c = cv[i];
            huffmanNode* node = new huffmanNode(f, c);
            h->insert(node);
            distinct++;
        }
    }

    while (h->size() > 1) {
        huffmanNode* hn = new huffmanNode(0);
        huffmanNode* l = h->deleteMin();
        huffmanNode* r = h->deleteMin();
        hn->frequency = l->frequency + r->frequency;
        hn->left = l;
        hn->right = r;
        h->insert(hn);
    }

    printTree(h->findMin(), "");

    cout << "----------------------------------------" << endl;
    rewind(fp);
    while ((g = fgetc(fp)) != EOF) {
        cout << prefix[(int)g] << " ";
        if ((int)g > 15)
            word = word + prefix[(int)g].size();
        }
    cout << endl;
    fclose(fp);

    cout << "----------------------------------------" << endl;

    cout << "There are a total of " << total << " symbols that are encoded." << endl;
    cout << "There are " << distinct << " distinct symbols used." << endl;
    cout << "There were " << total*8 << " bits in the original file." << endl;
    cout << "There are " << word << " bits in the compressed file." << endl;
    cout << "This gives a compression ratio of " << total*8.0/ (float) word << "." << endl;
    cout << "The cost of the Huffman tree is " << word/(float) total << " bits per character. " << endl;

    return 0;
}