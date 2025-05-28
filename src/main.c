#include "engine_control.h"
#include "brake_controller.h"
#include "communication.h"
#include "sensor.h"
#include <stdio.h>
int main() {
    printf("Car control system started\n");
    init_sensors();
    start_engine();
    while (1) {
        float speed = get_vehicle_speed();
        if (speed > 100.0) {
            apply_brake();
        }
        send_data(speed);
    }
    return 0;
}
