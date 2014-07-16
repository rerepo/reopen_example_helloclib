/*
 * libso.c
 *
 *  Created on: Feb 25, 2014
 *      Author: root
 */

#include <stdio.h>
#include <stdlib.h>

//#include "libsapi.h"
#include "libpret.h"

#include "libso.h"

int libso(void) {
	libsapi();

	puts("!!!libso()!!!"); /* prints !!!Hello World!!! */
	return EXIT_SUCCESS;
}
