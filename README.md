# Embedded C++ Cookbook

Cheatsheet for working with C++ in an embedded bare-metal environment.

- [Intro](#intro)
- [CPUs](#cpus)
  - [ARM](#arm)
    - [ARM Architecture Flags](#arm-architecture-flags)
  - [AVR](#avr)
    - [AVR Architecture Flags](#avr-architecture-flags)
  - [RISCV](#riscv)
- [Hosted vs. Freestanding](#hosted-vs-freestanding)
- [Compilers](#compilers)
  - [GCC](#gcc)
  - [Clang](#clang)
  - [Language Flags](#language-flags)
    - [fno-exceptions](#fno-exceptions)
    - [fno-rtti](#fno-rtti)
  - [Optimization Flags](#optimization-flags)
  - [Debug Flags](#debug-flags)
  - [Warning Flags](#warning-flags)
- [Assembler](#assembler)
  - [Assembler Flags](#assembler-flags)
- [Linker](#linker)
  - [Linker Flags](#linker-flags)
- [Build System](#build-system)
  - [Makefile](#makefile)
  - [CMake](#cmake)
- [Libraries](#libraries)
- [IDE](#ide)
- [Debugging](#debugging)
- [Examples](#examples)

## Intro

## CPUs

- No MMU (most of the time)

### ARM

- 32 Bit
- Cortex-M Series

> Numbers for Frequency, Flash & RAM where taken from the STM product lineup. Others manufakturers may vary, but will probably have a similar offering.

| **Feature**             | **M0/M0+**   | **M3**         | **M4**                        | **M7**                        |
| ----------------------- | ------------ | -------------- | ----------------------------- | ----------------------------- |
| Microarchitecture       | ARMv6-M      | ARMv7-M        | ARMv7E-M                      | ARMv7E-M                      |
| Interrupts              | 1-32         | 1-240          | 1-240                         | 1-240                         |
| Frequency               | 32-64 Mhz    | 24-120 Mhz     | 48-180 Mhz                    | 200-600 Mhz                   |
| Flash                   | 8-256 kBytes | 16-1024 kBytes | 16-2048 kBytes                | 64-2048 kBytes                |
| RAM                     | 2-36 kBytes  | 4-128 kBytes   | 16-640 kBytes                 | 128-1024 kBytes               |
| Floating Point (single) | :x:          | :x:            | :heavy_check_mark: (optional) | :heavy_check_mark: (optional) |
| Floating Point (double) | :x:          | :x:            | :x:                           | :heavy_check_mark: (optional) |
| STM Series              | L0, G0       | F1, F2, L1     | F3, F4, L4                    | F7, H7                        |

#### ARM Architecture Flags

For the complete list see: [GCC manual](https://gcc.gnu.org/onlinedocs/gcc/ARM-Options.html)

| **Flag**      | **Description**                                      | **gcc**            | **clang**          |
| ------------- | ---------------------------------------------------- | ------------------ | ------------------ |
| `-mcpu=`      | This specifies the name of the target ARM processor. | :heavy_check_mark: | :heavy_check_mark: |
| `-mthumb`     | Use thumb instructions.                              | :heavy_check_mark: | :heavy_check_mark: |
| `-mfloat-abi` | Specifies which floating-point ABI to use.           | :heavy_check_mark: | :heavy_check_mark: |

### AVR

- 8 Bit
- Arduino

#### AVR Architecture Flags

| **Flag** | **Description**                                                                            | **gcc**            | **clang**          |
| -------- | ------------------------------------------------------------------------------------------ | ------------------ | ------------------ |
| `-mmcu=` | Select the MCU chip. See [GCC manual](https://gcc.gnu.org/onlinedocs/gcc/AVR-Options.html) | :heavy_check_mark: | :heavy_check_mark: |

### RISCV

- 32 Bit
- Open Source ISA

## Hosted vs. Freestanding

- Headers
- Exceptions
- RTTI

## Compilers

### GCC

### Clang

### Language Flags

| **Flag**          | **Description**                                                                            | **gcc**            | **clang**          |
| ----------------- | ------------------------------------------------------------------------------------------ | ------------------ | ------------------ |
| `-std=c++17`      | Set the language standard for C++. Possible values: **98**, **11**, **14**, **17**, **20** | :heavy_check_mark: | :heavy_check_mark: |
| `-std=gnu++17`    | Same as above, but with GNU extensions enabled.                                            | :heavy_check_mark: | :heavy_check_mark: |
| `-ffreestanding`  | Enables freestanding C/C++. Default is hosted.                                             | :heavy_check_mark: | :heavy_check_mark: |
| `-fno-exceptions` | See [fno-exceptions](#fno-exceptions).                                                     | :heavy_check_mark: | :heavy_check_mark: |
| `-fno-rtti`       | See [fno-rtti](#fno-rtti).                                                                 | :heavy_check_mark: | :heavy_check_mark: |
| `-nostdinc++`     | Do not search for header files in the standard directories specific to C++.                | :heavy_check_mark: | :heavy_check_mark: |

#### fno-exceptions

Disable exception handling. See [GCC manual](https://gcc.gnu.org/onlinedocs/libstdc++/manual/using_exceptions.html) for more details.

#### fno-rtti

Disable generation of information about every class with virtual functions for use by the C++ run-time type identification features `dynamic_cast` and `typeid`. Can save space if not needed. Mixing code compiled with `-frtti` with that compiled with `-fno-rtti` may not work.

### Optimization Flags

| **Flag**            | **Description**                                                         | **gcc**            | **clang**          |
| ------------------- | ----------------------------------------------------------------------- | ------------------ | ------------------ |
| `-O`                | Sets optimization level. Possible values: `0,1,2,3,s,g` & `z` on clang. | :heavy_check_mark: | :heavy_check_mark: |
| `-flto`             | Enables link time optimization.                                         | :heavy_check_mark: | :heavy_check_mark: |
| `-fno-unroll-loops` | Disable loop unrolling. Can save space.                                 | :heavy_check_mark: | :heavy_check_mark: |

### Debug Flags

| **Flag** | **Description**                                                                           | **gcc**            | **clang**          |
| -------- | ----------------------------------------------------------------------------------------- | ------------------ | ------------------ |
| `-Og`    | Enable optimzation level which is tuned for best debuggability while still performing OK. | :heavy_check_mark: | :heavy_check_mark: |
| `-g`     | Include debug symbols.                                                                    | :heavy_check_mark: | :heavy_check_mark: |
| `-ggdb`  |                                                                                           | :heavy_check_mark: | :heavy_check_mark: |

### Warning Flags

| **Flag**     | **Description**                                              | **gcc**            | **clang**          |
| ------------ | ------------------------------------------------------------ | ------------------ | ------------------ |
| `-Wall`      | Basic warnings. Should always be used.                       | :heavy_check_mark: | :heavy_check_mark: |
| `-Wextra`    | Everything from `-Wall` plus more.                           | :heavy_check_mark: | :heavy_check_mark: |
| `-Wpedantic` | Issue all the warnings demanded by strict ISO C and ISO C++. | :heavy_check_mark: | :heavy_check_mark: |
| `-Werror`    | Make all warnings into errors.                               | :heavy_check_mark: | :heavy_check_mark: |

## Assembler

### Assembler Flags

| **Flag**                | **Description**                                | **gcc**            | **clang**          |
| ----------------------- | ---------------------------------------------- | ------------------ | ------------------ |
| `-x assembler-with-cpp` | Enables the C preprocessor for assembly files. | :heavy_check_mark: | :heavy_check_mark: |

## Linker

### Linker Flags

> When using g++ or clang++ as the linker frontend prefix all flags with -Wl. Example: -Wl,--no-undefined

| **Flag**                 | **Description**                           | **gcc**            | **clang**          |
| ------------------------ | ----------------------------------------- | ------------------ | ------------------ |
| `-Tpath/to/linkerscript` | Path to the location of the linker script | :heavy_check_mark: | :heavy_check_mark: |
| `-fstack-usage`          |                                           | :heavy_check_mark: | :x:                |
| `--print-memory-usage`   |                                           | :heavy_check_mark: | :x:                |
| `-static`                |                                           | :heavy_check_mark: | :heavy_check_mark: |

## Build System

### Makefile

### CMake

## Libraries

- STL
- STL-like
- Boost

## IDE

- Terminal + Editor
- VS Code
- CLion

## Debugging

- JTAG
- SWD (STM)

## Examples

See the [examples](./examples) folder for some projects.
