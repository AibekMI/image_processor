#include "BMP.h"
#include <fstream>
#include <cmath>

Image BMP::FullImport(const char *path) {
    std::ifstream in(path, std::ios::in);
    BMP::FileHeader file_header;
    BMP::DIBHeader dib_header;
    int32_t padding_amount;

    if (in) {
        try {
            in.read(reinterpret_cast<char *>(&file_header), sizeof(BMP::FileHeader));
            in.read(reinterpret_cast<char *>(&dib_header), sizeof(BMP::DIBHeader));
            Pixel pixel;
            in.seekg(file_header.offset_, in.beg);

            bool bottom_up_orientation = (dib_header.bitmap_height_ >= 0);
            dib_header.bitmap_height_ = std::abs(dib_header.bitmap_height_);

            padding_amount = dib_header.bitmap_width_ % 4;

            Image image(dib_header.bitmap_width_, dib_header.bitmap_height_);
            for (int32_t y = 0; y < dib_header.bitmap_height_; ++y) {
                for (int32_t x = 0; x < dib_header.bitmap_width_; ++x) {
                    in.read(reinterpret_cast<char *>(&pixel), sizeof(Pixel));
                    if (bottom_up_orientation) {
                        image.SetPixel(x, y, pixel);
                    } else {
                        image.SetPixel(x, dib_header.bitmap_height_ - y - 1, pixel);
                    }
                }
                in.ignore(padding_amount);
            }
            return image;
        } catch (const std::ios::failure &e) {
            throw std::ios::failure("Invalid BMP file");
        }
    } else {
        throw InputFileOpenFailedException(path);
    }
}

void BMP::FullExport(const char *path, const Image &image) {
    std::ofstream of(path, std::ios::binary);
    BMP::FileHeader file_header;
    BMP::DIBHeader dib_header;
    int32_t padding_amount = image.GetWidth() % 4;
    file_header.file_size_ = sizeof(BMP::FileHeader) + sizeof(BMP::DIBHeader) +
                             image.GetHeight() * (3 * image.GetWidth() + padding_amount);
    dib_header.bitmap_height_ = image.GetHeight();
    dib_header.bitmap_width_ = image.GetWidth();

    if (of) {
        of.write(reinterpret_cast<const char *>(&file_header), sizeof(BMP::FileHeader));
        of.write(reinterpret_cast<const char *>(&dib_header), sizeof(BMP::DIBHeader));
        Pixel pixel;
        for (int32_t y = 0; y < dib_header.bitmap_height_; ++y) {
            for (int32_t x = 0; x < dib_header.bitmap_width_; ++x) {
                pixel = image.GetPixel(x, y);
                of.write(reinterpret_cast<const char *>(&pixel), sizeof(Pixel));
            }
            of.write("\0\0\0\0", padding_amount);
        }
        of.close();
    } else {
        throw OutputFileOpenFailedException(path);
    }
}
