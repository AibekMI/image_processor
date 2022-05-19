#include "GaussianBlur.h"
#include <cmath>
#include <algorithm>
#include <numbers>

GaussianBlur::GaussianBlur(double sigma) : sigma_(sigma) {}

Image GaussianBlur::Apply(const Image &image) const {
    int32_t radius = std::ceil(3 * sigma_);
    const double twofold_variance = 2 * sigma_ * sigma_;

    double coefficients[2 * radius + 1];
    for (int32_t p = 0; p <= 2 * radius; ++p) {
        coefficients[p] = std::exp(-(p - radius) * (p - radius) / twofold_variance);
    }

    std::vector<std::vector<ComputationPixel>> blur_horizontal(image.GetWidth(),
                                                               std::vector<ComputationPixel>(image.GetHeight()));
    for (int32_t i = 0; i < image.GetWidth(); ++i) {
        for (int32_t j = 0; j < image.GetHeight(); ++j) {
            for (int32_t y = j - radius; y <= j + radius; ++y) {
                blur_horizontal[i][j] += image.GetPixel(i, y) * coefficients[y - j + radius];
            }
        }
    }

    std::vector<std::vector<ComputationPixel>> blur_total(image.GetWidth(),
                                                          std::vector<ComputationPixel>(image.GetHeight()));
    for (int32_t i = 0; i < image.GetWidth(); ++i) {
        for (int32_t j = 0; j < image.GetHeight(); ++j) {
            for (int32_t x = i - radius; x <= i + radius; ++x) {
                int32_t valid_x = std::min(image.GetWidth() - 1, std::max(0, x));
                blur_total[i][j] += blur_horizontal[valid_x][j] * coefficients[x - i + radius];
            }
        }
    }

    for (int32_t i = 0; i < image.GetWidth(); ++i) {
        for (int32_t j = 0; j < image.GetHeight(); ++j) {
            blur_total[i][j] *= 1 / (2 * std::numbers::pi_v<double> * sigma_ * sigma_);
        }
    }

    Image output(image.GetWidth(), image.GetHeight());
    for (int32_t i = 0; i < image.GetWidth(); ++i) {
        for (int32_t j = 0; j < image.GetHeight(); ++j) {
            output.SetPixel(i, j, blur_total[i][j]);
        }
    }

    return output;
}
