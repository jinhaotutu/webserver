################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lwip/lwip-1.4.1/src/core/ipv4/autoip.c \
../lwip/lwip-1.4.1/src/core/ipv4/icmp.c \
../lwip/lwip-1.4.1/src/core/ipv4/igmp.c \
../lwip/lwip-1.4.1/src/core/ipv4/inet.c \
../lwip/lwip-1.4.1/src/core/ipv4/inet_chksum.c \
../lwip/lwip-1.4.1/src/core/ipv4/ip.c \
../lwip/lwip-1.4.1/src/core/ipv4/ip_addr.c \
../lwip/lwip-1.4.1/src/core/ipv4/ip_frag.c 

OBJS += \
./lwip/lwip-1.4.1/src/core/ipv4/autoip.o \
./lwip/lwip-1.4.1/src/core/ipv4/icmp.o \
./lwip/lwip-1.4.1/src/core/ipv4/igmp.o \
./lwip/lwip-1.4.1/src/core/ipv4/inet.o \
./lwip/lwip-1.4.1/src/core/ipv4/inet_chksum.o \
./lwip/lwip-1.4.1/src/core/ipv4/ip.o \
./lwip/lwip-1.4.1/src/core/ipv4/ip_addr.o \
./lwip/lwip-1.4.1/src/core/ipv4/ip_frag.o 

C_DEPS += \
./lwip/lwip-1.4.1/src/core/ipv4/autoip.d \
./lwip/lwip-1.4.1/src/core/ipv4/icmp.d \
./lwip/lwip-1.4.1/src/core/ipv4/igmp.d \
./lwip/lwip-1.4.1/src/core/ipv4/inet.d \
./lwip/lwip-1.4.1/src/core/ipv4/inet_chksum.d \
./lwip/lwip-1.4.1/src/core/ipv4/ip.d \
./lwip/lwip-1.4.1/src/core/ipv4/ip_addr.d \
./lwip/lwip-1.4.1/src/core/ipv4/ip_frag.d 


