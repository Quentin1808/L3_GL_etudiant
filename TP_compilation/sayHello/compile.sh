#!/bin/bash

#g++ -std=c++11 -Wall -Wextra -o execSayHello sayHello.cpp module1.cpp;

g++ -std=c++11 -Wall -Wextra -c module1.cpp 
g++ -std=c++11 -Wall -Wextra -c sayHello.cpp
g++ -std=c++11 -Wall -Wextra -o execHello module1.o sayHello.o

echo "Script effectué"
