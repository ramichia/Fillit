# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cquillet <cquillet@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/11/24 21:56:02 by cquillet          #+#    #+#              #
#    Updated: 2017/05/03 12:29:58 by ramichia         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC = src/simplified_test.c src/stockshapes.c src/match_pieces.c src/algo_x.c \
	  src/matrix.c src/nodes.c src/link.c src/cover.c src/others.c \
	  src/fillit.c src/createpattern.c

OBJ =*.o 

NAME = fillit

all: $(NAME)

$(NAME):
	gcc -Wall -Wextra -Werror -c $(SRC)
	gcc -Wall -Wextra -Werror -o $(NAME) $(OBJ)

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean $(NAME)
