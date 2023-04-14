int printf();
void exit();

void error(int line, int expected,int found)
{
	printf("line %d: assertion failed, expected %d, but found %d\n",
			line, expected, found);
	exit(1);
}

int main()
{
	ASSERT(3, { int a; a=3; a; });

 	ASSERT(3, { int a=3; a; });
 	ASSERT(8, { int a=3; int z=5; a+z; });
 	ASSERT(3, { int a=3; a; });
 	ASSERT(8, { int a=3; int z=5; a+z; });
 	ASSERT(6, { int a; int b; a=b=3; a+b; });

 	ASSERT(3, { int foo=3; foo; });
 	ASSERT(8, { int foo123=3; int bar=5; foo123+bar; });
	ASSERT(2, { int x=2; { int x=3; } x; });
	ASSERT(2, { int x=2; { int x=3; } int y=4; x; });
  	ASSERT(3, { int x=2; { x=3; } x; });
	ASSERT(3, { int x; if (0) x=2; else x=3; x; });
 	ASSERT(3, { int x; if (1-1) x=2; else x=3; x; });
 	ASSERT(2, { int x; if (1) x=2; else x=3; x; });
 	ASSERT(2, { int x; if (2-1) x=2; else x=3; x; });
 	ASSERT(55, { int i=0; int j=0; for (i=0; i<=10; i=i+1) j=i+j; j; });
 	ASSERT(10, { int i=0; while(i<10) i=i+1; i; });
 	ASSERT(3, { 1; {2;} 3; });
 	ASSERT(5, { ;;; 5; });
 	ASSERT(10, { int i=0; while(i<10) i=i+1; i; });
 	ASSERT(55, { int i=0; int j=0; while(i<=10) {j=i+j; i=i+1;} j; });
 	ASSERT(3, (1,2,3));
 	ASSERT(55, { int j=0; for (int i=0; i<=10; i=i+1) j=j+i; j; });
 	ASSERT(3, { int i=3; int j=0; for (int i=0; i<=10; i=i+1) j=j+i; i; });
 	ASSERT(1, 0||1);
 	ASSERT(1, 0||(2-2)||5);
 	ASSERT(0, 0||0);
 	ASSERT(0, 0||(2-2));
 	ASSERT(0, 0&&1);
 	ASSERT(0, (2-2)&&5);
 	ASSERT(1, 1&&5);

	ASSERT(3, { int x=3; *&x; });
	ASSERT(3, { int x=3; int *y=&x; int **z=&y; **z; });
	ASSERT(5, { int x=3; int y=5; *(&x-1); });
	ASSERT(3, { int x=3; int y=5; *(&y+1); });
	ASSERT(5, { int x=3; int y=5; *(&x+(-1)); });
	ASSERT(5, { int x=3; int *y=&x; *y=5; x; });
	ASSERT(7, { int x=3; int y=5; *(&x-1)=7; y; });
	ASSERT(7, { int x=3; int y=5; *(&y+2-1)=7; x; });
	//ASSERT(5, { int x=3; (&x+2)-&x+3; });

	ASSERT(8, { int x, y; x=3; y=5; x+y; });
	ASSERT(8, { int x=3, y=5; x+y; });

	ASSERT(3, { int x[2]; int *y=&x; *y=3; *x; });

	ASSERT(3, { int x[3]; *x=3; *(x+1)=4; *(x+2)=5; *x; });
	ASSERT(4, { int x[3]; *x=3; *(x+1)=4; *(x+2)=5; *(x+1); });
	ASSERT(5, { int x[3]; *x=3; *(x+1)=4; *(x+2)=5; *(x+2); });
	ASSERT(3, { int x[3]; *x=3; x[1]=4; x[2]=5; *x; });
	ASSERT(4, { int x[3]; *x=3; x[1]=4; x[2]=5; *(x+1); });
	ASSERT(5, { int x[3]; *x=3; x[1]=4; x[2]=5; *(x+2); });
	ASSERT(5, { int x[3]; *x=3; x[1]=4; x[2]=5; *(x+2); });
	ASSERT(5, { int x[3]; *x=3; x[1]=4; 2[x]=5; *(x+2); });

	ASSERT(5, { int i = 0;for (i = 1; i < 10; i++) if (i % 5 == 0) break; i; });

	ASSERT(5, { 
			int s = 0;
			for (int i = 0; i < 10; i++) 
			{
				if (i % 2)
					continue;
				s++;
			}
			s;
	});

	ASSERT(-1, (char)255);

	ASSERT(513, { int x=512; *(char *)&x=1; x; });

	ASSERT(1, -1<1);
	ASSERT(254, (char)127+(char)127);
	ASSERT(65534, (short)32767+(short)32767);

	ASSERT(1, sizeof(char));
  	ASSERT(2, sizeof(short));
  	ASSERT(4, sizeof(int));
	ASSERT(1, sizeof((char)1));
 	ASSERT(2, sizeof((short)1));
 	ASSERT(4, sizeof((int)1));

  	ASSERT(8, sizeof(int *));
	ASSERT(1, {int arr[2]; &arr == arr && arr == &arr[0];});
	ASSERT(8, {int arr[2]; sizeof(arr);});

  	ASSERT(4, sizeof(int));
	ASSERT(4, sizeof((char)1 + (char)1));
 	ASSERT(4, sizeof((short)1 + (short)1));

	ASSERT(1, { char i; sizeof(++i); });
  	ASSERT(1, { char i; sizeof(i++); });
	ASSERT(8, { long x; sizeof(x); });
	ASSERT(2, { short x; sizeof(x); });

	ASSERT(8, sizeof(-10 + (long)5));
	ASSERT(8, sizeof(-10 - (long)5));
	ASSERT(8, sizeof(-10 * (long)5));
	ASSERT(8, sizeof(-10 / (long)5));
	ASSERT(8, sizeof((long)-10 + 5));
	ASSERT(8, sizeof((long)-10 - 5));
	ASSERT(8, sizeof((long)-10 * 5));
	ASSERT(8, sizeof((long)-10 / 5));

	 ASSERT(131585, (int)8590066177);
  ASSERT(513, (short)8590066177);
  ASSERT(1, (char)8590066177);
  ASSERT(1, (long)1);
  ASSERT(0, (long)&*(int *)0);
  ASSERT(513, { int x=512; *(char *)&x=1; x; });
  ASSERT(5, { int x=5; long y=(long)&x; *(int*)y; });
}
