#include <stdio.h>
#include <string.h>
#include <stdlib.h>

char *ft_strncat(char *dest, char *src, unsigned int nb);

int main(int argc, char *argv[])
{
	if (argc != 4)
	{
		printf("Usage : ./a.out dest src");
		return 1;
	}
	unsigned int nb = (unsigned int)(atoi(argv[3]));
	char s1[nb + 10];
	char s2[nb + 10];
	strcpy(s1, argv[1]);
	strcpy(s2, argv[2]);
	puts(ft_strncat(s1, s2, nb));
}
