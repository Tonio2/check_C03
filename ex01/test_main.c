#include <stdio.h>
#include <string.h>

int ft_strncmp(char *s1, char *s2, unsigned int n);

int main()
{
	char *s1 = "abc";
	char *s2 = "abc";
	printf("strncmp(%s, %s, 3) should return %d and my function returns %d\n", s1, s2, strncmp(s1, s2, 3), ft_strncmp(s1, s2, 3));
	s1 = "abc";
	s2 = "abcd";
	printf("strncmp(%s, %s, 5) should return %d and my function returns %d\n", s1, s2, strncmp(s1, s2, 5), ft_strncmp(s1, s2, 5));
	s1 = "adcd";
	s2 = "abc";
	printf("strncmp(%s, %s, 2) should return %d and my function returns %d\n", s1, s2, strncmp(s1, s2, 2), ft_strncmp(s1, s2, 2));
	s1 = "adc";
	s2 = "abc";
	printf("strncmp(%s, %s, 5) should return %d and my function returns %d\n", s1, s2, strncmp(s1, s2, 5), ft_strncmp(s1, s2, 5));
}
