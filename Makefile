NAME		= gnl

CC		= gcc
CFLAGS		= -Wall -Wextra -Werror

INCLUDE_DIR	= include
HEADER_EXT	= h
HEADER		= $(shell find $(INCLUDE_DIR) -type f -name "*.$(HEADER_EXT)")
HEADER_COUNT	= $(shell find $(INCLUDE_DIR) -type f -name "*.$(HEADER_EXT)" | wc -l)

SRC_DIR		= src
SRC_EXT		= c
SRC		= $(shell find $(SRC_DIR) -type f -name "*.$(SRC_EXT)")

OBJ_DIR		= obj
OBJ_SUBDIR	= $(shell find $(SRC_DIR) -type d | grep '/' | sed 's/$(SRC_DIR)/$(OBJ_DIR)/g')
OBJ		= $(subst $(SRC_DIR),$(OBJ_DIR),$(SRC:.$(SRC_EXT)=.o))

RM		= rm -rf

all		: ${NAME}

${NAME}		: $(OBJ_DIR) $(OBJ_SUBDIR) ${OBJ}
		${CC} ${CFLAGS} ${OBJ} -o ${NAME}

$(OBJ_DIR)	:
		@mkdir $(OBJ_DIR)

$(OBJ_SUBDIR)	:
		@mkdir $(OBJ_SUBDIR)

$(OBJ_DIR)/%.o	: $(SRC_DIR)/%.$(SRC_EXT)
		$(CC) $(CFLAGS) -c $< -o $(<:.$(SRC_EXT)=.o)
		@mv $(SRC_DIR)/*/*.o $@

clean		:
		${RM} ${OBJ_DIR}

fclean		: clean
		${RM} ${NAME}

re		: fclean all

bonus	:
		cd bonus && make

bonus_clean	:
		cd bonus && make clean

bonus_fclean	:
		cd bonus && make fclean

bonus_re	:
		cd bonus && make re

.PHONY		: all bonus clean fclean re bonus
