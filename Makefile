CC=gcc
AR=ar
OBJECTS_MAIN=main.o
OBJECTS_LIB=power.o myMath.h basicMath.o
FLAGS= -Wall -g

all: libmyMath.so libmyMath.a mains maind	
mains: $(OBJECTS_MAIN) libmyMath.a 
	$(CC) $(FLAGS) -o mains $(OBJECTS_MAIN) libmyMath.a
maind: $(OBJECTS_MAIN)
	$(CC) $(FLAGS) -o maind $(OBJECTS_MAIN) ./libmyMath.so
libmyMath.so: $(OBJECTS_LIB)
	$(CC) -shared -o libmyMath.so $(OBJECTS_LIB)
libmyMath.a: $(OBJECTS_LIB)
	$(AR) -rcs libmyMath.a $(OBJECTS_LIB)	
power.o: power.c myMath.h
	$(CC) $(FLAGS) -c power.c
basicMath.o:basicMath.c myMath.h
	$(CC) $(FLAGS) -c basicMath.c 
main.o: main.c myMath.h  basicMath.c power.c
	$(CC) $(FLAGS) -c main.c 
myMath.o: power.o basicMath.o myMath.h
	$(CC) $(FLAGS) -c power.c basicMath.c

.PHONY: clean all

clean:
	rm -f *.o  mains maind
