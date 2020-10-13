#include <stdio.h>
#include <string.h>

char *ft_strcat(char *dest, char *src);

int main(int argc, char *argv[])
{
	if (argc != 3)
	{
		printf("Usage : ./a.out dest src");
		return 1;
	}
	char s1[100];
	char s2[100];
	strcpy(s1, argv[1]);
	strcpy(s2, argv[2]);
	puts(strcat(s1, s2));
}
