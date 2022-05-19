#include "Crystallize.h"
#include <random>
#include <numeric>
#include <cmath>

static double Distance(int32_t x1, int32_t y1, int32_t x2, int32_t y2) {
    return std::sqrt((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2));
}

Image Crystallize::Apply(const Image &image) const {
    if (image.GetHeight() * image.GetHeight() <= CRYSTAL_NUMBER) {
        return image;
    }
    std::random_device rd;
    std::mt19937 g(rd());
    std::vector<int32_t> surface(image.GetWidth() * image.GetHeight());
    std::iota(surface.begin(), surface.end(), 0);
    std::shuffle(surface.begin(), surface.end(), g);

    std::vector<std::pair<int32_t, int32_t>> points;
    for (int32_t i = 0; i < CRYSTAL_NUMBER; ++i) {
        points.emplace_back(surface[i] / image.GetHeight(), surface[i] % image.GetHeight());
    }

    Image output(image.GetWidth(), image.GetHeight());
    for (int32_t y = 0; y < image.GetHeight(); ++y) {
        for (int32_t x = 0; x < image.GetWidth(); ++x) {
            int32_t nearest = 0;
            for (int32_t i = 0; i < CRYSTAL_NUMBER; ++i) {
                if (Distance(x, y, points[nearest].first, points[nearest].second) >
                    Distance(x, y, points[i].first, points[i].second)) {
                    nearest = i;
                }
            }
            output.SetPixel(x, y, image.GetPixel(points[nearest].first, points[nearest].second));
        }
    }

    return output;
}
