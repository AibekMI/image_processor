#include <catch.hpp>
#include "../Pixel.h"
#include "../Image.h"
#include "../filters/Negative.h"
#include "../filters/Sharpening.h"
#include "../filters/GrayScale.h"
#include "../filters/Crop.h"
#include "../filters/EdgeDetection.h"
#include "../filters/Crystallize.h"
#include "../BMP.h"
#include "../Parser.h"

static const Pixel BLACK = {0, 0, 0};
static const Pixel WHITE = {255, 255, 255};
static const Pixel RED = {0, 0, 255};
static const Pixel LIME = {0, 255, 0};
static const Pixel BLUE = {255, 0, 0};
static const Pixel YELLOW = {0, 255, 255};
static const Pixel AQUA = {255, 255, 0};
static const Pixel MAGENTA = {255, 0, 255};
static const Pixel PURE_BLUE = {255, 90, 0};
static const Pixel ORANGE = {0, 165, 255};
static const Pixel AMETHYST = {204, 102, 153};
static const Pixel CERISE = {99, 49, 222};
static const Pixel EMERALD = {120, 200, 80};
static const Pixel OLIVE = {0, 128, 128};
static const Pixel WINE = {55, 47, 114};
static const Pixel DARK_RED = {0, 0, 140};
static const Pixel CHROME_YELLOW = {0, 167, 255};


TEST_CASE("CROP") {
    Image image({{CERISE,  LIME,     OLIVE},
                 {WINE,    DARK_RED, CHROME_YELLOW},
                 {BLACK,   WHITE,    RED},
                 {EMERALD, BLUE,     YELLOW}});
    Image cropped_image({{LIME,     OLIVE},
                         {DARK_RED, CHROME_YELLOW},
                         {WHITE,    RED}});
    REQUIRE(Crop(3, 2).Apply(image) == cropped_image);
}

TEST_CASE("GRAYSCALE") {
    Image image({{DARK_RED, CHROME_YELLOW, OLIVE},
                 {MAGENTA,  EMERALD,       PURE_BLUE},
                 {AQUA,     AMETHYST,      WINE}});
    Image grayscale_image({{{42,  42,  42},  {174, 174, 174}, {113, 113, 113}},
                           {{105, 105, 105}, {155, 155, 155}, {82,  82,  82}},
                           {{179, 179, 179}, {129, 129, 129}, {68,  68,  68}}});
    REQUIRE(GrayScale().Apply(image) == grayscale_image);
}

TEST_CASE("NEGATIVE") {
    Image image({{RED,   LIME,  BLUE},
                 {BLACK, WHITE, PURE_BLUE}});
    Image negative_image({{AQUA,  MAGENTA, YELLOW},
                          {WHITE, BLACK,   ORANGE}});
    REQUIRE(Negative().Apply(image) == negative_image);
}

TEST_CASE("SHARPENING") {
    Image image({{AMETHYST, PURE_BLUE, WHITE},
                 {OLIVE,    WINE,      CERISE},
                 {ORANGE,   EMERALD,   AQUA}});
    Image sharpened_image({{{255, 88,  255}, BLUE,          WHITE},
                           {{0,   198, 0},   DARK_RED,      RED},
                           {CHROME_YELLOW,   {170, 255, 0}, AQUA}});
    REQUIRE(Sharpening().Apply(image) == sharpened_image);
}

TEST_CASE("EDGE_DETECTION") {
    Image image({{CHROME_YELLOW, CHROME_YELLOW, AQUA},
                 {PURE_BLUE,     CHROME_YELLOW, CHROME_YELLOW},
                 {EMERALD,       AMETHYST,      CHROME_YELLOW}});
    Image edged_image({{WHITE, BLACK, BLACK},
                       {BLACK, WHITE, BLACK},
                       {WHITE, BLACK, BLACK}});
    REQUIRE(EdgeDetection(0.2).Apply(image) == edged_image);
}

TEST_CASE("CRYSTALLIZE") {
    Image image({{BLACK,    OLIVE,   AQUA,    YELLOW},
                 {WINE,     WHITE,   MAGENTA, CERISE},
                 {DARK_RED, EMERALD, LIME,    PURE_BLUE},
                 {AMETHYST, WHITE,   BLUE,    RED}});
    REQUIRE(Crystallize().Apply(image) == image); // not enough size to be crystallized;
}

