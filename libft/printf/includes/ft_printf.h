/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sperron <sperron@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/05/24 09:12:40 by sperron           #+#    #+#             */
/*   Updated: 2024/07/02 17:24:35 by sperron          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H

# include <stdarg.h>
# include <limits.h>

int				ft_printf(const char *format, ...);
int				ft_putchar(char c);
int				ft_puthexa(char form, long double nbr);
int				ft_putnbr(int n);
int				ft_putnbr_unsigned(unsigned int n);
int				ft_putstr(char *str);
int				ft_putpointer(void *adress);
#endif