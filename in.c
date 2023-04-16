int printf();
void exit();
void *malloc();
int scanf();


/*
typedef struct pair pair;
typedef struct S S;
typedef struct p3 p3;
*/

/*
 *
struct S 
{
	int x, z;
	char c;
	int y;
};



struct pair
{
	int first, second;
};

struct p3
{
	pair p;
	int z;
};



pair *new_pair(int x, int y)
{
	pair *p = malloc(sizeof(*p));
	p->first = x;
	p->second = y;
	return p;
}

int *pg;
*/
enum E {
	INT = 7,
	VOID,
	CHAR,
};

struct X {
	int x;
	char c;
	int y;
};

X v[100];
int main()
{

	/*
	return 0;
	{
	}
	{
		p3 p;
		p.p.first = 1;
		p.p.second = 2;
		p.z = 6;
		printf("%d %d %d\n", p.p.first, p.p.second, p.z);
	}
	pair p;

	p.first = 1, p.second = 2;
	pair *ptr = &p;
//printf("%d\n", &p == p);
	//ASSERT(1, &p == p);

	pair p2 = *ptr;
	printf("%d %d\n", p2.first, p2.second);
	*/
	/*TODO:
		struct:
			init
			comparing 
			pass to functions
			return value
			non-named structs
			declare inside of functions
		fix globals (with struct and stuff)
		evaluate compile time expression (globals init and arrays size)
		typedefs + make declarations simple and more correct
		function pointers
		better errors
		function prototype + type checking for args in calls
		multi dimension array + their init
		varags functions
	*/
	
}
