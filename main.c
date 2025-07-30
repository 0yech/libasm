#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

//size_t ft_strlen(const char *str);
char	*ft_strcpy(char *dst, char *src);
int		ft_strcmp(const char *s1, const char *s2);
ssize_t ft_write(int fd, const void *buf, size_t count);

int	main(void)
{
	if (ft_write(-1, "boom\n", 5) == -1)
		perror("ay no");
	ft_write(1, "<3\n", 3);
	return (0);
}