################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lwip/lwip-1.4.1/port/STM32F4x7/Standalone/ethernetif.c 

OBJS += \
./lwip/lwip-1.4.1/port/STM32F4x7/Standalone/ethernetif.o 

C_DEPS += \
./lwip/lwip-1.4.1/port/STM32F4x7/Standalone/ethernetif.d 


# Each subdirectory must supply rules for building sources it contributes
lwip/lwip-1.4.1/port/STM32F4x7/Standalone/ethernetif.o: ../lwip/lwip-1.4.1/port/STM32F4x7/Standalone/ethernetif.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F4 -DDEBUG -DSTM32F407ZGTx -DUSE_STDPERIPH_DRIVER -DSTM32F427X -DUSE_STM324x7I_EVAL -c -I"D:/data/my_prj/webserver/STM32CubeIDE/inc" -I"D:/data/my_prj/webserver/STM32CubeIDE/driver/inc" -I"D:/data/my_prj/webserver/STM32CubeIDE/http" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/lwip" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/netif" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/ipv4" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/port/STM32F4x7/Standalone" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/port/STM32F4x7" -I"D:/data/my_prj/webserver/STM32CubeIDE/cmsis" -I"D:/data/my_prj/webserver/STM32CubeIDE/4xx" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"lwip/lwip-1.4.1/port/STM32F4x7/Standalone/ethernetif.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

