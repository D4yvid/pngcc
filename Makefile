SRC = main.c

CC = clang
CFLAGS += -Wall -Werror -Wno-pedantic -Wno-macro-redefined -Wno-unused-function -Wno-unused-parameter \
	  -Wno-unused-variable -ansi -D_XOPEN_SOURCE=500 -I third-party/stb
LFLAGS += -lm

TARGET = pngcc

all:
	$(CC) -o $(TARGET) $(SRC) $(CFLAGS) $(LFLAGS)

test: all
	./$(TARGET) -o examples/image.h -i examples/image.png
	$(CC) -o examples/print_image examples/print_image.c -Iexamples
	./examples/print_image

clean:
	@rm -rf $(TARGET) examples/print_image examples/image.h
