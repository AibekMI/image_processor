#pragma once

#include "Filter.h"

class Crop : public Filter {
public:
    Crop(int32_t crop_width, int32_t crop_height);

    Image Apply(const Image &image) const override;

private:
    int32_t crop_width_;
    int32_t crop_height_;
};
