# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mzelouan <mzelouan@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/11/16 15:01:17 by mzelouan          #+#    #+#              #
#    Updated: 2023/11/16 16:14:24 by mzelouan         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# .a archive files or static libraries 
# (a way to group multible object files)
# linking =====> compilation process
# arc rcs 
# r inserting or replacing
# c create if doesnt exist
# s update or create the synbol table 
# (symboles variabke function names)
# 


# VARIABLES
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
# bonus files

BFILES =	ft_lstnew_bonus.c\
			ft_lstadd_front_bonus.c\
			ft_lstsize_bonus.c\
			ft_lstlast_bonus.c\
			ft_lstadd_back_bonus.c\
			ft_lstdelone_bonus.c\
			ft_lstclear_bonus.c\
			ft_lstiter_bonus.c\
			ft_lstmap_bonus.c\
# substitution operation change the extension

OFILES = $(CFILES:.c=.o)
OBFILES = $(BFILES:.c=.o)
CFLAGS = -Wall -Wextra -Werror
CC = cc
RM = rm -f
AR = ar rc

# DEFAULT RULL
all: $(NAME)

# -c grnerate an object file rather than executable
# this rule run when u have a target .c file and you wanna compile it
# to an .o object file
# it runs whene the variable OFILES is being used
# -c preform compilation step without linking

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

$(NAME) : $(OFILES)
	$(AR) $(NAME) $(OFILES)

re: fclean all

clean : 
	$(RM) $(OFILES) $(OBFILES)
	 
fclean : clean
	$(RM) $(NAME)

$(OBFILES) : $(BFILES)
	$(CC) $(CFLAGS) -c $(BFILES)
	$(AR) $(NAME) $(OBFILES)	   

bonus : $(OBFILES)

.PHONY : clean fclean re all
