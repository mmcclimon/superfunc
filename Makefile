all: superfunc

superfunc: main.c
	$(CC) $(CFLAGS) $< -o $@
