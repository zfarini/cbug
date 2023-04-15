./cbug $1.c || exit
gcc $1.s print.o error.o -fsanitize=address -fsanitize=undefined
./a.out
