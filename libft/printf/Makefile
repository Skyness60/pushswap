CC = cc

INCLUDES =	includes/ft_printf.h

CFLAGS = -Wall -Wextra -Werror -I${INCLUDES}

NAME = libftprintf.a

FUNCPRINTF =	srcs/ft_printf.c \
				func/ft_putchar.c \
				func/ft_putnbr.c \
				func/ft_putnbr_unsigned.c \
				func/ft_putstr.c \
				func/ft_puthexa.c \
				func/ft_putpointer.c

SRCS = ${FUNCPRINTF}

OBJS = ${SRCS:.c=.o} 

.c.o:
		${CC} ${CFLAGS} -c $< -o ${<:.c=.o}

${NAME}:	${OBJS}
		ar -rsc ${NAME} ${OBJS}

all: 	${NAME}

clean:	
		rm -f ${OBJS}

fclean:	clean
		rm -f ${NAME}

re:	fclean all

.PHONY: all clean fclean re bonus
