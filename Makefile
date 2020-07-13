include config.mk

SRC=$(wildcard src/*.c)
SRC+=lib/cofyc/argparse/argparse.c
SRC+=lib/finwo/http-parser/src/http-parser.c
OBJ=$(SRC:.c=.o)

INCLUDES?=
INCLUDES+=-Ilib/cofyc/argparse
INCLUDES+=-Ilib/finwo/http-parser/src

.c.o: $(@:.o=.c)
	$(CC) $(CFLAGSG) $(INCLUDES) $^ -c -o $@

$(NAME): $(OBJ)
	$(CC) $(CFLAGS) $(INCLUDES) $^ -o $@

clean:
	rm -f $(OBJ)
