# **************************************************************************** #
#                                                           LE - /             #
#                                                               /              #
#    Makefile                                         .::    .:/ .      .::    #
#                                                  +:+:+   +:    +:  +:+:+     #
#    By: canastas <marvin@le-101.fr>                +:+   +:    +:    +:+      #
#                                                  #+#   #+    #+    #+#       #
#    Created: 2017/12/02 16:27:37 by canastas     #+#   ##    ##    #+#        #
#    Updated: 2017/12/06 19:20:17 by canastas    ###    #+. /#+    ###.fr      #
#                                                          /                   #
#                                                         /                    #
# **************************************************************************** #

NAME = libft.a

CC = gcc

CFLAGS = -Wall -Werror -Wextra

INC_PATH = ./

FILES =  ft_bzero.c ft_memccpy.c ft_memcpy.c ft_memset.c ft_strcpy.c \
		 ft_strdup.c ft_strlcat.c ft_strlen.c ft_strncpy.c ft_memalloc.c \
		 ft_strnew.c ft_memdel.c ft_strdel.c ft_strclr.c ft_striter.c \
		 ft_striteri.c ft_strmap.c ft_strmapi.c ft_strequ.c ft_strcmp.c \
		 ft_strncmp.c ft_strnequ.c ft_strsub.c ft_atoi.c ft_strjoin.c \
		 ft_strcat.c  ft_strtrim.c  ft_strsplit.c ft_itoa.c ft_putchar.c \
		 ft_putnbr.c  ft_putstr.c  ft_putendl.c ft_putchar_fd.c \
		 ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_memmove.c \
		 ft_memchr.c ft_memcmp.c ft_strchr.c ft_strrchr.c ft_strstr.c \
		 ft_strnstr.c ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c \
		 ft_isprint.c ft_toupper.c ft_tolower.c ft_lstnew.c ft_lstdelone.c \
		 ft_lstdel.c ft_lstadd.c ft_lstiter.c ft_lstmap.c ft_strncat.c \
		 ft_isxdigit.c ft_ispunct.c ft_isspace.c ft_iscntrl.c ft_isgraph.c
SRC = $(FILES)

GREEN=\033[0;32m

OBJ=$(SRC:.c=.o)

INC= $(addprefix -I,$(INC_PATH))

all: $(NAME)

$(NAME): $(OBJ)
		@ar rcs $(NAME) $(OBJ)

%.o: %.c
		@printf "$(GREEN)Created $@\n"
			@$(CC) $(CFLAGS) $(INC) -o $@ -c $<

clean:
		@/bin/rm -f $(OBJ)

fclean: clean
		@/bin/rm -f $(NAME)


re: fclean all

.PHONY : clean fclean all re
