#include "../include/gnl.h"
#include "stdio.h"
#include "stdlib.h"
#include "fcntl.h"

int main(int ac, char **av)
{
        int fd = 0;
        if (ac > 1)
                fd = open(av[1], O_RDONLY);
        if (fd < 0)
        {
            printf("Error: File not found\n");
            return (1);
        }
        char **line = malloc(sizeof(char **));
        if (!line)
                return (1);
        while (get_next_line(fd, line))
        {
                printf("%s\n", *line);
                free(*line);
                continue;
        }
        free(line);
        return (0);
}
