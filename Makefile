CC= gcc
RM= rm -vf
CFLAGS= -Wall -g -I${JAVA_HOME}/include -I${JAVA_HOME}/include/linux
CPPFLAGS= -I. 
SRCFILES= native/src/jni-example.c
OBJFILES= $(patsubst %.c, %.o, $(SRCFILES))
PROGFILES= $(patsubst %.c, %, $(SRCFILES))
#VPATH=native/src


.PHONY: all clean

all: $(PROGFILES)
clean:
	$(RM) $(OBJFILES) $(PROGFILES) *~
