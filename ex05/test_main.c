#include <string.h>
#include <stdio.h>
#include <stdlib.h>

unsigned int ft_strlcat(char *dest, char *src, unsigned int size);

int main(int argc, char *argv[])
{
	if (argc != 4)
	{
		printf("Usage : dest src size");
		return (1);
	}
	char dest[100];
	char src[100];
	unsigned int size = (unsigned int)(atoi(argv[3]));
	strcpy(dest, argv[1]);
	strcpy(src, argv[2]);
	printf("%d : %s\n", ft_strlcat(dest, src, size), dest);
}
