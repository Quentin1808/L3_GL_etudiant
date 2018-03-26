FLAGS = -std=c++11 -Wall -Wextra

all: imshow.o imshow.out

imshow.o: imshow.cpp
	g++ $(FLAGS) -c imshow.cpp

imshow.out: imshow.o
	g++ $(FLAGS) -o imshow.out imshow.o `pkg-config --libs opencv`
