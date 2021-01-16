ASM  	= avr-gcc
CC  	= avr-gcc
CXX 	= avr-g++
LD  	= avr-g++
OBJCOPY = avr-objcopy
OBJDUMP = avr-objdump
SIZE	= avr-size
QEMU	= qemu-system-avr

BIN = bin
MCU = atmega328p
FIRMWARE = ${BIN}/${MCU}_uart

CXXFLAGS = -mmcu=${MCU} -std=c++17 -Os -Wall -Wextra -Wpedantic

SRC 	+= src/main
OBJS 	:= ${addsuffix .o, ${SRC}}

.PHONY: all
all: ${BIN} ${FIRMWARE}.bin

.PRECIOUS: ${FIRMWARE}.elf
%.bin: %.elf
	${OBJCOPY} -O binary $< $@

.PRECIOUS: ${OBJS}
%.elf: ${OBJS}
	${LD} ${CXXFLAGS} -o $@ $^

%.o: %.cpp
	${CXX} -c ${CXXFLAGS} -o $@ $^

${BIN}:
	mkdir -p ${BIN}

.PHONY: run
run:
	${QEMU} -machine uno -bios ${FIRMWARE}.elf

.PHONY: clean
clean:
	find src -type f -name '*.o' -exec rm {} +
	rm -rf ${BIN}

