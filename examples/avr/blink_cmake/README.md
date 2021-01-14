# AVR: blink_cmake

## Quick Start

See [cmake/toolchain.cmake](./cmake/toolchain.cmake) for compiler flags.

```sh
cmake -H. -Bbuild -DCMAKE_BUILD_TYPE=Debug -DCMAKE_TOOLCHAIN_FILE=cmake/toolchain.cmake
cmake --build build
```
