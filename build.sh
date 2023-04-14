FLAGS="-Wall -Wextra -Wshadow -fsanitize=address -fsanitize=undefined -Wno-unused-parameter"
gcc main.c $FLAGS -o cbug
