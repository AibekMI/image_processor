#pragma once

#include <cstdint>

struct Pixel;

struct ComputationPixel {
public:
    operator Pixel() const;

    ComputationPixel &operator+=(const ComputationPixel &other);

    ComputationPixel &operator*=(const double &coefficient);

    ComputationPixel operator*(const double &coefficient) const;

    double red = 0;
    double green = 0;
    double blue = 0;
};

#pragma pack(push, 1)

struct Pixel {
public:
    ComputationPixel operator*(const double &coefficient) const;

    bool operator==(const Pixel &other) const;

    uint8_t blue = 0;
    uint8_t green = 0;
    uint8_t red = 0;
};

#pragma pack(pop)
