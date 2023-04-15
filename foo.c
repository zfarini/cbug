typedef struct S {

	int x[100];
	char c;
	int y;
} S;


int f(S s)
{

	s.y++;

	return s.c * s.y;
}

int f2()
{
	S s;
	f(s);
}

