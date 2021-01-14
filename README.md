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

| **Flag**          | **Description** | **gcc**            | **clang**          |
| ----------------- | --------------- | ------------------ | ------------------ |
| -ffreestanding    |                 | :heavy_check_mark: | :heavy_check_mark: |
| -fno-unroll-loops |                 | :heavy_check_mark: | :heavy_check_mark: |

### gcc

### clang

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
