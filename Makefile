include config.mk

SRC=$(wildcard src/*.c)
OBJ=$(SRC:.c=.o)

$(NAME): $(OBJ)
	$(CC) $(CFLAGS) $^ -o $@

clean:
	rm -f $(NAME)
	rm -f $(OBJ)
