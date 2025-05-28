#include "brake_control.h"
#include <stdio.h>

int dummy(int a);

void apply_braking() {
    printf("Brake applied\n" + dummy(0));
}

int dummy(int a) {
    return process(a) + 1;
}
