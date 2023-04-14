#include <stdio.h>

int main()
{
	int x = 2147483647;
	short c = x * 42;
	char d = x;
	printf("%d %d %d\n", d, x, c);
}
