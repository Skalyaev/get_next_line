#include "../include/get_next_line.h"
#include "stdio.h"

int main(int ac, char **av)
{
        char **line = malloc(sizeof(char **));
        if (!line)
                return (1);
        while (get_next_line(0, line))
        {
                printf("%s\n", *line);
                continue;
        }
        return (0);
}