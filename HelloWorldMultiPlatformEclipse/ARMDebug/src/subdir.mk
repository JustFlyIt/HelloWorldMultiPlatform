################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/HelloWorldMultiPlatform.c 

OBJS += \
./src/HelloWorldMultiPlatform.o 

C_DEPS += \
./src/HelloWorldMultiPlatform.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	aarch64-ispace-linux-gcc -I"/home/snydedo/workspace/HelloWorldMultiPlatform/src" -I/opt/iSpaceOS/2018.1/sysroots/aarch64-ispace-linux/usr/include -O0 -g3 -Wall -c -fmessage-length=0 --sysroot=/opt/iSpaceOS/2018.1/sysroots/aarch64-ispace-linux/ -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


