#include "libft.h"

void del (void *s)
{
	s = NULL; 
}

void *f (void *s)
{
	int p = 5;
	s = &p;
}

int main ()
{
	int p =  7;
	int p1 = 8;
	int p2 = 6;
	int p3 = 8;
	t_list *head;
	
	printf("======TEST NEW & ADD======\n");

	head = NULL;
	t_list *node1 = ft_lstnew (&p);
	t_list *node2 = ft_lstnew (&p1);
	t_list *node3 = ft_lstnew (&p2);
	t_list *node_back = ft_lstnew (&p3);	

	ft_lstadd_front (&head, node1);
	ft_lstadd_front (&head, node2);
	ft_lstadd_front (&head, node3);
	ft_lstadd_back (&head, node_back);
	
	t_list *temp = head;
	while (temp)
	{
		printf("%d\n", *(int *)(temp->content));
		temp = temp->next;
	
	}
	printf("======TEST MAP======\n");
	t_list *fortest = ft_lstmap(head, f, del);

	temp = fortest;
	while (temp)
	{
		printf("%d\n", *(int *)(temp->content));
		temp = temp->next;
	}

	printf("======TEST CLEAR======\n");
	ft_lstclear(&head, &del);
	printf("%p", head);

}
