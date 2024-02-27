# https://makefiletutorial.com/#getting-started
# https://bytes.usc.edu/cs104/wiki/gcc

CXX = g++
CXXFLAGS = -g # turn on debug info
OPT = -O3 # optimization level 3
WARN = -Wall # shows all warnings
INCLUDES = ./include #Adding the header files

CFLAGS = $(OPT) $(WARN) # Optimized run
CFLAGS = $(CXXFLAGS) $(WARN) # Debug

#Default rule
all:
	$(CXX) $(CFLAGS) -I $(INCLUDES) ./src/main.cc -o ./bin/main

#cleaning
clean:
	rm -f ./build/*.o
	rm -f ./bin/*