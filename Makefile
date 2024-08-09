NAME = push_swap

CHECKER = checker

CC = cc -g3

SOURCES =	srcs/push_swap/algo/algorithm.c \
			srcs/push_swap/utils/ft_add_back.c \
			srcs/push_swap/utils/ft_stack_new.c \
			srcs/push_swap/utils/ft_check_utils.c \
			srcs/push_swap/parsing/ft_parse.c \
			srcs/push_swap/soluce/solver_utils_ab.c \
			srcs/push_swap/soluce/solver_utils_ba.c \
			srcs/push_swap/operations/ft_rotate_and_push.c \
			srcs/push_swap/operations/operations.c \
			srcs/push_swap/operations/operations_2.c \
			srcs/push_swap/operations/operations_3.c \
			srcs/push_swap/parsing/ft_duplicate_checker.c \
			srcs/push_swap/parsing/ft_arg_validator.c \
			srcs/push_swap/utils/ft_error_print.c \
			srcs/push_swap/utils/ft_free.c \
			srcs/push_swap/utils/lst_utils.c \
			srcs/push_swap/utils/lst_utils_2.c \
			srcs/push_swap/parsing/ft_parse_args_quoted.c \
			srcs/push_swap/utils/ft_list_args.c \
			srcs/push_swap/utils/ft_check_sorted.c \
			srcs/push_swap/algo/ft_sort_big.c \
			srcs/push_swap/algo/ft_sort_three.c \
			srcs/push_swap/algo/ft_median_sort.c \
			srcs/push_swap/algo/ft_quick_sort.c \
			srcs/push_swap/operations/ft_rotate_type.c \
			srcs/push_swap/push_swap.c \
			libft/essential/ft_isdigit.c \
			libft/essential/ft_atoi.c \
			libft/essential/ft_strlen.c \
			libft/essential/ft_split.c	\
			libft/printf/srcs/ft_printf.c \
			libft/printf/func/ft_nbrlen_base.c \
			libft/printf/func/ft_nbrlen.c \
			libft/printf/func/ft_putchar.c \
			libft/printf/func/ft_puthexa.c \
			libft/printf/func/ft_putnbr_unsigned.c \
			libft/printf/func/ft_putnbr.c \
			libft/printf/func/ft_putpointer.c \
			libft/printf/func/ft_putstr.c 

OBJECTS = $(SOURCES:.c=.o)

BONUS_SOURCES =	srcs/push_swap/algo/algorithm.c \
			srcs/push_swap/utils/ft_add_back.c \
			srcs/push_swap/utils/ft_stack_new.c \
			srcs/push_swap/utils/ft_check_utils.c \
			srcs/push_swap/parsing/ft_parse.c \
			srcs/push_swap/soluce/solver_utils_ab.c \
			srcs/push_swap/soluce/solver_utils_ba.c \
			srcs/push_swap/operations/ft_rotate_and_push.c \
			srcs/push_swap/operations/operations.c \
			srcs/push_swap/operations/operations_2.c \
			srcs/push_swap/operations/operations_3.c \
			srcs/push_swap/parsing/ft_duplicate_checker.c \
			srcs/push_swap/parsing/ft_arg_validator.c \
			srcs/push_swap/utils/ft_error_print.c \
			srcs/push_swap/utils/ft_free.c \
			srcs/push_swap/utils/lst_utils.c \
			srcs/push_swap/utils/lst_utils_2.c \
			srcs/push_swap/parsing/ft_parse_args_quoted.c \
			srcs/push_swap/utils/ft_list_args.c \
			srcs/push_swap/utils/ft_check_sorted.c \
			srcs/push_swap/algo/ft_sort_big.c \
			srcs/push_swap/algo/ft_sort_three.c \
			srcs/push_swap/algo/ft_median_sort.c \
			srcs/push_swap/algo/ft_quick_sort.c \
			srcs/push_swap/operations/ft_rotate_type.c \
			libft/essential/ft_isdigit.c \
			libft/essential/ft_atoi.c \
			libft/essential/ft_split.c \
			srcs/bonus/bonus.c \
			srcs/bonus/ft_read.c \
			libft/gnl/get_next_line_bonus.c \
			libft/gnl/get_next_line_utils_bonus.c \
			libft/printf/srcs/ft_printf.c \
			libft/printf/func/ft_nbrlen_base.c \
			libft/printf/func/ft_nbrlen.c \
			libft/printf/func/ft_putchar.c \
			libft/printf/func/ft_puthexa.c \
			libft/printf/func/ft_putnbr_unsigned.c \
			libft/printf/func/ft_putnbr.c \
			libft/printf/func/ft_putpointer.c \
			libft/printf/func/ft_putstr.c 


BONUS_OBJECTS = $(BONUS_SOURCES:.c=.o)

FLAGS = -Wall -Wextra -Werror
OPTIONS = -c

#################################################################################

RED = '\033[0;31m'
GREEN = '\033[0;32m'
YELLOW = '\033[0;33m'
BLUE = '\033[0;34m'
PURPLE = '\033[0;35m'
NC = '\033[0m'

#################################################################################

%.o: %.c
	@$(CC) $(FLAGS) $(OPTIONS) $< -o $@
	@echo $(GREEN)✅ $< compiled! $(NC)

$(NAME): $(OBJECTS)
	@$(CC) $(FLAGS) $(OBJECTS) -o $(NAME)
	@echo $(BLUE)✅ $@ built! $(NC)

bonus: $(OBJECTS) $(BONUS_OBJECTS)
	@$(CC) $(FLAGS) $(BONUS_OBJECTS) -o $(CHECKER)
	@echo $(PURPLE)✅ $(NAME) with bonus built! $(NC)

