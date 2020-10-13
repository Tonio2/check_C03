#include <string.h>

unsigned int ft_strlcat(char *dest, char *src, unsigned int size)
{
	return ((unsigned int)(strlcat(dest, src, size)));
}
