CC  	= avr-gcc
CXX 	= avr-g++
OBJDUMP = avr-objdump
SIZE	= avr-size

MCU = atmega328p
CXXFLAGS = -mmcu=${MCU} --std=c++2a -O0 -ffreestanding -fno-exceptions -Wall -Wextra -Wpedantic
CXXSRC += main.cpp

firmware: main.o
	${CXX} ${CXXFLAGS} -o $@ $^

main.o: main.cpp
	${CXX} -c ${CXXFLAGS} -o $@ $^

.PHONY: clean
clean:
	rm -f firmware *.o

