#pragma once

#include "Filter.h"

class GrayScale : public Filter {
public:
    Image Apply(const Image &image) const override;
};
