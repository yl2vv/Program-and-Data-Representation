/* Yubin Lim yl2vv
hashTable.h
March 4, 2019 
CS2150 - 103*/

#ifndef HASHTABLE_H
#define HASHTABLE_H

#include <vector>
#include <string>
#include <list>
#include <cstdlib>

using namespace std;

class hashTable {
public:
	hashTable();
	hashTable(int s);
	~hashTable();
	bool contains(string s);
	void insert(string s);
	int hash(string s);
	bool checkprime(unsigned int p);
	int getNextPrime (unsigned int n);

private:
	vector< list<string> > * ht;
	int size;

};

#endif