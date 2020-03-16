################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/http_server.c \
../src/main.c \
../src/netconf.c \
../src/serial_debug.c \
../src/stm32f4x7_eth_bsp.c \
../src/stm32f4xx_it.c \
../src/system_stm32f4xx.c \
../src/tcp_client.c \
../src/tcp_echoserver.c \
../src/tcp_server.c 

OBJS += \
./src/http_server.o \
./src/main.o \
./src/netconf.o \
./src/serial_debug.o \
./src/stm32f4x7_eth_bsp.o \
./src/stm32f4xx_it.o \
./src/system_stm32f4xx.o \
./src/tcp_client.o \
./src/tcp_echoserver.o \
./src/tcp_server.o 

C_DEPS += \
./src/http_server.d \
./src/main.d \
./src/netconf.d \
./src/serial_debug.d \
./src/stm32f4x7_eth_bsp.d \
./src/stm32f4xx_it.d \
./src/system_stm32f4xx.d \
./src/tcp_client.d \
./src/tcp_echoserver.d \
./src/tcp_server.d 


# Each subdirectory must supply rules for building sources it contributes
src/http_server.o: ../src/http_server.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F4 -DDEBUG -DSTM32F407ZGTx -DUSE_STDPERIPH_DRIVER -DSTM32F427X -DUSE_STM324x7I_EVAL -c -I"D:/data/my_prj/webserver/STM32CubeIDE/inc" -I"D:/data/my_prj/webserver/STM32CubeIDE/driver/inc" -I"D:/data/my_prj/webserver/STM32CubeIDE/http" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/lwip" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/netif" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/ipv4" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/port/STM32F4x7/Standalone" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/port/STM32F4x7" -I"D:/data/my_prj/webserver/STM32CubeIDE/cmsis" -I"D:/data/my_prj/webserver/STM32CubeIDE/4xx" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"src/http_server.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
src/main.o: ../src/main.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F4 -DDEBUG -DSTM32F407ZGTx -DUSE_STDPERIPH_DRIVER -DSTM32F427X -DUSE_STM324x7I_EVAL -c -I"D:/data/my_prj/webserver/STM32CubeIDE/inc" -I"D:/data/my_prj/webserver/STM32CubeIDE/driver/inc" -I"D:/data/my_prj/webserver/STM32CubeIDE/http" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/lwip" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/netif" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/ipv4" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/port/STM32F4x7/Standalone" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/port/STM32F4x7" -I"D:/data/my_prj/webserver/STM32CubeIDE/cmsis" -I"D:/data/my_prj/webserver/STM32CubeIDE/4xx" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"src/main.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
src/netconf.o: ../src/netconf.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F4 -DDEBUG -DSTM32F407ZGTx -DUSE_STDPERIPH_DRIVER -DSTM32F427X -DUSE_STM324x7I_EVAL -c -I"D:/data/my_prj/webserver/STM32CubeIDE/inc" -I"D:/data/my_prj/webserver/STM32CubeIDE/driver/inc" -I"D:/data/my_prj/webserver/STM32CubeIDE/http" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/lwip" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/netif" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/ipv4" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/port/STM32F4x7/Standalone" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/port/STM32F4x7" -I"D:/data/my_prj/webserver/STM32CubeIDE/cmsis" -I"D:/data/my_prj/webserver/STM32CubeIDE/4xx" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"src/netconf.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
src/serial_debug.o: ../src/serial_debug.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F4 -DDEBUG -DSTM32F407ZGTx -DUSE_STDPERIPH_DRIVER -DSTM32F427X -DUSE_STM324x7I_EVAL -c -I"D:/data/my_prj/webserver/STM32CubeIDE/inc" -I"D:/data/my_prj/webserver/STM32CubeIDE/driver/inc" -I"D:/data/my_prj/webserver/STM32CubeIDE/http" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/lwip" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/netif" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/ipv4" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/port/STM32F4x7/Standalone" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/port/STM32F4x7" -I"D:/data/my_prj/webserver/STM32CubeIDE/cmsis" -I"D:/data/my_prj/webserver/STM32CubeIDE/4xx" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"src/serial_debug.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
src/stm32f4x7_eth_bsp.o: ../src/stm32f4x7_eth_bsp.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F4 -DDEBUG -DSTM32F407ZGTx -DUSE_STDPERIPH_DRIVER -DSTM32F427X -DUSE_STM324x7I_EVAL -c -I"D:/data/my_prj/webserver/STM32CubeIDE/inc" -I"D:/data/my_prj/webserver/STM32CubeIDE/driver/inc" -I"D:/data/my_prj/webserver/STM32CubeIDE/http" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/lwip" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/netif" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/ipv4" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/port/STM32F4x7/Standalone" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/port/STM32F4x7" -I"D:/data/my_prj/webserver/STM32CubeIDE/cmsis" -I"D:/data/my_prj/webserver/STM32CubeIDE/4xx" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"src/stm32f4x7_eth_bsp.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
src/stm32f4xx_it.o: ../src/stm32f4xx_it.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F4 -DDEBUG -DSTM32F407ZGTx -DUSE_STDPERIPH_DRIVER -DSTM32F427X -DUSE_STM324x7I_EVAL -c -I"D:/data/my_prj/webserver/STM32CubeIDE/inc" -I"D:/data/my_prj/webserver/STM32CubeIDE/driver/inc" -I"D:/data/my_prj/webserver/STM32CubeIDE/http" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/lwip" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/netif" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/ipv4" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/port/STM32F4x7/Standalone" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/port/STM32F4x7" -I"D:/data/my_prj/webserver/STM32CubeIDE/cmsis" -I"D:/data/my_prj/webserver/STM32CubeIDE/4xx" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"src/stm32f4xx_it.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
src/system_stm32f4xx.o: ../src/system_stm32f4xx.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F4 -DDEBUG -DSTM32F407ZGTx -DUSE_STDPERIPH_DRIVER -DSTM32F427X -DUSE_STM324x7I_EVAL -c -I"D:/data/my_prj/webserver/STM32CubeIDE/inc" -I"D:/data/my_prj/webserver/STM32CubeIDE/driver/inc" -I"D:/data/my_prj/webserver/STM32CubeIDE/http" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/lwip" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/netif" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/ipv4" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/port/STM32F4x7/Standalone" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/port/STM32F4x7" -I"D:/data/my_prj/webserver/STM32CubeIDE/cmsis" -I"D:/data/my_prj/webserver/STM32CubeIDE/4xx" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"src/system_stm32f4xx.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
src/tcp_client.o: ../src/tcp_client.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F4 -DDEBUG -DSTM32F407ZGTx -DUSE_STDPERIPH_DRIVER -DSTM32F427X -DUSE_STM324x7I_EVAL -c -I"D:/data/my_prj/webserver/STM32CubeIDE/inc" -I"D:/data/my_prj/webserver/STM32CubeIDE/driver/inc" -I"D:/data/my_prj/webserver/STM32CubeIDE/http" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/lwip" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/netif" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/ipv4" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/port/STM32F4x7/Standalone" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/port/STM32F4x7" -I"D:/data/my_prj/webserver/STM32CubeIDE/cmsis" -I"D:/data/my_prj/webserver/STM32CubeIDE/4xx" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"src/tcp_client.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
src/tcp_echoserver.o: ../src/tcp_echoserver.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F4 -DDEBUG -DSTM32F407ZGTx -DUSE_STDPERIPH_DRIVER -DSTM32F427X -DUSE_STM324x7I_EVAL -c -I"D:/data/my_prj/webserver/STM32CubeIDE/inc" -I"D:/data/my_prj/webserver/STM32CubeIDE/driver/inc" -I"D:/data/my_prj/webserver/STM32CubeIDE/http" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/lwip" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/netif" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/ipv4" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/port/STM32F4x7/Standalone" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/port/STM32F4x7" -I"D:/data/my_prj/webserver/STM32CubeIDE/cmsis" -I"D:/data/my_prj/webserver/STM32CubeIDE/4xx" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"src/tcp_echoserver.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
src/tcp_server.o: ../src/tcp_server.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F4 -DDEBUG -DSTM32F407ZGTx -DUSE_STDPERIPH_DRIVER -DSTM32F427X -DUSE_STM324x7I_EVAL -c -I"D:/data/my_prj/webserver/STM32CubeIDE/inc" -I"D:/data/my_prj/webserver/STM32CubeIDE/driver/inc" -I"D:/data/my_prj/webserver/STM32CubeIDE/http" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/lwip" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/netif" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/ipv4" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/port/STM32F4x7/Standalone" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/port/STM32F4x7" -I"D:/data/my_prj/webserver/STM32CubeIDE/cmsis" -I"D:/data/my_prj/webserver/STM32CubeIDE/4xx" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"src/tcp_server.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

