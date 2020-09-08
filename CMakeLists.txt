cmake_minimum_required(VERSION 3.10.0)

project("QtUdev"
    VERSION "1.1.0"
    DESCRIPTION "Qt style API to use udev"
    LANGUAGES CXX C
)

## Shared macros and functions:
if(NOT LIRI_LOCAL_ECM)
    find_package(LiriCMakeShared "1.0.0" REQUIRED NO_MODULE)
    list(APPEND CMAKE_MODULE_PATH "${LCS_MODULE_PATH}")
endif()

## Set minimum versions required:
set(QT_MIN_VERSION "5.8.0")

## Add some paths to check for CMake modules:
list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")

## Liri specific setup common for all modules:
include(LiriSetup)

## Find Qt 5:
find_package(Qt5 "${QT_MIN_VERSION}"
    CONFIG REQUIRED
    COMPONENTS
        Core
        DBus
)

## Treat warnings as errors:
add_compile_options(-Wall -Wextra -Werror)

## Add subdirectories:
add_subdirectory(src/udev)
if(BUILD_TESTING)
    if(TARGET Qt5Udev)
        add_subdirectory(tests/auto/udev)
    endif()
endif()
