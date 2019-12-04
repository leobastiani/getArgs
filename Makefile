CC=gcc
FLAGS=
CFLAGS=-c $(FLAGS)
LDFLAGS=$(FLAGS)
SOURCES=$(wildcard *.c)
OBJECTS=$(SOURCES:.c=.o)
EXECUTABLE=getArgs

all: $(SOURCES) $(EXECUTABLE)
	
run: $(EXECUTABLE)
	./$(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(OBJECTS) -o $@ $(LDFLAGS)

debug: $(SOURCES)
	$(CC) $(SOURCES) -o $(EXECUTABLE) $(LDFLAGS) -g -DDEBUG
	./$(EXECUTABLE)

test:  $(SOURCES)
	$(CC) $(SOURCES) -o $(EXECUTABLE) $(LDFLAGS) -g -DDEBUG -DTEST
	./$(EXECUTABLE)


sublimegdb: $(SOURCES)
	$(CC) $(SOURCES) -o $(EXECUTABLE) $(LDFLAGS) -g -DDEBUG -DSGDB

.c.o:
	$(CC) $< -o $@ $(CFLAGS)

clear:
	rm *.o &
	rm $(EXECUTABLE)