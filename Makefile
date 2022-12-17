#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mugurel <muhammedtalhaugurel@gmai...>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/06 02:36:36 by mugurel           #+#    #+#              #
#    Updated: 2022/12/17 04:30:46 by mugurel          ###   ########.fr        #
#                                                                              #
#******************************************************************************#

SRCS =	ft_memset.c			\
		ft_bzero.c			\
		ft_memcpy.c			\
		ft_memmove.c 		\
		ft_strlen.c			\
		ft_isalpha.c 		\
		ft_isdigit.c		\
		ft_isalnum.c		\
		ft_isascii.c		\
		ft_isprint.c		\
		ft_strlcpy.c		\
		ft_strlcat.c		\
		ft_toupper.c		\
		ft_tolower.c		\
		ft_strchr.c			\
		ft_strrchr.c		\
		ft_strncmp.c		\
		ft_memchr.c			\
		ft_memcmp.c			\
		ft_strnstr.c		\
		ft_atoi.c			\
		ft_calloc.c			\
		ft_strdup.c			\
		ft_substr.c			\
		ft_strjoin.c		\
		ft_strtrim.c		\
		ft_split.c			\
		ft_itoa.c			\
		ft_strmapi.c		\
		ft_striteri.c		\
		ft_putchar_fd.c		\
		ft_putstr_fd.c		\
		ft_putendl_fd.c		\
		ft_putnbr_fd.c		\

BSRCS =	ft_lstnew.c			\
		ft_lstadd_front.c	\
		ft_lstsize.c		\
		ft_lstlast.c		\
		ft_lstadd_back.c	\

BOBJS = $(BSRCS:.c=.o)
MAIN = main.c
OBJS = ${SRCS:.c=.o}
NAME = libft.a
CC = gcc
CFLAGS = -Wall -Werror -Wextra -g
RM = rm -rf
LIBC = ar rc
OUT = ./a.out

all: ${NAME}

${NAME}: ${OBJS}
	@${LIBC} ${NAME} ${OBJS}
	@echo "Success"

.c.o:
	@${CC} ${CFLAGS} -c $< -o ${<:.c=.o}

bonus: ${OBJS} ${BOBJS}
	${LIBC} ${NAME} ${OBJS} ${BOBJS}

clean:
	@${RM} ${OBJS} ${BOBJS}

fclean: clean
	@${RM} ${NAME}


re: fclean all

so:
	$(CC) -nostartfiles -fPIC $(C_FLAGS) $(SRCS) $(BSRCS)
	gcc -nostartfiles -shared -o libft.so $(OBJS) $(BOBJS)

.PHONY: all clean fclean re bonus
# end
