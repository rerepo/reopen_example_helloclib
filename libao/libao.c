/*
 * libao.c
 *
 *  Created on: Feb 25, 2014
 *      Author: root
 */

#include <stdio.h>
#include <stdlib.h>

#include "libaapi.h"

#include "libao.h"

int libao(void) {
	libaapi();

	puts("!!!libao()!!!"); /* prints !!!Hello World!!! */
	return EXIT_SUCCESS;
}
