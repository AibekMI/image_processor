#include "EdgeDetection.h"

EdgeDetection::EdgeDetection(double threshold) : threshold_(threshold) {}

Image EdgeDetection::Apply(const Image &image) const {
    static const GrayScale GRAYSCALE = GrayScale();
    static const MatrixFilter EDGING_CONVOLUTION = MatrixFilter({{0,  -1, 0},
                                                                 {-1, 4,  -1},
                                                                 {0,  -1, 0}});
    static const Pixel BLACK = {0, 0, 0};
    static const Pixel WHITE = {255, 255, 255};

    Image output = GRAYSCALE.Apply(image);
    output = EDGING_CONVOLUTION.Apply(output);

    for (int32_t y = 0; y < output.GetHeight(); ++y) {
        for (int32_t x = 0; x < output.GetWidth(); ++x) {
            output.SetPixel(x, y, (output.GetPixel(x, y).red > 255 * threshold_) ? WHITE : BLACK);
        }
    }

    return output;
}
