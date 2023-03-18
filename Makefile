# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jubaldo <jubaldo@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/11 00:43:57 by jubaldo           #+#    #+#              #
#    Updated: 2022/12/02 18:33:02 by jubaldo          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS = ft_strlen.c ft_atoi.c ft_isalpha.c ft_isdigit.c ft_strlcat.c ft_strlcpy.c \
		ft_strncmp.c ft_toupper.c ft_tolower.c ft_isalnum.c ft_strnstr.c ft_strchr.c \
		ft_strrchr.c ft_isascii.c ft_isprint.c ft_strchr.c ft_memset.c ft_memcpy.c \
		ft_memchr.c ft_memcmp.c ft_memmove.c ft_bzero.c ft_calloc.c ft_strdup.c \
		ft_substr.c ft_strjoin.c ft_strtrim.c ft_itoa.c ft_strmapi.c ft_striteri.c ft_split.c \
		ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_putnbr_fd.c

OBJS = ${SRCS:.c=.o}

BONUS = ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c ft_lstadd_back.c \
		ft_lstdelone.c ft_lstclear.c ft_lstiter.c ft_lstmap.c 

BONUS_OBJS = ${BONUS:.c=.o}

NAME = libft.a
AR = ar crs
CC = gcc
RM = rm -f
CFLAGS = -Wall -Wextra -Werror -c

all: ${NAME}

%.o : %.c
		${CC} ${CFLAGS} $< -o $@

${NAME}: ${OBJS}
		${AR} ${NAME} ${OBJS}

clean: 
		${RM} ${OBJS} ${BONUS_OBJS}

fclean: clean
		${RM} ${NAME}

re: fclean all

bonus: ${OBJS} ${BONUS_OBJS}
				${AR} ${NAME} ${OBJS} ${BONUS_OBJS}

.PHONY: all clean fclean re bonus