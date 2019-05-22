/*
 ============================================================================
 Name        : HelloWorldMultiPlatform.c
 Author      : Don Snyder
 Version     :
 Copyright   :
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main(void) {

	puts("Hello World Multi-Platform\n\n"); /* prints Hello World Multi-Platform */

	int y = 0;

	printf("Enter an integer: ");
	scanf("%d",&y);
	printf("Entered Number = %d\n\n",y);

	int x = sqrt(y);

	printf("Square Root Input: %d\n\n", x);

	return EXIT_SUCCESS;

}
