# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: souchen <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/11/08 14:59:25 by souchen           #+#    #+#              #
#    Updated: 2021/11/19 15:22:03 by souchen          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
CC=GCC
FLAGS    = -Wall -Werror -Wextra -I libft.h
AR=ar crs
RM=rm -rf
FICHIER= ft_isalpha ft_isdigit ft_isalnum ft_isascii ft_strlen \
		 ft_toupper ft_tolower ft_strchr ft_strrchr ft_strncmp \
		 ft_strnstr ft_strlcpy ft_strlcat ft_atoi ft_memcpy \
		 ft_memset ft_bzero ft_memmove ft_memchr ft_memcmp ft_calloc \
		 ft_strdup ft_substr ft_strjoin ft_strtrim ft_split ft_itoa \
		 ft_strmapi  ft_putchar_fd ft_putstr_fd ft_putendl_fd \
		 ft_putnbr_fd ft_isprint ft_striteri ft_lstnew ft_lstadd_front \
		 ft_lstsize ft_lstlast ft_lstadd_back ft_lstdelone \
		 ft_lstclear ft_lstiter 
OBJ= $(FICHIER:=.o)
SRC=$(FICHIER:=.c)
NAME=libft.a

.PHONY: all clean fclean re

all: $(NAME)

$(NAME): $(OBJ)
	$(AR) $(NAME) $(OBJ)

bonus : all

%.o: %.c
	$(CC) $(FLAGS) -c $? -o $@
	

clean:
	$(RM) $(OBJ) 

fclean: clean
	$(RM) $(NAME)
re: fclean all
