#include <stdio.h>
#include <stdlib.h>

void error(int line, unsigned long expected, unsigned long found)
{
	printf("line %d: assertion failed\n", line);
	int s1[64] = {};
	int s2[64] = {};
	for (int i = 0; i < 64; i++)
	{
		s1[i] = expected % 2;
		s2[i] = found % 2;
		expected = expected / 2;
		found = found / 2;
	}
	printf("expected: ");
	for (int i = 0; i < 64; i++)
		printf("%d", s1[64 - i - 1]);
	printf("\n");
	printf("found:    ");
	for (int i = 0; i < 64; i++)
		printf("%d", s2[64 - i - 1]);
	printf("\n");
	exit(1);
}
