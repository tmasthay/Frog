CC = gcc
CFLAGS = -fPIC -Wall
TARGET_DIR = build/lib
TARGET = $(TARGET_DIR)/libarith.so
EXAMPLE = build/main

all: $(TARGET) $(EXAMPLE)

$(TARGET): arith.o
	mkdir -p $(TARGET_DIR)
	$(CC) -shared -o $(TARGET) arith.o
	rm -f arith.o

arith.o: arith.c arith.h
	$(CC) $(CFLAGS) -c arith.c -o arith.o

$(EXAMPLE): examples/main.c
	$(CC) -o $(EXAMPLE) examples/main.c -L$(TARGET_DIR) -larith

run: all
	./build/main

clean:
	rm -f *.o $(TARGET) $(EXAMPLE)
