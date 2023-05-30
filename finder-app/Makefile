#default:
#	$(CROSS_COMPILE)gcc writer.c -o writer

#clean:
#	-rm -f *.o
#	-rm -f writer

ifndef CROSS_COMPILE
	CC=gcc
else
	CC=$(CROSS_COMPILE)gcc
endif


INCLUDES:= -I ./include
LIBS:=
LDFLAGS += -L./libs

all:	writer

writer: writer.c
	$(CC) $(INCLUDES) -c writer.c -o writer.o
	$(CC) $(LIBS) $(LDFLAGS) writer.o -o writer

clean:
	rm -rf *.o writer