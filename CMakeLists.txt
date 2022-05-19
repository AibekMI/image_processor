cmake_minimum_required(VERSION 3.17)
project(image_processor)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Werror")

add_library(contrib_catch_main
        ../../contrib/catch/catch_main.cpp)

target_include_directories(contrib_catch_main
        PUBLIC ../../contrib/catch)

add_executable(image_processor
        image_processor.cpp
        Pixel.cpp Image.cpp BMP.cpp filters/Filter.cpp filters/Crop.cpp filters/GrayScale.cpp filters/Sharpening.cpp filters/EdgeDetection.cpp filters/MatrixFilter.cpp filters/Negative.cpp filters/GaussianBlur.cpp Parser.cpp filters/Crystallize.cpp exceptions/bmp_exceptions.cpp exceptions/parser_exceptions.cpp)

add_subdirectory(test)
