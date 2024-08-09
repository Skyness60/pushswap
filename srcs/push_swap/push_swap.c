/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   push_swap.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sperron <sperron@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/05/11 12:39:36 by yogun             #+#    #+#             */
/*   Updated: 2024/07/08 13:13:10 by sperron          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../includes/push_swap.h"

int	main(int ac, char **av)
{
	t_stack	*a;

	if (ac < 2)
		return (0);
	a = ft_process(ac, av);
	if (!a || ft_checkdup(a))
		return (ft_free(&a), ft_error(), 1);
	if (!ft_checksorted(a))
		return (ft_sort(&a), ft_free(&a), 0);
	ft_free(&a);
	return (0);
}
