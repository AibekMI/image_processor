add_executable(tests
        ../Pixel.cpp
        ../Image.cpp
        ../BMP.cpp
        ../filters/Filter.cpp
        ../filters/Crop.cpp
        ../filters/GrayScale.cpp
        ../filters/Sharpening.cpp
        ../filters/Sharpening.h
        ../filters/EdgeDetection.cpp
        ../filters/MatrixFilter.cpp
        ../filters/Negative.cpp
        ../filters/GaussianBlur.cpp
        ../Parser.cpp
        ../filters/Crystallize.cpp
        ../exceptions/bmp_exceptions.cpp
        ../exceptions/parser_exceptions.cpp
        tests.cpp
        )

target_link_libraries(tests contrib_catch_main)
