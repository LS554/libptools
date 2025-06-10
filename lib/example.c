// Copyright (c) 2025, London Sheard
// Licensed under the BSD 3-Clause License.
// See the LICENSE file for details.

// This is an example programme that calls the ptools library functions

// To include ptools in compilation:
// gcc example.c -L. -lptools -o example
#include <stdio.h>

extern void clear_scr(void);
extern void put_startBanner(void);
extern void put_endBanner(void);
extern int stringlen(const char* string);

int main() {
    const char* mystring = "Hello, World!";
    int len = stringlen(mystring);
    printf("Length of %s is %d\n", mystring, len);
    return 0;
}
