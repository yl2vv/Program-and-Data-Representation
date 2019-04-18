/* 
Yubin Lim yl2vv
linkedlist.c
April 12, 2019
CS2150-103
*/

#include <stdio.h>
#include <stdlib.h>

struct linkedList {
	struct node *head;
};

struct node {
	int number;
	struct node *next;
};

int main() {
	int n, num;
	struct linkedList *l;

	printf("Enter how many values to input: ");
	scanf("%d", &n);
	l = (struct linkedList*) malloc(sizeof(struct linkedList));
	l->head = (struct node*) malloc(sizeof(struct node));

	struct node* cur = l->head;
	for (int i = 1; i <= n; i++) {
		printf("Enter value %d: ", i);
		scanf("%d", &num);
		cur->number = num;
		cur->next = (struct node*) malloc(sizeof(struct node));
		cur = cur->next;
	}

	free(cur->next);

	struct node* itr = l->head;
	for (int j = 0; j < n; j++) {
		printf("%d\n", itr->number);
		itr = itr->next;
	}

	free(l);
	free(l->head);
	return 0;
}