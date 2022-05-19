#pragma once

#include <cstdint>
#include "Image.h"
#include "exceptions/bmp_exceptions.h"


namespace BMP {

#pragma pack(push, 1)
    struct FileHeader {
        uint16_t signature_ = 0x4D42;
        uint32_t file_size_;
        uint32_t reserved_ = 0;
        uint32_t offset_ = 54;
    };
    struct DIBHeader {
        uint32_t header_size_ = 40;
        int32_t bitmap_width_;
        int32_t bitmap_height_;
        uint16_t color_planes_number_ = 1;
        uint16_t bits_per_pixel = 24;
        uint32_t compression_method_ = 0;
        uint32_t image_size_ = 0;
        int32_t horizontal_resolution_ = 11811;
        int32_t vertical_resolution_ = 11811;
        uint32_t color_palette_ = 0;
        uint32_t important_color_number_ = 0;
    };
#pragma pack(pop)

    Image FullImport(const char *path);

    void FullExport(const char *path, const Image &image);
}
