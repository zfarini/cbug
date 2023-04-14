int printf();
void exit();
int write();

int fib(int n)
{
	if (n <= 1)
		return n;
	return fib(n - 1) + fib(n - 2);
}

int strlen(char *s)
{
	int i = 0;
	while (s[i])
		i++;
	return i;
}

void ft_putstr(char *s)
{
	write(1, s, strlen(s));
}

void swap(int *x, int *y)
{
	int temp = *y;
	*y = *x;
	*x = temp;
}

int main()
{
	ft_putstr("bla\n");
	int arr[10];
	for (int i = 0; i < 10; i++)
		arr[i] = i;
	swap(&arr[0], &arr[1]);
	return 0;
}
