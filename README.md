# Embedded C++ Cookbook

Cheatsheet for working with C++ in an embedded bare-metal environment.

- [Intro](#intro)
- [CPUs](#cpus)
  - [ARM](#arm)
  - [AVR](#avr)
  - [RISCV](#riscv)
- [Hosted vs. Freestanding C++](#hosted-vs-freestanding-c--)
- [Compilers](#compilers)
  - [GCC](#gcc)
  - [Clang](#clang)
  - [Language Flags](#language-flags)
  - [Architecture Flags](#architecture-flags)
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
- Cortex Series

| **Feature** | **M0/M0+**   | **M3**           | **M4**           |
| ----------- | ------------ | ---------------- | ---------------- |
| Interrupts  | 1-32         | 1-240            | 1-240            |
| STM Series  | STM32 L0, G0 | STM32 F1, F2, L1 | STM32 F3, F4, L4 |

### AVR

- 8 Bit
- Arduino

### RISCV

- 32 Bit
- Open Source ISA

## Hosted vs. Freestanding C++

- Headers
- Exceptions
- RTTI

## Compilers

### GCC

### Clang

### Language Flags

| **Flag**          | **Description**                                                                                 | **gcc**            | **clang**          |
| ----------------- | ----------------------------------------------------------------------------------------------- | ------------------ | ------------------ |
| `-std=c11`        | Set the language standard for C. Possible values: **90**, **11**, **17**                        | :heavy_check_mark: | :heavy_check_mark: |
| `-std=c++17`      | Set the language standard for C++. Possible values: **98**, **11**, **14**, **17**, **20**      | :heavy_check_mark: | :heavy_check_mark: |
| `-std=gnu11`      | Same as above, but with GNU extensions enabled.                                                 | :heavy_check_mark: | :heavy_check_mark: |
| `-std=gnu++17`    | Same as above, but with GNU extensions enabled.                                                 | :heavy_check_mark: | :heavy_check_mark: |
| `-ffreestanding`  | Enables freestanding C/C++. Default is hosted.                                                  | :heavy_check_mark: | :heavy_check_mark: |
| `-fno-exceptions` |                                                                                                 | :heavy_check_mark: | :heavy_check_mark: |
| `-fno-builtin`    | Disable special handling and optimizations of builtin functions like `strlen()` and `malloc()`. | :heavy_check_mark: | :heavy_check_mark: |
| `-fno-rtti`       |                                                                                                 | :heavy_check_mark: | :heavy_check_mark: |
| `-fpermissive`    |                                                                                                 | :heavy_check_mark: | :heavy_check_mark: |

### Architecture Flags

| **Flag**      | **Description** | **gcc**            | **clang**          |
| ------------- | --------------- | ------------------ | ------------------ |
| `-mpcu=`      |                 | :heavy_check_mark: | :heavy_check_mark: |
| `-mthumb`     |                 | :heavy_check_mark: | :heavy_check_mark: |
| `-mfloat-abi` |                 | :heavy_check_mark: | :heavy_check_mark: |

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

| **Flag**     | **Description** | **gcc**            | **clang**          |
| ------------ | --------------- | ------------------ | ------------------ |
| `-Wall`      |                 | :heavy_check_mark: | :heavy_check_mark: |
| `-Wextra`    |                 | :heavy_check_mark: | :heavy_check_mark: |
| `-Wpedantic` |                 | :heavy_check_mark: | :heavy_check_mark: |
| `-Werror`    |                 | :heavy_check_mark: | :heavy_check_mark: |

## Assembler

### Assembler Flags

| **Flag** | **Description** | **gcc**            | **clang**          |
| -------- | --------------- | ------------------ | ------------------ |
|          |                 | :heavy_check_mark: | :heavy_check_mark: |

## Linker

### Linker Flags

| **Flag**                 | **Description** | **gcc**            | **clang**          |
| ------------------------ | --------------- | ------------------ | ------------------ |
| `-Tpath/to/linkerscript` |                 | :heavy_check_mark: | :heavy_check_mark: |
| `-fstack-usage`          |                 | :heavy_check_mark: | :x:                |
| `--print-memory-usage`   |                 | :heavy_check_mark: | :x:                |
| `-static`                |                 | :heavy_check_mark: | :heavy_check_mark: |

## Build System

### Platform IO

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
