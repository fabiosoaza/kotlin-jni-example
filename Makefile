CC= gcc
RM= rm -vf
CFLAGS= -Wall -g -I${JAVA_HOME}/include -I${JAVA_HOME}/include/linux -shared
CPPFLAGS= -I. 

SOURCES = $(shell echo native/src/*.c)
HEADERS = $(shell echo native/src/include/*.h)
OBJECTS = $(SOURCES:.c=.o)
TARGET  = native/libjni-example.so

all: $(TARGET)
clean:
	$(RM) native/*.so native/*.o native/src/*.o
$(TARGET): $(OBJECTS)
	$(CC) $(FLAGS) $(CFLAGS) -o $(TARGET) $(OBJECTS)
