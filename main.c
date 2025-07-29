#include <stdio.h>
#include <stdlib.h>

//size_t ft_strlen(const char *str);
char *ft_strcpy(char *dst, char *src);

int	main(void)
{
	char *str = "Lullaby";
	char *dst = NULL;

	ft_strcpy(dst, str);
	printf("len : %s\n", dst);
	free(dst);
	return (0);
}