################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../CDC.cpp \
../HID.cpp \
../HardwareSerial.cpp \
../HardwareSerial0.cpp \
../HardwareSerial1.cpp \
../HardwareSerial2.cpp \
../HardwareSerial3.cpp \
../IPAddress.cpp \
../Print.cpp \
../Stream.cpp \
../Tone.cpp \
../USBCore.cpp \
../WMath.cpp \
../WString.cpp \
../abi.cpp \
../main.cpp \
../new.cpp 

C_SRCS += \
../WInterrupts.c \
../hooks.c \
../wiring.c \
../wiring_analog.c \
../wiring_digital.c \
../wiring_pulse.c \
../wiring_shift.c 

S_UPPER_SRCS += \
../wiring_pulse.S 

OBJS += \
./CDC.o \
./HID.o \
./HardwareSerial.o \
./HardwareSerial0.o \
./HardwareSerial1.o \
./HardwareSerial2.o \
./HardwareSerial3.o \
./IPAddress.o \
./Print.o \
./Stream.o \
./Tone.o \
./USBCore.o \
./WInterrupts.o \
./WMath.o \
./WString.o \
./abi.o \
./hooks.o \
./main.o \
./new.o \
./wiring.o \
./wiring_analog.o \
./wiring_digital.o \
./wiring_pulse.o \
./wiring_shift.o 

C_DEPS += \
./WInterrupts.d \
./hooks.d \
./wiring.d \
./wiring_analog.d \
./wiring_digital.d \
./wiring_pulse.d \
./wiring_shift.d 

S_UPPER_DEPS += \
./wiring_pulse.d 

CPP_DEPS += \
./CDC.d \
./HID.d \
./HardwareSerial.d \
./HardwareSerial0.d \
./HardwareSerial1.d \
./HardwareSerial2.d \
./HardwareSerial3.d \
./IPAddress.d \
./Print.d \
./Stream.d \
./Tone.d \
./USBCore.d \
./WMath.d \
./WString.d \
./abi.d \
./main.d \
./new.d 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I/opt/arduino-1.6.5/hardware/arduino/avr/variants/standard/ -I"/work/opensource/personal/ArduinoCore" -Wall -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -funsigned-char -funsigned-bitfields -fno-exceptions -mmcu=atmega328p -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

%.o: ../%.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I/opt/arduino-1.6.5/hardware/arduino/avr/variants/standard/ -Wall -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -mmcu=atmega328p -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

%.o: ../%.S
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Assembler'
	avr-gcc -x assembler-with-cpp -mmcu=atmega328p -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


