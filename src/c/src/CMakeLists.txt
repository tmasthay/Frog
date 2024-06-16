cmake_minimum_required(VERSION 3.0)
project(Frog)

# Set the target name
set(TARGET arith)

# Set the output directories
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

# Specify the source files
set(SOURCES arith.c)

# Add the library
add_library(${TARGET} SHARED ${SOURCES})

# Set the include directories
target_include_directories(${TARGET} PUBLIC ${CMAKE_SOURCE_DIR})

# Add the executable for the example
add_executable(main examples/main.c)

# Link the executable to the library
target_link_libraries(main ${TARGET})

# Install the library and headers
install(TARGETS ${TARGET} DESTINATION ${CMAKE_INSTALL_PREFIX}/lib)
install(FILES arith.h DESTINATION ${CMAKE_INSTALL_PREFIX}/include)
install(TARGETS main DESTINATION ${CMAKE_INSTALL_PREFIX}/bin)
