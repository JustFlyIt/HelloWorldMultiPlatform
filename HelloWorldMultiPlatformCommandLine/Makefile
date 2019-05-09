# MULTIPLE PROCESSOR/PLATFORM MAKEFILE

SHELL = /bin/sh

ECHO 		= echo
FLAGS 		= -fopenmp
DEBUGFLAGS 	= -g -p -pg -ftest-coverage -fprofile-arcs -lrt

HW_TARGET_ARM 	= hwARM.exe
HW_TARGET_RISCV = hwRISCV.exe
HW_TARGET_INTEL = hwINTEL.exe
HWSOURCES	= $(shell echo ./src/*.c)
LIBS	= -lm
HW_OBJECTS	= $(HWSOURCES:.c=.o)

intel:	CC	= /usr/bin/gcc
intel:	CC_LINKER	= /usr/bin/gcc
intel:	CC_LINKER_FLAGS = --sysroot=/ -lstdc++ -lm -o
intel:	MISCOPTS	= -c -pipe -g --sysroot=/
intel:	RELEASEFLAGS	= -O2 -lrt
intel:	INCLUDES	= -I/usr/include -I ./src
intel: $(HW_TARGET_INTEL)
	@echo Built HW_TARGET_INTEL

$(HW_TARGET_INTEL): $(HW_OBJECTS)
	@echo Building HelloWorld for INTEL
	$(CC_LINKER) $(CC_LINKER_FLAGS) $(HW_TARGET_INTEL) $(HW_OBJECTS) $(LIBS)

arm:	CC	= /opt/iSpaceOS/2018.1/sysroots/x86_64-ispaceossdk-linux/usr/bin/aarch64-ispace-linux/aarch64-ispace-linux-gcc
arm:	CC_LINKER	= /opt/iSpaceOS/2018.1/sysroots/x86_64-ispaceossdk-linux/usr/bin/aarch64-ispace-linux/aarch64-ispace-linux-gcc
arm:	CC_LINKER_FLAGS = --sysroot=/opt/iSpaceOS/2018.1/sysroots/aarch64-ispace-linux -ftest-coverage -fprofile-arcs -lstdc++ -lm -o
arm:	MISCOPTS	= -c -pipe -g -march=armv8-a+lse+crc -mtune=cortex-a53 --sysroot=/opt/iSpaceOS/2018.1/sysroots/aarch64-ispace-linux
arm:	RELEASEFLAGS	= -O2 -lrt -ffat-lto-objects -flto -mstrict-align -mcmodel=large
arm:	INCLUDES	= -I/opt/iSpaceOS/2018.1/sysroots/aarch64-ispace-linux/usr/include/c++/7.3.0 -I/opt/iSpaceOS/2018.1/sysroots/aarch64-ispace-linux/usr/include/c++/7.3.0/aarch64-ispace-linux -I/opt/iSpaceOS/2018.1/sysroots/aarch64-ispace-linux/usr/include -I sp/src -I dp/src -I af/src -I dr/src -I dr/include
arm: $(HW_TARGET_ARM)
	@echo Built HW_TARGET_ARM

$(HW_TARGET_ARM): $(HW_OBJECTS)
	@echo Building HelloWorld for ARM
	$(CC_LINKER) $(CC_LINKER_FLAGS) $(HW_TARGET_ARM) $(HW_OBJECTS) $(LIBS)

riscv:	CC	= /opt/iSpaceOS/2018.1/sysroots/x86_64-ispaceossdk-linux/usr/bin/riscv64-ispace-linux/riscv64-ispace-linux-gcc
riscv:	CC_LINKER	= /opt/iSpaceOS/2018.1/sysroots/x86_64-ispaceossdk-linux/usr/bin/riscv64-ispace-linux/riscv64-ispace-linux-gcc
riscv:	CC_LINKER_FLAGS	= --sysroot=/opt/iSpaceOS/2018.1/sysroots/riscv64-ispace-linux -lstdc++ -lm -o
riscv:	MISCOPTS	= -c -pipe -g --sysroot=/opt/iSpaceOS/2018.1/sysroots/riscv64-ispace-linux
riscv:	RELEASEFLAGS	= -O3 -lrt -ffat-lto-objects -flto -mstrict-align -mcmodel=medany
riscv:	INCLUDES	= -I/opt/iSpaceOS/2018.1/sysroots/riscv64-ispace-linux/usr/include/c++/7.3.0 -I/opt/iSpaceOS/2018.1/sysroots/riscv64-ispace-linux/usr/include/c++/7.3.0/riscv64-ispace-linux -I/opt/iSpaceOS/2018.1/sysroots/riscv64-ispace-linux/usr/include -I sp/src -I dp/src -I af/src -I dr/src -I dr/include
riscv:	$(HW_TARGET_RISCV)
	@echo Built HW_TARGET_RISCV

$(HW_TARGET_RISCV): $(HW_OBJECTS)
	@echo Building HelloWorld for RISCV
	$(CC_LINKER) $(CC_LINKER_FLAGS) $(HW_TARGET_RISCV) $(HW_OBJECTS) $(LIBS)

%.o: %.c $(HEADERS)
	-rm -f $(HW_OBJECTS)
	@echo Building $<
	$(CC) $(INCLUDES) -o $@ -c $< $(FLAGS) $(RELEASEFLAGS) $(MISCOPTS)

clean:
	-rm -f $(HW_OBJECTS) ./src/*~

mv_riscv:
	-scp hwRISCV.exe root@192.168.1.2:/tmp

mv_arm:
	-scp hwARM.exe root@192.168.1.102:/tmp
