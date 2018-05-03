# make module in figure
#make -f m.mk fig1.3

cur_mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
WKDIR := $(patsubst %/, %, $(dir $(cur_mkfile_path)))
CC=gcc
COMPILE.c=$(CC) $(CFLAGS) $(CPPFLAGS) -c
LINK.c=$(CC) $(CFLAGS) $(CPPFLAGS) $(LDDIR) $(LDFLAGS)
LDDIR=-L./lib
LDLIBS=./lib/libapue.a $(EXTRALIBS)
CFLAGS=-DLINUX -ansi -I$(WKDIR)/include -Wall -D_GNU_SOURCE $(EXTRA)

# Our library that almost every program needs.
LIB=../libapue.a

# Common temp files to delete from each directory.
#TEMPFILES=core core.* *.o temp.* *.out typescript*

EXTRA=

#all:	${PROGS}

#clean:
#	rm -f ${PROGS} ${TEMPFILES} *.o
