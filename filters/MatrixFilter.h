#pragma once

#include "Filter.h"

class MatrixFilter : public Filter {
public:
    MatrixFilter(const std::vector<std::vector<double>> &mask);

    Image Apply(const Image &image) const override;

private:
    std::vector<std::vector<double>> mask_;
    const int32_t width_;
    const int32_t height_;
};
