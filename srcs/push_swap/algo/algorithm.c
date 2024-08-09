/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   algorithm.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sperron <sperron@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/08/04 16:36:14 by yogun             #+#    #+#             */
/*   Updated: 2024/07/12 09:24:04 by sperron          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../../includes/push_swap.h"

long	ft_atoi2(const char *str)
{
	int			sign;
	long long	result;

	sign = 1;
	result = 0;
	while (space(*str))
		str++;
	if (*str == '-')
	{
		sign = -1;
		str++;
	}
	else if (*str == '+')
		str++;
	while (*str >= '0' && *str <= '9')
	{
		if (result > (LONG_MAX - (*str - '0')) / 10)
			return (LONG_MAX);
		result = result * 10 + (*str - '0');
		str++;
	}
	result *= sign;
	if (result > INT_MAX || result < INT_MIN)
		return (LONG_MAX);
	return ((long)result);
}

t_stack	*ft_sub_process(char **argv)
{
	t_stack		*a;
	char		**tmp;
	int			i;
	long		j;

	a = NULL;
	i = 0;
	tmp = ft_split(argv[1], ' ');
	if (!tmp)
		return (ft_error(), NULL);
	while (tmp[i])
	{
		j = ft_atoi2(tmp[i]);
		if (j > INT_MAX || j < INT_MIN)
		{
			ft_free(&a);
			ft_error();
			return (NULL);
		}
		ft_add_back(&a, ft_stack_new(j));
		i++;
	}
	return (ft_freestr(tmp), free(tmp), a);
}

t_stack	*ft_process(int argc, char **argv)
{
	t_stack		*a;
	int			i;
	long		j;
	t_stack		*new;

	a = NULL;
	i = 1;
	if (argc < 2 || check_args(argv))
		return (ft_free(&a), ft_error(), NULL);
	if (argc == 2)
		return (ft_sub_process(argv));
	while (i < argc)
	{
		j = ft_atoi2(argv[i]);
		if (j > INT_MAX || j < INT_MIN)
			return (ft_free(&a), ft_error(), NULL);
		new = ft_stack_new((int)j);
		if (!new)
			return (ft_free(&a), NULL);
		ft_add_back(&a, new);
		i++;
	}
	return (a);
}
