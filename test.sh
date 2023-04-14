./cbug test.c
gcc test.s print.o -fsanitize=address -fsanitize=undefined
./a.out
if [ $? -eq 0 ]; then
	echo "OK"
else
	echo "FAILED"
fi