all: $(NAME)

clean:
	@rm -f $(OBJECTS) $(BONUS_OBJECTS)
	@echo $(YELLOW)🗑️ $(OBJECTS) $(BONUS_OBJECTS) deleted! $(NC)

fclean: clean
	@rm -f $(NAME) $(CHECKER)
	@echo $(RED)🗑️ $(NAME) and $(CHECKER) deleted! $(NC)

re: fclean all

.PHONY: all clean fclean re


# ------------------------------------------------------------------------------------------------------------- >
# 
# 				████████╗███████╗░██████╗████████╗███████╗██╗░░░██╗██████╗░
# 				╚══██╔══╝██╔════╝██╔════╝╚══██╔══╝██╔════╝██║░░░██║██╔══██╗
# 				░░░██║░░░█████╗░░╚█████╗░░░░██║░░░█████╗░░██║░░░██║██████╔╝
# 				░░░██║░░░██╔══╝░░░╚═══██╗░░░██║░░░██╔══╝░░██║░░░██║██╔══██╗
# 				░░░██║░░░███████╗██████╔╝░░░██║░░░███████╗╚██████╔╝██║░░██║
# 				░░░╚═╝░░░╚══════╝╚═════╝░░░░╚═╝░░░╚══════╝░╚═════╝░╚═╝░░╚═╝

# 	COPY PASTE ALL OF THIS SOMEWHERE IN YOUR MAKEFILE
# 	MAKE SURE THE NAME OF THE PROJECT IS:
# 		$(NAME) = push_swap
# 	or else change the value of $(NAMEE)

# 	AVAILABLE: (see desccription below)
# 	make a
# 	make m
# 	make n

NAMEE = push_swap
NAMEE_BONUS = push_swap_bonus

MIN = -999
MAX = 999
HOW_MANY = 100
HOW_MUCH = 40

# MAKE A: Run PUSH_SWAP with 'HOW_MANY' random numbers between 'MIN' and 'MAX'
# 
a: $(NAMEE)
	@$(call random_shmol_cat, "\'tis push shwap", $(HOW_MANY) number ね?, $(CLS), );
	@ARGS=$$(seq $(MIN) $(MAX) | shuf -n $(HOW_MANY) | tr '\n' ' ' | sed -r 's/ $$//'); \
	echo $$ARGS; \
	./$(word 1, $^) $$ARGS

# MAKE M: Run PUSH_SWAP 'HOW_MUCH' times, output the total move cost
# 			prints the return of YOUR main (0 is expeccted for stack sorted, 1 if not)
# 
m: $(NAMEE)
	@$(call random_shmol_cat, "\'tis push shwap tesshter、0 is OK、1 is KO", $(HOW_MANY) numbers、$(HOW_MUCH) times ね?, $(CLS), );
	@total=0; \
	for i in $$(seq 1 $(HOW_MUCH)); do \
		ARGS=$$(seq $(MIN) $(MAX) | shuf -n $(HOW_MANY) | tr '\n' ' ' | sed -r 's/ $$//'); \
		output=$$(./$(word 1, $^) $$ARGS); \
		return_code=$$?; \
		count=$$(echo "$$output" | wc -l); \
		echo "test $$i: $$count moves, OK? $$return_code"; \
		if [ $$return_code -eq 1 ]; then \
			echo "pile isnt sorted with these: $$ARGS"; \
			echo "$$ARGS" > bad_output; \
			echo "$$output" >> bad_output; \
		fi; \
		total=$$((total + count)); \
	done; \
	average=$$((total / $(HOW_MUCH))); \
	$(call random_shmol_cat, "heres average numbar:", $$average, , )

BAD_ARGS =  "0 1 2 2a 5" "0 1 2 wtf" "0 1 2 -2147483648 -2147483650" "0 1 2 9999999999 9" "4" "" " "  "-" "i want ..." "0 1-2 8 5" "0 1 2 8 1 5"

# MAKE N: Run a dozen bad arguments, with valgrind
# 
n: $(NAMEE)
	@for arg in $(BAD_ARGS); do \
	$(call random_shmol_cat, teshting lots of bad args:, $$arg, $(CLS), ); \
	$(VALGRIIND) ./$(word 1, $^) $$arg; \
	echo "\t\033[5m~ Press Enter to continue...\033[0m"; \
	read -p "" key; \
	done
	$(call random_shmol_cat, this one should work fine:, 1 5 2 7 -3, $(CLS), )
	$(VALGRIIND) ./$(word 1, $^) 1 5 2 7

# ------------------------------------------------------------------------------------------------------------- >
# @$(call random_shmol_cat, text 1, text 2, $(CLS), $(RESET));
# $(1)= $(CLEAR); $(2)= text1; $(3)= text2; $(4)= $(RESET)
define random_shmol_cat
	COLOR=$$(printf "\033[38;5;%dm" $$(shuf -i 1-255 -n 1)); \
	COLOR2=$$(printf "\033[38;5;%dm" $$(shuf -i 0-255 -n 1)); \
	echo "$(3)$${COLOR2}\
	\tにゃ~$${COLOR}\t⠀╱|、\n\
	\t\t(˚ˎ。7⠀⠀⠀$${COLOR2}~ $(1) ~$${COLOR}\n\
	\t\t⠀|、˜\\\\\t\t$${COLOR2}~ $(2)$${COLOR}\n\
	\t\t⠀じしˍ)ノ\n$(4)"
endef

CLS = \033[2J\033[H
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -  - -  - VALGRIIND
VALGRIIND = valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes -s --track-fds=yes
# ------------------------------------------------------------------------------------------------------------- >
