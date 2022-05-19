#pragma once

#include "Pixel.h"
#include <vector>


class Image {
public:
    Image();

    Image(int32_t width, int32_t height);

    Image(const std::vector<std::vector<Pixel>> &pixels);

    void SetPixel(int32_t x, int32_t y, const Pixel &pixel);

    Pixel GetPixel(int32_t x, int32_t y) const;

    int32_t GetWidth() const;

    int32_t GetHeight() const;

    bool operator==(const Image &other) const = default;

private:
    int32_t width_;
    int32_t height_;
    std::vector<std::vector<Pixel>> pixels_;
};
