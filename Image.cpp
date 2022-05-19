#include "Image.h"
#include <algorithm>

Image::Image(int32_t width, int32_t height) : width_(width), height_(height),
                                              pixels_(width, std::vector<Pixel>(height)) {}

Image::Image() : Image(0, 0) {}

Image::Image(const std::vector<std::vector<Pixel>> &pixels) : width_(pixels.size()), height_(pixels[0].size()),
                                                              pixels_(pixels) {}

int32_t Image::GetHeight() const {
    return height_;
}

int32_t Image::GetWidth() const {
    return width_;
}

Pixel Image::GetPixel(int32_t x, int32_t y) const {
    return pixels_[std::min(width_ - 1, std::max(0, x))][std::min(height_ - 1, std::max(0, y))];
}

void Image::SetPixel(int32_t x, int32_t y, const Pixel &pixel) {
    pixels_[x][y] = pixel;
}
