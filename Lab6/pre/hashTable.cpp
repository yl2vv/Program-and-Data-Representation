/* Yubin Lim yl2vv
hashTable.cpp
March 4, 2019 
CS2150 - 103*/
#include "hashTable.h"
#include <vector>
#include <string>
#include <list>
#include <cstdlib>
#include <iostream>
#include <algorithm>

using namespace std;

hashTable::hashTable() {
	ht = new vector< list<string> >;
	size = 0;
}

hashTable::hashTable(int s) {
	ht = new vector< list<string> >;

	size = getNextPrime(2 * s);
	//size = s;

	for (int i = 0; i < size; i++) {
		list<string> newNode;
		ht->push_back(newNode);
	}
}

hashTable::~hashTable() {
	delete ht;
}

int hashTable::hash(string s) {
	unsigned int count = 0;
	for (int i=0; i<s.length(); i++) 
		count += s[i]*3;
	return count % size;
}

bool hashTable::contains(string s) {

	list<string>& l = ht->at(hash(s));
	return (find(l.begin(), l.end(), s) != l.end());
}

void hashTable::insert(string s) {
	ht->at(hash(s)).push_back(s);
}



bool hashTable::checkprime(unsigned int p) {
    if ( p <= 1 ) // 0 and 1 are not primes; the are both special cases
        return false;
    if ( p == 2 ) // 2 is prime
        return true;
    if ( p % 2 == 0 ) // even numbers other than 2 are not prime
        return false;
    for ( int i = 3; i*i <= p; i += 2 ) // only go up to the sqrt of p
        if ( p % i == 0 )
            return false;
    return true;
}

int hashTable::getNextPrime (unsigned int n) {
    while ( !checkprime(++n) );
    return n; // all your primes are belong to us
}

// int main() {
// 	hashTable* words = new hashTable(20);
// 	cout << words->contains("hello") << endl;
// 	words->insert("hello");
// 	cout << words->contains("hello") << endl;
// 	return 0;
// }