# pngcc
A simple PNG to C compiler

# Usage:
```console
$ ./pngcc -i <input file> -o <output file>
```

```
$ ./pngcc -h
PNG 2 C Compiler
version: 0.1-dev

Usage:
        -i              The input file used to convert
        -o              The output file to write after converting
        -f              Set the pixel indexing format (use -f -l to list all)
        -v              Show the program version
        -h              Show this help menu

```

# Examples
> See [examples/print_image.c](https://github.com/D4yvid/p2c/tree/master/examples/print_image.c)

# Building
```
$ git submodule update --init --recursive       # Clone the STB repository
$ make                                          # Build the p2c binary
```

# Testing
```
$ make test
```
