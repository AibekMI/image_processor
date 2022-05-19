#pragma once

#include "GrayScale.h"
#include "MatrixFilter.h"

class EdgeDetection : public Filter {
public:
    EdgeDetection(double threshold);

    Image Apply(const Image &image) const override;

private:
    double threshold_;
};
