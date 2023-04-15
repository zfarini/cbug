int printf();
int scanf();

struct pair {
	int x, y;
};

void swap(pair *x, pair *y)
{
	pair tmp = *y;
	*y = *x;
	*x = tmp;
}

void sort_by_sum(pair *x, int n)
{
	for (int i = 0; i < n; i++)
		for (int j = 1; j < n; j++)
			if (x[j].x + x[j].y < x[j-1].x + x[j-1].y)
				swap(&x[j - 1], &x[j]);
}

int main()
{
	pair a[100];
	int n;
	scanf("%d", &n);
	for (int i = 0; i < n; i++)
		scanf("%d%d", &a[i].x, &a[i].y);
	sort_by_sum(a, n);
	for (int i = 0; i < n; i++)
		printf("%d %d\n", a[i].x, a[i].y);
}
