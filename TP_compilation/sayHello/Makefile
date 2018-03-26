#FLAGS = -std=c++11 -Wall -Wextra -g -O0

#all: module1.o sayHello.o sayHello.out

#module1.o: module1.hpp module1.cpp
#	g++ $(FLAGS) -c module1.hpp module1.cpp

#sayHello.o: sayHello.cpp
#	g++ $(FLAGS)  -c sayHello.cpp

#sayHello.out: module1.o sayHello.o
#	g++ $(FLAGS) -o sayHello.out  module1.o  sayHello.o


CC=g++
CFLAGS=-W -Wall -ansi -pedantic -std=c++11 -O0 -g 
LDFLAGS=
EXEC=sayHello.out

all: $(EXEC)

sayHello.out: module1.o sayHello.o
	$(CC) -o sayHello.out module1.o sayHello.o $(LDFLAGS)

module1.o: module1.cpp
	$(CC) -o module1.o -c module1.cpp $(CFLAGS)

sayHello.o: sayHello.cpp
	$(CC) -o sayHello.o -c sayHello.cpp $(CFLAGS)


clean:
	rm -rf *.o

mrproper: clean
	rm -rf $(EXEC)
