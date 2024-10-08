# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gkiala <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/09/09 10:29:49 by gkiala            #+#    #+#              #
#    Updated: 2024/09/09 10:37:59 by gkiala           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = push_swap

CC = cc

CFLAGS = -Wall -Wextra -Werror

SRCS = main.c operations.c operations2.c sort_2345.c stack.c utils.c utils2.c utils3.c sort_algoritm.c quick_sort.c
OBJS = $(SRCS:.c=.o)

FT_PRINTF = ft_printf/libftprintf.a

all: $(NAME)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

$(NAME): $(OBJS)
	make -C ft_printf
	$(CC) $(OBJS) $(FT_PRINTF) -o $(NAME)

clean:
	make clean -C ft_printf
	/bin/rm -rf $(OBJS)

fclean: clean
	make fclean -C ft_printf
	/bin/rm -rf $(NAME)

re: fclean all

.PHONY: all clean fclean re
