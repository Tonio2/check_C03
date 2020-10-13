#include <stdio.h>
#include <string.h>

char *ft_strstr(char *str, char *to_find);

int main(int argc, char *argv[])
{
	if (argc != 3)
	{
		printf("Usage : ./a.out str to_find");
		return 1;
	}
	char s1[100];
	char s2[100];
	strcpy(s1, argv[1]);
	strcpy(s2, argv[2]);
	puts(ft_strstr(s1, s2));
}
