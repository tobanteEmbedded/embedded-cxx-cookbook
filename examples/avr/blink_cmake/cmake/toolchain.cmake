set(CMAKE_SYSTEM_NAME       Generic)
set(CMAKE_SYSTEM_PROCESSOR  avr)
set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)

set(CMAKE_ASM_COMPILER  "avr-gcc")
set(CMAKE_C_COMPILER    "avr-gcc")
set(CMAKE_CXX_COMPILER  "avr-g++")
set(CMAKE_LINKER        "avr-ld")
set(CMAKE_AR            "avr-ar")
set(CMAKE_NM            "avr-nm")
set(CMAKE_RANLIB        "avr-ranlib")
set(CMAKE_OBJCOPY       "avr-objcopy" CACHE FILEPATH "The toolchain objcopy command" FORCE)
set(CMAKE_SIZE_UTIL     "avr-size"    CACHE INTERNAL "size tool")

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

set(CPU_FLAGS "-mmcu=atmega328p")
set(COMPILER_FLAGS "-ffreestanding")

# general
set(CMAKE_ASM_FLAGS         "${CPU_FLAGS} -x assembler-with-cpp -Wno-comment" CACHE INTERNAL "")
set(CMAKE_C_FLAGS           "${CPU_FLAGS} ${COMPILER_FLAGS}"                  CACHE INTERNAL "")
set(CMAKE_CXX_FLAGS         "${CPU_FLAGS} ${COMPILER_FLAGS}"                  CACHE INTERNAL "")
set(CMAKE_EXE_LINKER_FLAGS  "${CPU_FLAGS}"                                    CACHE INTERNAL "")

# debug only
set(CMAKE_ASM_FLAGS_DEBUG           "-g"                CACHE INTERNAL "")
set(CMAKE_C_FLAGS_DEBUG             "-Og -g -DDEBUG"    CACHE INTERNAL "")
set(CMAKE_CXX_FLAGS_DEBUG           "-Og -g -DDEBUG"    CACHE INTERNAL "")
set(CMAKE_EXE_LINKER_FLAGS_DEBUG    ""                  CACHE INTERNAL "")

# release only
set(CMAKE_ASM_FLAGS_RELEASE         ""                  CACHE INTERNAL "")
set(CMAKE_C_FLAGS_RELEASE           "-Os -DNDEBUG "     CACHE INTERNAL "")
set(CMAKE_CXX_FLAGS_RELEASE         "-Os -DNDEBUG "     CACHE INTERNAL "")
set(CMAKE_EXE_LINKER_FLAGS_RELEASE  ""                  CACHE INTERNAL "")
