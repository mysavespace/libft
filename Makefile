# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kkwasny <kkwasny@student.42wolfsburg.de    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/14 19:42:11 by kkwasny           #+#    #+#              #
#    Updated: 2022/12/22 18:59:55 by kkwasny          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = gcc

AR = ar

NAME = libft.a

CFLAGS = -Wall -Wextra -Werror

ARFLAGS = rc

SRCFILES =	ft_isalpha.c \
			ft_isdigit.c \
			ft_isalnum.c \
			ft_isascii.c \
			ft_isprint.c \
			ft_atoi.c \
			ft_bzero.c \
			ft_calloc.c \
			ft_itoa.c \
			ft_memchr.c \
			ft_memcmp.c \
			ft_memcpy.c \
			ft_memmove.c \
			ft_memset.c \
			ft_putchar_fd.c \
			ft_putendl_fd.c \
			ft_putnbr_fd.c \
			ft_putstr_fd.c \
			ft_split.c \
			ft_strchr.c \
			ft_strdup.c \
			ft_striteri.c \
			ft_strjoin.c \
			ft_strlcat.c \
			ft_strlcpy.c \
			ft_strlen.c \
			ft_strmapi.c \
			ft_strncmp.c \
			ft_strnstr.c \
			ft_strrchr.c \
			ft_strtrim.c \
			ft_substr.c \
			ft_tolower.c \
			ft_toupper.c

OBJFILES = ${SRCFILES:.c=.o}

$(NAME) : $(OBJFILES)
	$(AR) $(ARFLAGS) $(NAME) $(OBJFILES)

all : $(NAME)

fclean : clean
	rm -rf $(NAME)

clean :
	rm -rf $(OBJFILES)

re : fclean $(NAME)

.PHONY: all clean re fclean
