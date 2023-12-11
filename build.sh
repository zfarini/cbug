FLAGS="-Wall -Wextra -Wshadow -fsanitize=address -fsanitize=undefined -Wno-unused-parameter"
gcc code/main.c code/file.c $FLAGS -o cbug
