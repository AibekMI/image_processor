#include "Crop.h"
#include <algorithm>

Crop::Crop(int32_t crop_width, int32_t crop_height) : crop_width_(crop_width), crop_height_(crop_height) {}

Image Crop::Apply(const Image &image) const {
    int32_t output_width = std::min(image.GetWidth(), crop_width_);
    int32_t output_height = std::min(image.GetHeight(), crop_height_);
    Image output(output_width, output_height);

    for (int32_t x = 0; x < output_width; ++x) {
        for (int32_t y = 0; y < output_height; ++y) {
            output.SetPixel(x, y, image.GetPixel(x, y + image.GetHeight() - output_height));
        }
    }

    return output;
}