# Each subdirectory must supply rules for building sources it contributes
lwip/lwip-1.4.1/src/core/ipv4/autoip.o: ../lwip/lwip-1.4.1/src/core/ipv4/autoip.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F4 -DDEBUG -DSTM32F407ZGTx -DUSE_STDPERIPH_DRIVER -DSTM32F427X -DUSE_STM324x7I_EVAL -c -I"D:/data/my_prj/webserver/STM32CubeIDE/inc" -I"D:/data/my_prj/webserver/STM32CubeIDE/driver/inc" -I"D:/data/my_prj/webserver/STM32CubeIDE/http" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/lwip" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/netif" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/ipv4" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/port/STM32F4x7/Standalone" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/port/STM32F4x7" -I"D:/data/my_prj/webserver/STM32CubeIDE/cmsis" -I"D:/data/my_prj/webserver/STM32CubeIDE/4xx" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"lwip/lwip-1.4.1/src/core/ipv4/autoip.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
lwip/lwip-1.4.1/src/core/ipv4/icmp.o: ../lwip/lwip-1.4.1/src/core/ipv4/icmp.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F4 -DDEBUG -DSTM32F407ZGTx -DUSE_STDPERIPH_DRIVER -DSTM32F427X -DUSE_STM324x7I_EVAL -c -I"D:/data/my_prj/webserver/STM32CubeIDE/inc" -I"D:/data/my_prj/webserver/STM32CubeIDE/driver/inc" -I"D:/data/my_prj/webserver/STM32CubeIDE/http" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/lwip" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/netif" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/ipv4" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/port/STM32F4x7/Standalone" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/port/STM32F4x7" -I"D:/data/my_prj/webserver/STM32CubeIDE/cmsis" -I"D:/data/my_prj/webserver/STM32CubeIDE/4xx" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"lwip/lwip-1.4.1/src/core/ipv4/icmp.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
lwip/lwip-1.4.1/src/core/ipv4/igmp.o: ../lwip/lwip-1.4.1/src/core/ipv4/igmp.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F4 -DDEBUG -DSTM32F407ZGTx -DUSE_STDPERIPH_DRIVER -DSTM32F427X -DUSE_STM324x7I_EVAL -c -I"D:/data/my_prj/webserver/STM32CubeIDE/inc" -I"D:/data/my_prj/webserver/STM32CubeIDE/driver/inc" -I"D:/data/my_prj/webserver/STM32CubeIDE/http" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/lwip" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/netif" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/ipv4" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/port/STM32F4x7/Standalone" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/port/STM32F4x7" -I"D:/data/my_prj/webserver/STM32CubeIDE/cmsis" -I"D:/data/my_prj/webserver/STM32CubeIDE/4xx" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"lwip/lwip-1.4.1/src/core/ipv4/igmp.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
lwip/lwip-1.4.1/src/core/ipv4/inet.o: ../lwip/lwip-1.4.1/src/core/ipv4/inet.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F4 -DDEBUG -DSTM32F407ZGTx -DUSE_STDPERIPH_DRIVER -DSTM32F427X -DUSE_STM324x7I_EVAL -c -I"D:/data/my_prj/webserver/STM32CubeIDE/inc" -I"D:/data/my_prj/webserver/STM32CubeIDE/driver/inc" -I"D:/data/my_prj/webserver/STM32CubeIDE/http" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/lwip" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/netif" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/ipv4" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/port/STM32F4x7/Standalone" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/port/STM32F4x7" -I"D:/data/my_prj/webserver/STM32CubeIDE/cmsis" -I"D:/data/my_prj/webserver/STM32CubeIDE/4xx" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"lwip/lwip-1.4.1/src/core/ipv4/inet.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
lwip/lwip-1.4.1/src/core/ipv4/inet_chksum.o: ../lwip/lwip-1.4.1/src/core/ipv4/inet_chksum.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F4 -DDEBUG -DSTM32F407ZGTx -DUSE_STDPERIPH_DRIVER -DSTM32F427X -DUSE_STM324x7I_EVAL -c -I"D:/data/my_prj/webserver/STM32CubeIDE/inc" -I"D:/data/my_prj/webserver/STM32CubeIDE/driver/inc" -I"D:/data/my_prj/webserver/STM32CubeIDE/http" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/lwip" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/netif" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/ipv4" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/port/STM32F4x7/Standalone" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/port/STM32F4x7" -I"D:/data/my_prj/webserver/STM32CubeIDE/cmsis" -I"D:/data/my_prj/webserver/STM32CubeIDE/4xx" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"lwip/lwip-1.4.1/src/core/ipv4/inet_chksum.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
lwip/lwip-1.4.1/src/core/ipv4/ip.o: ../lwip/lwip-1.4.1/src/core/ipv4/ip.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F4 -DDEBUG -DSTM32F407ZGTx -DUSE_STDPERIPH_DRIVER -DSTM32F427X -DUSE_STM324x7I_EVAL -c -I"D:/data/my_prj/webserver/STM32CubeIDE/inc" -I"D:/data/my_prj/webserver/STM32CubeIDE/driver/inc" -I"D:/data/my_prj/webserver/STM32CubeIDE/http" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/lwip" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/netif" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/ipv4" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/port/STM32F4x7/Standalone" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/port/STM32F4x7" -I"D:/data/my_prj/webserver/STM32CubeIDE/cmsis" -I"D:/data/my_prj/webserver/STM32CubeIDE/4xx" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"lwip/lwip-1.4.1/src/core/ipv4/ip.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
lwip/lwip-1.4.1/src/core/ipv4/ip_addr.o: ../lwip/lwip-1.4.1/src/core/ipv4/ip_addr.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F4 -DDEBUG -DSTM32F407ZGTx -DUSE_STDPERIPH_DRIVER -DSTM32F427X -DUSE_STM324x7I_EVAL -c -I"D:/data/my_prj/webserver/STM32CubeIDE/inc" -I"D:/data/my_prj/webserver/STM32CubeIDE/driver/inc" -I"D:/data/my_prj/webserver/STM32CubeIDE/http" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/lwip" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/netif" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/ipv4" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/port/STM32F4x7/Standalone" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/port/STM32F4x7" -I"D:/data/my_prj/webserver/STM32CubeIDE/cmsis" -I"D:/data/my_prj/webserver/STM32CubeIDE/4xx" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"lwip/lwip-1.4.1/src/core/ipv4/ip_addr.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
lwip/lwip-1.4.1/src/core/ipv4/ip_frag.o: ../lwip/lwip-1.4.1/src/core/ipv4/ip_frag.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F4 -DDEBUG -DSTM32F407ZGTx -DUSE_STDPERIPH_DRIVER -DSTM32F427X -DUSE_STM324x7I_EVAL -c -I"D:/data/my_prj/webserver/STM32CubeIDE/inc" -I"D:/data/my_prj/webserver/STM32CubeIDE/driver/inc" -I"D:/data/my_prj/webserver/STM32CubeIDE/http" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/lwip" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/netif" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/src/include/ipv4" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/port/STM32F4x7/Standalone" -I"D:/data/my_prj/webserver/STM32CubeIDE/lwip/lwip-1.4.1/port/STM32F4x7" -I"D:/data/my_prj/webserver/STM32CubeIDE/cmsis" -I"D:/data/my_prj/webserver/STM32CubeIDE/4xx" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"lwip/lwip-1.4.1/src/core/ipv4/ip_frag.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

