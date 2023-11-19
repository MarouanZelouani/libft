/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strnstr.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mzelouan <mzelouan@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/03 23:26:22 by mzelouan          #+#    #+#             */
/*   Updated: 2023/11/19 22:39:56 by mzelouan         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strnstr(const char *big, const char *little, size_t n)
{
	size_t	i;
	size_t	j;

	i = 0;
	j = 0;
	if (!*little)
		return ((char *)big);
	if (!big && !n)
		return (NULL);
	while (big[i] != '\0' && i < n)
	{
		j = 0;
		while (big[i + j] == little[j] && little[j] != '\0' && (i + j) < n)
			j++;
		if (little[j] == '\0')
			return ((char *)(big + i));
		i++;
	}
	return (NULL);
}

int main ()
{
	//strnstr(NULL, "marouan", 0); no seg
	//strnstr(NULL, "marouan", 2); seg
	//strnstr(NULL, NULL, 0); seg
	//strnstr(NULL, "231", 2); seg
	//strnstr("mar", NULL, 0); seg
	//strnstr("marou", NULL, 2);
	
	// ft_strnstr(NULL, "marouan", 0); // no seg
	// ft_strnstr(NULL, "marouan", 2);
	// ft_strnstr(NULL, NULL, 0);
	// ft_strnstr(NULL, "231", 2);
	// ft_strnstr("mar", NULL, 0);
	// ft_strnstr("marou", NULL, 2)
	//ft_strnstr("marouan", NULL, 7);
}
