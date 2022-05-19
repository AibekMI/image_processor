#include "MatrixFilter.h"

MatrixFilter::MatrixFilter(const std::vector<std::vector<double>> &mask) : mask_(mask), width_(mask.size()),
                                                                           height_(mask[0].size()) {
}

Image MatrixFilter::Apply(const Image &image) const {
    Image output(image.GetWidth(), image.GetHeight());
    for (int32_t y = 0; y < image.GetHeight(); ++y) {
        for (int32_t x = 0; x < image.GetWidth(); ++x) {
            ComputationPixel output_pixel;
            for (int32_t i = 0; i < width_; ++i) {
                for (int32_t j = 0; j < height_; ++j) {
                    output_pixel += image.GetPixel(x + i - (width_ / 2), y + j - (height_ / 2)) * mask_[i][j];
                }
            }
            output.SetPixel(x, y, output_pixel);
        }
    }
    return output;
}
