#include <stdio.h>
#include <string.h>

int ft_strcmp(char *s1, char *s2);

int main(int argc, char *argv[])
{
	if (argc != 3)
	{
		printf("Usage s1 s2");
		return (1);
	}
	char s1[100];
	char s2[100];
	strcpy(s1, argv[1]);
	strcpy(s2, argv[2]);
	printf("%d\n", ft_strcmp(s1, s2));
}
