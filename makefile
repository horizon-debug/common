CC=gcc
XX=g++
TARGET=main
SOURCES=$(wildcard *.c)
OBJS=$(patsubst %.c,%.o,$(SOURCES))
$(TARGET):$(OBJS)
	$(CC) -o $(TARGET) $(OBJS)
$(OBJS):$(SOURCES)
	$(CC) -c $(SOURCES)

clean:
	rm -fr *.o $(TARGET)
