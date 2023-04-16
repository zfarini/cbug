#include <stdio.h>
#include <stdarg.h>

int type_match(int type, ...)
{
	va_list ap;
	va_start(ap, type);
	while (1)
	{
		int t = va_arg(ap, int);
		printf("%d\n", t);
		if (t < 0)
			break ;
	}
	va_end(ap);
	return (0);
}
