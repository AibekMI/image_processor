#include "GrayScale.h"
#include <math.h>

Image GrayScale::Apply(const Image &image) const {
    Image outcome(image.GetWidth(), image.GetHeight());
    for (int32_t y = 0; y < image.GetHeight(); ++y) {
        for (int32_t x = 0; x < image.GetWidth(); ++x) {
            Pixel pixel = image.GetPixel(x, y);
            uint8_t value = round(0.299 * pixel.red + 0.587 * pixel.green + 0.114 * pixel.blue);
            outcome.SetPixel(x, y, {value, value, value});
        }
    }
    return outcome;
}
