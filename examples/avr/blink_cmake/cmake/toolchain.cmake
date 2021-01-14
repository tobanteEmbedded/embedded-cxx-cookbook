set(CMAKE_SYSTEM_NAME       Generic)
set(CMAKE_SYSTEM_PROCESSOR  avr)

set(CROSS_COMPILE avr-)
set(TOOLCHAIN_PREFIX avr-)
set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)
set(CMAKE_ASM_COMPILER  "${TOOLCHAIN_PREFIX}gcc")
set(CMAKE_C_COMPILER    "${TOOLCHAIN_PREFIX}gcc")
set(CMAKE_CXX_COMPILER  "${TOOLCHAIN_PREFIX}g++")
set(CMAKE_LINKER        "${TOOLCHAIN_PREFIX}ld")
set(CMAKE_AR            "${TOOLCHAIN_PREFIX}ar")
set(CMAKE_NM            "${TOOLCHAIN_PREFIX}nm")
set(CMAKE_RANLIB        "${TOOLCHAIN_PREFIX}ranlib")
set(CMAKE_OBJCOPY       "${TOOLCHAIN_PREFIX}objcopy" CACHE FILEPATH "The toolchain objcopy command" FORCE)
set(CMAKE_SIZE_UTIL     "${TOOLCHAIN_PREFIX}size"    CACHE INTERNAL "size tool")

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

set(CPU_FLAGS " -mmcu=atmega328p")
set(COMPILER_FLAGS " -ffreestanding")

set(CMAKE_ASM_FLAGS "${CMAKE_ASM_FLAGS} ${CPU_FLAGS}")
set(CMAKE_ASM_FLAGS "${CMAKE_ASM_FLAGS} -x assembler-with-cpp")
set(CMAKE_ASM_FLAGS "${CMAKE_ASM_FLAGS} -Wno-comment")
set(CMAKE_ASM_FLAGS "${CMAKE_ASM_FLAGS}" CACHE INTERNAL "asm compiler flags")

# general
set(CMAKE_C_FLAGS             "${CPU_FLAGS} ${COMPILER_FLAGS}" CACHE INTERNAL "c compiler flags")
set(CMAKE_CXX_FLAGS           "${CPU_FLAGS} ${COMPILER_FLAGS}" CACHE INTERNAL "cxx compiler flags")
set(CMAKE_EXE_LINKER_FLAGS    "${CPU_FLAGS}" CACHE INTERNAL "linker flags release")

# debug only
set(CMAKE_ASM_FLAGS_DEBUG           "-g"                                CACHE INTERNAL "asm compiler flags debug")
set(CMAKE_C_FLAGS_DEBUG             "${CMAKE_C_FLAGS} -Og -g -DDEBUG"   CACHE INTERNAL "c compiler flags debug")
set(CMAKE_CXX_FLAGS_DEBUG           "${CMAKE_CXX_FLAGS} -Og -g -DDEBUG" CACHE INTERNAL "cxx compiler flags debug")
set(CMAKE_EXE_LINKER_FLAGS_DEBUG    "${CMAKE_EXE_LINKER_FLAGS}"         CACHE INTERNAL "linker flags debug")

# release only
set(CMAKE_ASM_FLAGS_RELEASE         ""                                  CACHE INTERNAL "asm compiler flags release")
set(CMAKE_C_FLAGS_RELEASE           "${CMAKE_C_FLAGS}  -Os -DNDEBUG "   CACHE INTERNAL "c compiler flags release")
set(CMAKE_CXX_FLAGS_RELEASE         "${CMAKE_CXX_FLAGS} -Os -DNDEBUG "  CACHE INTERNAL "cxx compiler flags release")
set(CMAKE_EXE_LINKER_FLAGS_RELEASE  "${CMAKE_EXE_LINKER_FLAGS}"         CACHE INTERNAL "linker flags release")
