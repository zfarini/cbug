./build.sh || exit
gcc -E main2.c > final.c || exit
./cbug final.c|| exit
gcc final.s file.c -fsanitize=address -fsanitize=undefined -o cbug2
