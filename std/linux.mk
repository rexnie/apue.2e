include ../Make.defines.linux

PROGS = conf options

all:	${PROGS}

conf:	conf.c

conf.c: makeconf.awk sysconf.sym pathconf.sym
	nawk -f makeconf.awk >conf.c

options:	options.c

options.c: makeopt.awk sysopt.sym pathopt.sym
	nawk -f makeopt.awk >options.c

clean:
	rm -f ${PROGS} ${TEMPFILES} options.c conf.c
