int printf();
void exit();


int main()
{
	for (int i = 0; ; i++)
	{
		for (int j = 0; ; j++)
		{
			if (j > i)
				break ;
			printf("*");
		}
		if (i == 5)
			break ;
		printf("\n");
	}
	//printf("%d %p %p\n", arr == &arr, arr, &arr);
	//ASSERT(1, arr == &arr);

	//ASSERT(9223372036854775758 * 2, x);
	//x = x / 2;
	//ASSERT(9223372036854775758, ((unsigned long)-100) / 2);
	//ASSERT(-1, (unsigned long)-1);
	//ASSERT(0, -1<(unsigned)1);
	//ASSERT(1, -1<1);
	//unsigned a = -1;
	//unsigned b = 1;
	//printf("%d\n", (unsigned)(-1) > b);
	//printf("%d\n", (unsigned long)(-1));

	// (-128)
	// 1000 0000
	//[0 - 255]
	//
	/*
	ASSERT(0, -1<(unsigned)1);

	ASSERT(254, (char)127+(char)127);
	ASSERT(65534, (short)32767+(short)32767);
	ASSERT(-50, (-100)/2);

	ASSERT(2147483598, ((unsigned)-100)/2);

	*/

}
