#pragma once

#include "Filter.h"

class GaussianBlur : public Filter {
public:
    GaussianBlur(double sigma);

    Image Apply(const Image &image) const override;

private:
    double sigma_;
};
