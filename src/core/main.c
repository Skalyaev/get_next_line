#include "../../include/get_next_line.h"
#include "stdio.h"

int main(void)
{
        char **line = malloc(sizeof(char **));
        if (!line)
                return (1);
        while (get_next_line(0, line))
        {
                printf("%s\n", *line);
                free(*line);
                continue;
        }
        free(line);
        return (0);
}