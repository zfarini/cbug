./cbug test.c
gcc test.s error.c -o tester -fsanitize=address -fsanitize=undefined
./tester