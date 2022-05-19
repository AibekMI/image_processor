#include "Pixel.h"
#include <math.h>
#include <algorithm>

ComputationPixel::operator Pixel() const {
    Pixel output;
    output.red = round(std::min(255.0, std::max(0.0, red)));
    output.green = round(std::min(255.0, std::max(0.0, green)));
    output.blue = round(std::min(255.0, std::max(0.0, blue)));
    return output;
}

ComputationPixel &ComputationPixel::operator+=(const ComputationPixel &other) {
    red += other.red;
    green += other.green;
    blue += other.blue;
    return *this;
}

ComputationPixel &ComputationPixel::operator*=(const double &coefficient) {
    red *= coefficient;
    green *= coefficient;
    blue *= coefficient;
    return *this;
}

ComputationPixel ComputationPixel::operator*(const double &coefficient) const {
    ComputationPixel output(*this);
    output *= coefficient;
    return output;
}

ComputationPixel Pixel::operator*(const double &coefficient) const {
    ComputationPixel output;
    output.red = coefficient * red;
    output.green = coefficient * green;
    output.blue = coefficient * blue;
    return output;
}

bool Pixel::operator==(const Pixel &other) const {
    return (red == other.red && green == other.green && blue == other.blue);
}
