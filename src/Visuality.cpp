#include <iostream>
#include "../include/Parser.hpp"

using namespace std;

int main(){
    cout << "Hello, world!\n";

    Parser newParser(5);
    newParser.parse();

    return 0;
}
