################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/subdir.mk
-include lwip/lwip-1.4.1/src/netif/ppp/subdir.mk
-include lwip/lwip-1.4.1/src/netif/subdir.mk
-include lwip/lwip-1.4.1/src/core/snmp/subdir.mk
-include lwip/lwip-1.4.1/src/core/ipv4/subdir.mk
-include lwip/lwip-1.4.1/src/core/subdir.mk
-include lwip/lwip-1.4.1/src/api/subdir.mk
-include lwip/lwip-1.4.1/port/STM32F4x7/Standalone/subdir.mk
-include http/subdir.mk
-include driver/src/subdir.mk
-include Startup/subdir.mk
-include 4xx/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
webserver-mk.elf \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
webserver-mk.list \

OBJCOPY_BIN += \
webserver-mk.bin \


# All Target
all: webserver-mk.elf secondary-outputs

# Tool invocations
webserver-mk.elf: $(OBJS) $(USER_OBJS) D:\data\my_prj\webserver\STM32CubeIDE\STM32F407ZGTX_FLASH.ld
	arm-none-eabi-gcc -o "webserver-mk.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m4 -T"D:\data\my_prj\webserver\STM32CubeIDE\STM32F407ZGTX_FLASH.ld" --specs=nosys.specs -Wl,-Map="webserver-mk.map" -Wl,--gc-sections -static --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

webserver-mk.list: $(EXECUTABLES)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "webserver-mk.list"
	@echo 'Finished building: $@'
	@echo ' '

webserver-mk.bin: $(EXECUTABLES)
	arm-none-eabi-objcopy  -O binary $(EXECUTABLES) "webserver-mk.bin"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) *
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST) $(OBJCOPY_BIN)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
