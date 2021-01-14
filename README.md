# Embedded C++ Cookbook

- [Intro](#intro)
- [Hosted vs. Freestanding C++](#hosted-vs-freestanding-c--)
- [CPUs](#cpus)
  - [ARM](#arm)
    - [M0/M0+](#m0-m0-)
    - [M3](#m3)
    - [M4](#m4)
  - [AVR](#avr)
  - [RISCV](#riscv)
- [Compilers](#compilers)
  - [gcc](#gcc)
  - [clang](#clang)
  - [Common Flags](#common-flags)
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

## Hosted vs. Freestanding C++

- Headers
- Exceptions
- RTTI

## CPUs

- No MMU (most of the time)

### ARM

- 32 Bit
- Cortex Series

#### M0/M0+

#### M3

#### M4

### AVR

- 8 Bit
- Arduino

### RISCV

- 32 Bit
- Open Source ISA

## Compilers

### gcc

### clang

### Common Flags

| **Flag**                  | **Description**                                                                                 | **gcc**            | **clang**          |
| ------------------------- | ----------------------------------------------------------------------------------------------- | ------------------ | ------------------ |
| `-ffreestanding`          | Enables freestanding C/C++. Default is hosted.                                                  | :heavy_check_mark: | :heavy_check_mark: |
| `-fno-exceptions`         |                                                                                                 | :heavy_check_mark: | :heavy_check_mark: |
| `-fno-builtin`            | Disable special handling and optimizations of builtin functions like `strlen()` and `malloc()`. | :heavy_check_mark: | :heavy_check_mark: |
| `-fno-rtti`               |                                                                                                 | :heavy_check_mark: | :heavy_check_mark: |
| `-fno-threadsafe-statics` |                                                                                                 | :heavy_check_mark: | :heavy_check_mark: |
| `-fpermissive`            |                                                                                                 | :heavy_check_mark: | :heavy_check_mark: |

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

### Makefile

### CMake

## Libraries

- STL
- STL like
- Boost

## IDE

- Terminal + Editor
- VS Code
- CLion

## Debugging

- JTAG
- SWD (STM)

## Examples
