#pragma once

#include "Filter.h"


class Crystallize : public Filter {
public:
    Crystallize() = default;

    Image Apply(const Image &image) const override;

private:
    static const int32_t CRYSTAL_NUMBER = 1000;
};
