#include <stdio.h>
#include <stdlib.h>
#include <string.h>

//size_t ft_strlen(const char *str);
char	*ft_strcpy(char *dst, char *src);
int		ft_strcmp(const char *s1, const char *s2);

int	main(void)
{
	printf("mydiff : %d\n", ft_strcmp("bam", "bom"));
	printf("diff : %d\n", strcmp("bam", "bom"));
	return (0);
}