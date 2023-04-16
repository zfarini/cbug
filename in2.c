int printf();
int scanf();

/*
typedef struct Var Var;
typedef struct X X;
typedef struct Node Node;
*/

struct Node {
	int type;
	Var *v;
	Node *node;
};

struct Var {
	char *name;
	X *x[100];
};


struct X {
	int x;
};

int main()
{
	Var v;
	X x;
	
	printf("hello\n");
	printf("%p\n", v.x);
	return 0;
	v.x[0] = &x;
	printf("hello\n");
	printf("%p\n", v.x[0]);
	//v.x[0]->x = 5;
	//printf("%d\n", x.x);
}

