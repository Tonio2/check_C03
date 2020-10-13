#include <string.h>

int ft_strcmp(char *s1, char *s2, unsigned int n)
{
	return (strncmp(s1, s2, n));
}
