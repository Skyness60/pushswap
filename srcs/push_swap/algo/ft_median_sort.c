/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_median_sort.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sperron <sperron@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/07/02 13:38:29 by sperron           #+#    #+#             */
/*   Updated: 2024/07/08 13:12:47 by sperron          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../../includes/push_swap.h"

int	ft_find_median(t_stack *stack)
{
	int		*arr;
	int		size;
	int		median;
	t_stack	*tmp;
	int		i;

	size = ft_lstsize(stack);
	arr = malloc(sizeof(int) * size);
	if (!arr)
		return (0);
	tmp = stack;
	i = 0;
	while (tmp)
	{
		arr[i++] = tmp->nbr;
		tmp = tmp->next;
	}
	ft_quicksort(arr, 0, size - 1);
	median = arr[size / 2];
	free(arr);
	return (median);
}