TEST_CASE("BMP") {
    const char *invalid_path = "./example.jpeg";
    REQUIRE_THROWS(BMP::FullImport(invalid_path));

    const char *example_path = "../examples/example.bmp";
    REQUIRE_NOTHROW(BMP::FullImport(example_path));

    const char *output_path = "../examples/output.bmp";
    Image example_image = BMP::FullImport(example_path);
    REQUIRE_NOTHROW(BMP::FullExport(output_path, example_image));
}

TEST_CASE("Parser: Main Functionality") {
    const char *deficient_argv[] = {"./image_processor", "../examples/example.bmp"};
    REQUIRE_THROWS_AS(ParseCmdLine(2, deficient_argv), NotEnoughArgumentsException);

    const char *no_filter_argv[] = {"./image_processor", "../examples/example.bmp", "../examples/output.bmp"};
    REQUIRE(Parser(3, no_filter_argv).Parse().empty());
    REQUIRE_NOTHROW(ParseCmdLine(3, no_filter_argv));

    const char *valid_argv[] = {"./image_processor", "../examples/example.bmp", "../examples/output.bmp", "-edge",
                                "0.58", "-gs"};
    REQUIRE_NOTHROW(ParseCmdLine(5, valid_argv));

    const char *invalid_argv[] = {"./image_processor", "../examples/example.bmp", "../examples/output.bmp", "-monk",
                                  "0.58",
                                  "-gs"};
    REQUIRE_THROWS_AS(ParseCmdLine(5, invalid_argv), InvalidFilterNameException);
}

TEST_CASE("Parser: Deficient Argument Vector") {
    const char *deficient_crop_filter_argv[] = {"./image_processor", "../examples/example.bmp",
                                                "../examples/output.bmp", "-crop",
                                                "1000"};
    REQUIRE_THROWS_AS(ParseCmdLine(5, deficient_crop_filter_argv), MissingFilterParametersException);
    REQUIRE_THROWS_WITH(ParseCmdLine(5, deficient_crop_filter_argv), Catch::Contains("crop"));

    const char *deficient_edge_argv[] = {"./image_processor", "../examples/example.bmp", "../examples/output.bmp",
                                         "-edge"};
    REQUIRE_THROWS_AS(ParseCmdLine(4, deficient_edge_argv), MissingFilterParametersException);
    REQUIRE_THROWS_WITH(ParseCmdLine(4, deficient_edge_argv), Catch::Contains("edge detection"));

    const char *deficient_blur_argv[] = {"./image_processor", "../examples/example.bmp", "../examples/output.bmp",
                                         "-blur"};
    REQUIRE_THROWS_AS(ParseCmdLine(4, deficient_blur_argv), MissingFilterParametersException);
    REQUIRE_THROWS_WITH(ParseCmdLine(4, deficient_blur_argv), Catch::Contains("gaussian blur"));
}

TEST_CASE("Parser: Invalid Parameters Handling") {
    const char *invalid_crop_argv[] = {"./image_processor", "../examples/example.bmp", "../examples/output.bmp",
                                       "-crop", "1000",
                                       "thousand"};
    REQUIRE_THROWS_AS(ParseCmdLine(6, invalid_crop_argv), std::invalid_argument);
    REQUIRE_THROWS_WITH(ParseCmdLine(6, invalid_crop_argv), Catch::Contains("should be integers"));

    const char *invalid_blur_argv[] = {"./image_processor", "../examples/example.bmp", "../examples/output.bmp",
                                       "-blur", "ten"};
    REQUIRE_THROWS_AS(ParseCmdLine(5, invalid_blur_argv), std::invalid_argument);
    REQUIRE_THROWS_WITH(ParseCmdLine(5, invalid_blur_argv), Catch::Contains("should be numeric"));

    const char *invalid_edge_argv[] = {"./image_processor", "../examples/example.bmp", "../examples/output.bmp",
                                       "-edge",
                                       "small_number"};
    REQUIRE_THROWS_AS(ParseCmdLine(5, invalid_edge_argv), std::invalid_argument);
    REQUIRE_THROWS_WITH(ParseCmdLine(5, invalid_edge_argv), Catch::Contains("should be numeric"));
}
