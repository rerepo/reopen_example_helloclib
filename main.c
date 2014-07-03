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

#include "lib.h"
#include "func.h"

#include "libso.h"

#include "libao.h"

int main(void) {
	lib();
	func();

	libso();

	libao();

	puts("!!!Hello World!!!"); /* prints !!!Hello World!!! */
	return EXIT_SUCCESS;
}
