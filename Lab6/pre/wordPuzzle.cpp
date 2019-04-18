/* Yubin Lim yl2vv
wordPuzzle.cpp
March 4, 2019 
CS2150 - 103*/

#include <iostream>
#include <fstream>
#include <string>
#include <stdlib.h>

#include "timer.h"
#include "hashTable.h"
using namespace std;

// We create a 2-D array of some big size, and assume that the grid
// read in will be less than this size (a valid assumption for lab 6)
#define MAXROWS 500
#define MAXCOLS 500
char grid[MAXROWS][MAXCOLS];

// Forward declarations
bool readInGrid (string filename, int &rows, int &cols);
char* getWordInGrid (int startRow, int startCol, int dir, int len,
                     int numRows, int numCols);
string direction (int x);

string direction (int d) {
	if(d == 0) return "N";
	else if(d == 1) return "NE";
	else if(d == 2) return "E";
	else if(d == 3) return "SE";
	else if(d == 4) return "S";
	else if(d == 5) return "SW";
	else if(d == 6) return "W";
	else return "NW";
}

bool readInGrid (string filename, int &rows, int &cols) {
    string line;
    ifstream file(filename.c_str());
    if ( !file.is_open() )
        return false;
    file >> rows;
    // cout << "There are " << rows << " rows." << endl;
    getline (file,line); 
    file >> cols;
    // cout << "There are " << cols << " cols." << endl;
    getline (file,line); 
    getline (file,line);
    file.close();
    int pos = 0;
    for ( int r = 0; r < rows; r++ ) {
        for ( int c = 0; c < cols; c++ ) {
            grid[r][c] = line[pos++];
            // cout << grid[r][c];
        }
        // cout << endl;
    }
    return true;
}



char* getWordInGrid (int startRow, int startCol, int dir, int len,
                     int numRows, int numCols) {
    static char output[256];
    if ( len >= 255 )
        len = 255;
    int pos = 0, r = startRow, c = startCol;
    for ( int i = 0; i < len; i++ ) {
        if ( (c >= numCols) || (r >= numRows) || (r < 0) || (c < 0) )
            break;
        output[pos++] = grid[r][c];
        switch (dir) { // assumes grid[0][0] is in the upper-left
            case 0:
                r--;
                break; // north
            case 1:
                r--;
                c++;
                break; // north-east
            case 2:
                c++;
                break; // east
            case 3:
                r++;
                c++;
                break; // south-east
            case 4:
                r++;
                break; // south
            case 5:
                r++;
                c--;
                break; // south-west
            case 6:
                c--;
                break; // west
            case 7:
                r--;
                c--;
                break; // north-west
        }
    }
    output[pos] = 0;

    return output;
}

int main (int argc, char **argv) {

//---------------------- Read dictionary file ------------------//
	string dictionary_file = argv[1];
	string grid_file = argv[2];

	ifstream myfile(dictionary_file.c_str());

	int number_of_lines = 0;
	string line;

    while(myfile.good()) {
    	getline(myfile,line);
    	number_of_lines++;
	}
	myfile.close();

//--------------- Make hashTable of words ------------------------//
	hashTable* dictionary = new hashTable(number_of_lines);

	ifstream mywords(dictionary_file.c_str());
	while(mywords.good()) {
		getline(mywords,line);
		if (line.length() > 2 && line.length() <= 22)
	    	dictionary->insert(line);
	}
	mywords.close();

//------- Attempt to read in the file annd check for errors -------//
	//ifstream file(grid_file.c_str());
	int rows, cols;
    bool result = readInGrid(grid_file.c_str(), rows, cols);
    if ( !result ) {
        cout << "Error reading in file!" << endl;
        exit(1); 
    }
//--------------- Read file and find words with timer---------------//
	int counter = 0;
	timer t;
	t.start();
	for (int x=0; x<rows; x++) {
		for (int y=0; y<cols; y++) {
			for (int d=0; d<8; d++) {
				for (int l=0; l<=22; l++) {
					string grid_word = getWordInGrid(x,y,d,l,rows,cols);
					if(l > grid_word.length())
						break;
					if (dictionary->contains(grid_word)) {
						counter++;
						cout << direction(d) << " (" << x << ", " << y << "):\t " << grid_word << endl;
					}
				}
			}
		}
	}
	t.stop();
	cout << endl;
	cout << counter << " words found" << endl;
	cout << "Found all words in : " << t.getTime() << " seconds" << endl;
    cout << (int)(t.getTime()*1000);
	return 0;
}
