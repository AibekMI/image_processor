#pragma once

#include "BMP.h"
#include "Image.h"
#include "filters/Crop.h"
#include "filters/GrayScale.h"
#include "filters/Negative.h"
#include "filters/Sharpening.h"
#include "filters/EdgeDetection.h"
#include "filters/GaussianBlur.h"
#include "filters/Crystallize.h"
#include "exceptions/parser_exceptions.h"

#include <string>
#include <unordered_map>
#include <functional>
#include <iostream>
#include <stdexcept>
#include <memory>
#include <vector>

using Command = std::function<void()>;

void ParseCmdLine(int argc, const char *argv[]);

class Parser {
public:
    Parser(int argc, const char *argv[]);

    std::vector<std::unique_ptr<Filter>> Parse();

private:
    void Consume();

    void ParseCrop();

    void ParseGrayScale();

    void ParseNegative();

    void ParseSharpening();

    void ParseEdgeDetection();

    void ParseGaussianBlur();

    void ParseCrystallize();

    int pos_ = 3;
    int argc_;
    const char **argv_;
    std::unique_ptr<Filter> filter_;
    const std::unordered_map<std::string, Command> commands_ = {{"-crop",  [&]() { ParseCrop(); }},
                                                                {"-neg",   [&]() { ParseNegative(); }},
                                                                {"-gs",    [&]() { ParseGrayScale(); }},
                                                                {"-sharp", [&]() { ParseSharpening(); }},
                                                                {"-edge",  [&]() { ParseEdgeDetection(); }},
                                                                {"-blur",  [&]() { ParseGaussianBlur(); }},
                                                                {"-cryst", [&]() { ParseCrystallize(); }}
    };
};
