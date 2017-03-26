#In The Name of Allah

all: main.run
.PHONY: all

main.run: main.o funcs.o
	g++ -o main.run main.o funcs.o

funcs.o: funcs.hpp funcs.cxx
	g++ -c -o funcs.o funcs.cxx

main.o: main.cpp
	g++ -c -o main.o main.cpp

clean:
	rm -rf *.o
.PHONY: clean

clean/all: clean
	rm -rf main.run
.PHONY: clean/all

clear: all clean
.PHONY: clear
