/*
 ============================================================================
 Name        : main.c
 Author      : tmc9031@gmail.com
 Version     :
 Copyright   : Your copyright notice
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>

#include "lib.h"
#include "func.h"

#include "libso.h"

#include "libao.h"

/*thread running function*/
void *print_msg(void *arg)
{
	puts("print_msg()");
	return NULL;
}

int main(void) {
	lib();
	func();

	libso();

	libao();

	pthread_t t1;
	pthread_create(&t1, NULL, print_msg, NULL);
	pthread_join(t1,NULL);

	puts("!!!Hello World!!!"); /* prints !!!Hello World!!! */
	return EXIT_SUCCESS;
}
