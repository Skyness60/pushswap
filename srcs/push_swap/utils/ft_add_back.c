/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_add_back.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sperron <sperron@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/07/22 10:26:24 by yogun             #+#    #+#             */
/*   Updated: 2024/07/08 13:22:24 by sperron          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../../includes/push_swap.h"

void	ft_add_back(t_stack **stack, t_stack *stack_new)
{
	t_stack	*last;

	if (!stack)
		return ;
	if (!*stack)
		*stack = stack_new;
	else
	{
		last = ft_lstlast(*stack);
		last->next = stack_new;
	}
}
