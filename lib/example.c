// Copyright (c) 2025, London Sheard
// Licensed under the BSD 3-Clause License.
// See the LICENSE file for details.

// This is an example programme that calls the ptools library functions

// To include ptools in compilation:
// gcc example.c -L. -lptools -o example

extern void clear_scr(void);

int main() {
    clear_scr();
    return 0;
}
