CC = gcc
CFLAGS = -Wall -Wextra -g
LDFLAGS = -lSDL2

all: game

game: main.o
	$(CC) $(CFLAGS) -o game main.o $(LDFLAGS)

main.o: main.c
	$(CC) $(CFLAGS) -c main.c

clean:
	rm -f *.o game
