# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mzelouan <mzelouan@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/11/16 15:01:17 by mzelouan          #+#    #+#              #
#    Updated: 2023/11/19 00:32:23 by mzelouan         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
CFILES = 	ft_atoi.c\
			ft_itoa.c\
			ft_putnbr_fd.c\
			ft_strlcpy.c\
			ft_tolower.c\
			ft_bzero.c\
			ft_memchr.c\
			ft_putstr_fd.c\
			ft_strlen.c\
			ft_toupper.c\
			ft_calloc.c\
			ft_memcmp.c\
			ft_split.c\
			ft_strmapi.c\
			ft_isalnum.c\
			ft_memcpy.c\
			ft_strchr.c\
			ft_strncmp.c\
			ft_isalpha.c\
			ft_memmove.c\
			ft_strdup.c\
			ft_strnstr.c\
			ft_isascii.c\
			ft_memset.c\
			ft_striteri.c\
			ft_strrchr.c\
			ft_isdigit.c\
			ft_putchar_fd.c\
			ft_strjoin.c\
			ft_strtrim.c\
			ft_isprint.c\
			ft_putendl_fd.c\
			ft_strlcat.c\
			ft_substr.c\

BFILES =	ft_lstnew_bonus.c\
			ft_lstadd_front_bonus.c\
			ft_lstsize_bonus.c\
			ft_lstlast_bonus.c\
			ft_lstadd_back_bonus.c\
			ft_lstdelone_bonus.c\
			ft_lstclear_bonus.c\
			ft_lstiter_bonus.c\
			ft_lstmap_bonus.c\

OFILES = $(CFILES:.c=.o)
OBFILES = $(BFILES:.c=.o)
CFLAGS = -Wall -Wextra -Werror
CC = cc
RM = rm -f
AR = ar rc

all: $(NAME)

$(NAME) : $(OFILES)
	$(AR) $(NAME) $(OFILES)

bonus : $(OBFILES) $(OFILES)

re: fclean all

clean : 
	$(RM) $(OFILES) $(OBFILES)
	 
fclean : clean
	$(RM) $(NAME)

ft_lstnew_bonus.o : ft_lstnew_bonus.c
	$(CC) $(CFLAGS) -c ft_lstnew_bonus.c
	$(AR) $(NAME) ft_lstnew_bonus.o

ft_lstadd_front_bonus.o : ft_lstadd_front_bonus.c
	$(CC) $(CFLAGS) -c ft_lstadd_front_bonus.c
	$(AR) $(NAME) ft_lstadd_front_bonus.o

ft_lstsize_bonus.o : ft_lstsize_bonus.c
	$(CC) $(CFLAGS) -c ft_lstsize_bonus.c
	$(AR) $(NAME) ft_lstsize_bonus.o

ft_lstlast_bonus.o : ft_lstlast_bonus.c
	$(CC) $(CFLAGS) -c ft_lstlast_bonus.c
	$(AR) $(NAME) ft_lstlast_bonus.o

ft_lstadd_back_bonus.o : ft_lstadd_back_bonus.c
	$(CC) $(CFLAGS) -c ft_lstadd_back_bonus.c
	$(AR) $(NAME) ft_lstadd_back_bonus.o

ft_lstdelone_bonus.o : ft_lstdelone_bonus.c
	$(CC) $(CFLAGS) -c ft_lstdelone_bonus.c
	$(AR) $(NAME) ft_lstdelone_bonus.o

ft_lstclear_bonus.o : ft_lstclear_bonus.c
	$(CC) $(CFLAGS) -c ft_lstclear_bonus.c
	$(AR) $(NAME) ft_lstclear_bonus.o

ft_lstiter_bonus.o : ft_lstiter_bonus.c
	$(CC) $(CFLAGS) -c ft_lstiter_bonus.c
	$(AR) $(NAME) ft_lstiter_bonus.o

ft_lstmap_bonus.o : ft_lstmap_bonus.c
	$(CC) $(CFLAGS) -c ft_lstmap_bonus.c
	$(AR) $(NAME) ft_lstmap_bonus.o

.PHONY : clean fclean re all