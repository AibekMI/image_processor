#include "Negative.h"

Image Negative::Apply(const Image &image) const {
    Image output(image.GetWidth(), image.GetHeight());
    for (int32_t y = 0; y < image.GetHeight(); ++y) {
        for (int32_t x = 0; x < image.GetWidth(); ++x) {
            Pixel current_pixel = image.GetPixel(x, y);
            Pixel output_pixel;
            output_pixel.red = 255 - current_pixel.red;
            output_pixel.green = 255 - current_pixel.green;
            output_pixel.blue = 255 - current_pixel.blue;
            output.SetPixel(x, y, output_pixel);
        }
    }
    return output;
}
