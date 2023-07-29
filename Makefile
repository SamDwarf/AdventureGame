CC = g++
EXEC = FreeTravel
FLAGS = -Wall -Werror
LIBS = 

all: $(EXEC)

obj:
	mkdir obj

bin:
	mkdir bin

clean:
	rm obj/*

clear: clean
	rm -rf bin/
	rm -r obj

$(EXEC): obj bin obj/main.o
	$(CC) obj/*.o -o bin/$(EXEC) $(LIBS)

obj/main.o:
	$(CC) src/main.cpp -c -o obj/main.o $(FLAGS)
