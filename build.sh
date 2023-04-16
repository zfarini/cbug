FLAGS="-Wall -Wextra -Wshadow -fsanitize=address -fsanitize=undefined -Wno-unused-parameter"
gcc main.c file.c $FLAGS -o cbug
