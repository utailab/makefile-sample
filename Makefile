#In The Name of Allah

CXX = g++
TARGET = main.run
OBJ = funcs.o
HEADERS = funcs.hpp
SOURCES = funcs.cxx
MAIN = main

all: $(TARGET)
.PHONY: all

$(TARGET): $(OBJ) $(MAIN).o
	$(CXX) -o $(TARGET) $(OBJ) $(MAIN).o

$(OBJ): $(SOURCES) $(HEADERS)
	$(CXX) -c -o funcs.o $(SOURCES)

$(MAIN).o: $(MAIN).cpp $(HEADERS)
	$(CXX) -c -o $(MAIN).o $(MAIN).cpp

clean:
	rm -rf *.o
.PHONY: clean

distclean clean/all: clean
	rm -rf main.run
.PHONY: clean/all

clear: all clean
.PHONY: clear
