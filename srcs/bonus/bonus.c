/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   bonus.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sperron <sperron@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/07/02 15:08:19 by sperron           #+#    #+#             */
/*   Updated: 2024/07/05 14:47:02 by sperron          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../includes/push_swap.h"

void	ft_read(t_stack **a, t_stack **b, char *line)
{
	char	*tmp;

	while (line && *line != '\n')
	{
		tmp = line;
		line = ft_check(a, b, line);
		free(tmp);
	}
	if (*b)
		ft_printf("KO\n");
	else if (!ft_checksorted(*a))
		ft_printf("KO\n");
	else
		ft_printf("OK\n");
	free(line);
}

int	main(int argc, char **argv)
{
	t_stack	*a;
	t_stack	*b;
	char	*line;

	b = NULL;
	if (argc == 1)
		return (0);
	a = ft_process(argc, argv);
	if (!a || ft_checkdup(a))
		return (ft_free(&a), ft_error(), 1);
	line = get_next_line(0);
	if (!line && !ft_checksorted(a))
		ft_printf("KO\n");
	else if (!line && ft_checksorted(a))
		ft_printf("OK\n");
	else
		ft_read(&a, &b, line);
	ft_free(&b);
	ft_free(&a);
	return (0);
}
