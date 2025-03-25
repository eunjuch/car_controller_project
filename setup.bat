@echo off
echo Creating Car Controller Project Structure...

:: Create main directories
mkdir src
mkdir include
mkdir docs
mkdir tests
mkdir build

:: Create source files
echo /* main.c - 자동차 제어기의 메인 프로그램 */> src\main.c
echo #include "engine_control.h">> src\main.c
echo #include "brake_control.h">> src\main.c
echo #include "sensor.h">> src\main.c
echo #include "communication.h">> src\main.c
echo #include ^<stdio.h^>>> src\main.c
echo int main() {>> src\main.c
echo     printf("Car control system started\n");>> src\main.c
echo     >> src\main.c
echo     init_sensors();>> src\main.c
echo     start_engine();>> src\main.c
echo     >> src\main.c
echo     while (1) {>> src\main.c
echo         float speed = get_vehicle_speed();>> src\main.c
echo         if (speed ^> 100.0) {>> src\main.c
echo             apply_brake();>> src\main.c
echo         }>> src\main.c
echo         send_data(speed);>> src\main.c
echo     }>> src\main.c
echo     >> src\main.c
echo     return 0;>> src\main.c
echo }>> src\main.c

echo /* engine_control.c - 엔진 제어 모듈 */> src\engine_control.c
echo #include "engine_control.h">> src\engine_control.c
echo #include ^<stdio.h^>>> src\engine_control.c
echo void start_engine() {>> src\engine_control.c
echo     printf("Engine started\n");>> src\engine_control.c
echo }>> src\engine_control.c
echo void stop_engine() {>> src\engine_control.c
echo     printf("Engine stopped\n");>> src\engine_control.c
echo }>> src\engine_control.c

echo /* brake_control.c - 브레이크 제어 모듈 */> src\brake_control.c
echo #include "brake_control.h">> src\brake_control.c
echo #include ^<stdio.h^>>> src\brake_control.c
echo void apply_brake() {>> src\brake_control.c
echo     printf("Brake applied\n");>> src\brake_control.c
echo }>> src\brake_control.c

echo /* sensor.c - 센서 데이터 처리 모듈 */> src\sensor.c
echo #include "sensor.h">> src\sensor.c
echo #include ^<stdio.h^>>> src\sensor.c
echo void init_sensors() {>> src\sensor.c
echo     printf("Sensors initialized\n");>> src\sensor.c
echo }>> src\sensor.c
echo float get_vehicle_speed() {>> src\sensor.c
echo     return 80.0; // Example value>> src\sensor.c
echo }>> src\sensor.c

echo /* communication.c - 통신 관련 모듈 */> src\communication.c
echo #include "communication.h">> src\communication.c
echo #include ^<stdio.h^>>> src\communication.c
echo void send_data(float speed) {>> src\communication.c
echo     printf("Speed data sent: %.2f km/h\n", speed);>> src\communication.c
echo }>> src\communication.c

echo /* utils.c - 유틸리티 함수 모음 */> src\utils.c
echo #include "utils.h">> src\utils.c
echo #include ^<stdio.h^>>> src\utils.c
echo // Utility functions will be implemented here>> src\utils.c

:: Create header files
echo /* engine_control.h - 엔진 제어 헤더 */> include\engine_control.h
echo #ifndef ENGINE_CONTROL_H>> include\engine_control.h
echo #define ENGINE_CONTROL_H>> include\engine_control.h
echo void start_engine();>> include\engine_control.h
echo void stop_engine();>> include\engine_control.h
echo #endif>> include\engine_control.h

echo /* brake_control.h - 브레이크 제어 헤더 */> include\brake_control.h
echo #ifndef BRAKE_CONTROL_H>> include\brake_control.h
echo #define BRAKE_CONTROL_H>> include\brake_control.h
echo void apply_brake();>> include\brake_control.h
echo #endif>> include\brake_control.h

echo /* sensor.h - 센서 헤더 */> include\sensor.h
echo #ifndef SENSOR_H>> include\sensor.h
echo #define SENSOR_H>> include\sensor.h
echo void init_sensors();>> include\sensor.h
echo float get_vehicle_speed();>> include\sensor.h
echo #endif>> include\sensor.h

echo /* communication.h - 통신 헤더 */> include\communication.h
echo #ifndef COMMUNICATION_H>> include\communication.h
echo #define COMMUNICATION_H>> include\communication.h
echo void send_data(float speed);>> include\communication.h
echo #endif>> include\communication.h

echo /* utils.h - 유틸리티 헤더 */> include\utils.h
echo #ifndef UTILS_H>> include\utils.h
echo #define UTILS_H>> include\utils.h
echo // Utility function declarations will be here>> include\utils.h
echo #endif>> include\utils.h

:: Create Makefile
echo # Car Controller Project Makefile> Makefile
echo CC = gcc>> Makefile
echo CFLAGS = -Wall -I./include>> Makefile
echo SRCDIR = src>> Makefile
echo BUILDDIR = build>> Makefile
echo >> Makefile
echo SOURCES = $(SRCDIR)/main.c \>> Makefile
echo          $(SRCDIR)/engine_control.c \>> Makefile
echo          $(SRCDIR)/brake_control.c \>> Makefile
echo          $(SRCDIR)/sensor.c \>> Makefile
echo          $(SRCDIR)/communication.c \>> Makefile
echo          $(SRCDIR)/utils.c>> Makefile
echo >> Makefile
echo OBJECTS = $(SOURCES:$(SRCDIR)/%.c=$(BUILDDIR)/%.o)>> Makefile
echo TARGET = $(BUILDDIR)/car_controller>> Makefile
echo >> Makefile
echo all: $(TARGET)>> Makefile
echo >> Makefile
echo $(TARGET): $(OBJECTS)>> Makefile
echo 	$(CC) -o $@ $^>> Makefile
echo >> Makefile
echo $(BUILDDIR)/%.o: $(SRCDIR)/%.c | $(BUILDDIR)>> Makefile
echo 	$(CC) $(CFLAGS) -c $< -o $@>> Makefile
echo >> Makefile
echo $(BUILDDIR):>> Makefile
echo 	mkdir -p $(BUILDDIR)>> Makefile
echo >> Makefile
echo clean:>> Makefile
echo 	rm -f $(BUILDDIR)/*.o $(TARGET)>> Makefile
echo >> Makefile
echo .PHONY: all clean>> Makefile

:: Create README.md
echo # Car Controller Project> README.md
echo >> README.md
echo ## Overview>> README.md
echo This project implements a basic car control system with engine and brake control modules.>> README.md
echo >> README.md
echo ## Structure>> README.md
echo - src/: Source code files>> README.md
echo - include/: Header files>> README.md
echo - docs/: Documentation>> README.md
echo - tests/: Test files>> README.md
echo - build/: Compiled binaries>> README.md
echo >> README.md
echo ## Building the Project>> README.md
echo Run `make` to build the project.>> README.md
echo >> README.md
echo ## Running>> README.md
echo Execute `./build/car_controller` after building.>> README.md

:: Create placeholder files in docs and tests
echo # Documentation will be added here> docs\README.md
echo # Test files will be added here> tests\README.md

echo Project structure created successfully!