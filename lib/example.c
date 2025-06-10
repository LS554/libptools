// Copyright (c) 2025, London Sheard
// Licensed under the BSD 3-Clause License.
// See the LICENSE file for details.

// This is an example programme that calls the ptools library functions

// To include ptools in compilation:
// gcc example.c -L. -lptools -o example

extern void clear_scr(void);
extern void put_startBanner(void);
extern void put_endBanner(void);

int main() {
    //clear_scr();
    put_startBanner();
    put_endBanner();
    return 0;
}
