#include <iostream>
#include "../include/Parser.hpp"

using namespace std;

Parser::Parser(int arg1){
    testVar = arg1;
}

Parser::~Parser(){
    cout << "Exiting!\n";
}

void Parser::parse(){
    cout << "Beginning to parse...\n";

}
