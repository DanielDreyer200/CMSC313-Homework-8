CXX = g++
CXXFLAGS = -Wall

all: C++Test CTest

C++Test: Matrixplus.o C++Test.cpp
	$(CXX) $(CXXFLAGS) Matrixplus.o C++Test.cpp -o C++Test

Matrixplus.o: Matrixplus.h Matrixplus.cpp 
	$(CXX) $(CXXFLAGS) -c Matrixplus.cpp

CTest: Matrix.o CTest.c
	gcc  -std=c99 Matrix.o CTest.c -o  CTest

Matrix.o: Matrix.h Matrix.c
	gcc -c  -std=c99 Matrix.c

run:
	./C++Test

run1:
	./CTest

clean:
	rm *~
	rm *.o
