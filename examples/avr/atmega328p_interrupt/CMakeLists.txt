# Select the minimum required cmake version. This
# needs to be set.
cmake_minimum_required(VERSION 3.15)

# Give your project a name and enable assembly, C
# and C++ as the languages used.
project(atmega328p_interrupt ASM C CXX)

# Only do these if this is the main project,
# and not if it is included through add_subdirectory.
if(CMAKE_PROJECT_NAME STREQUAL PROJECT_NAME)
    # Executables create via add_executable will use
    # the .elf suffix.
    set(CMAKE_EXECUTABLE_SUFFIX ".elf")

    # Set C11 with no extensions enabled. Fail if the
    # standard is not supported.
    set(CMAKE_C_STANDARD 11)
    set(CMAKE_C_STANDARD_REQUIRED ON)
    set(CMAKE_C_EXTENSIONS OFF)

    # Set C++17 with no extensions enabled. Fail if the
    # standard is not supported.
    set(CMAKE_CXX_STANDARD 17)
    set(CMAKE_CXX_STANDARD_REQUIRED ON)
    set(CMAKE_CXX_EXTENSIONS OFF)

    # Move static libraries and executables to the a single
    # directory.
    set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

    # Create compile-commands.json file. Useful for checking
    # if the correct flags are set.
    set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
endif()

# Create an executable
add_executable(${PROJECT_NAME})
# Give it source files
target_sources(${PROJECT_NAME} PRIVATE src/main.cpp)