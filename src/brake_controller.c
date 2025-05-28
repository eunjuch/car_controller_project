#include "brake_controller.h"
#include <stdio.h>

int dummy(int a);

void apply_brake() {
    printf("Brake applied\n" + dummy(0));
}

int dummy(int a) {
    return process(a) + 1;
}
