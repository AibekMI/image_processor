#include "Parser.h"

static const std::string DESCRIPTION = "USAGE\n"
                                       "{program name} {input file path} {output file path} [-{filter name 1} [filter parameter 1] [filter parameter 2] ...] [-{filter name 2} [filter parameter 1] [filter parameter 2] ...] ...\n"
                                       "\n"
                                       "DESCRIPTION\n"
                                       "use -crop width height for Crop\n"
                                       "use -gs for GrayScale\n"
                                       "use -neg for Negative \n"
                                       "use -sharp for Sharpening\n"
                                       "use -edge threshold for Edge Detection\n"
                                       "use -blur sigma for Gaussian Blur\n"
                                       "use -cryst for Crystallization";

Parser::Parser(int argc, const char *argv[]) : argc_(argc), argv_(argv) {
}

void ParseCmdLine(int argc, const char *argv[]) {
    if (argc == 1) {
        std::cout << DESCRIPTION << std::endl;
    } else if (argc < 3) {
        throw NotEnoughArgumentsException(argc);
    } else {
        Parser parser(argc, argv);
        auto filters = parser.Parse();
        auto in = argv[1];
        auto of = argv[2];

        Image image = BMP::FullImport(in);

        for (size_t i = 0; i < filters.size(); ++i) {
            image = filters[i]->Apply(image);
        }

        BMP::FullExport(of, image);
    }
}

std::vector<std::unique_ptr<Filter>> Parser::Parse() {
    std::vector<std::unique_ptr<Filter>> result;

    while (pos_ < argc_) {
        Consume();
        result.push_back(std::move(filter_));
    }

    return result;
}

void Parser::Consume() {
    std::string filter_name(argv_[pos_]);
    auto it = commands_.find(filter_name);
    if (it != commands_.end()) {
        it->second();
    } else {
        throw InvalidFilterNameException(filter_name);
    }
}

void Parser::ParseCrop() {
    if (pos_ + 2 >= argc_) {
        throw MissingFilterParametersException("crop");
    } else {
        try {
            int32_t width = std::stol(argv_[pos_ + 1]);
            int32_t height = std::stol(argv_[pos_ + 2]);
            filter_ = std::make_unique<Crop>(width, height);
        } catch (const std::invalid_argument &e) {
            throw std::invalid_argument(
                    "Parameters should be integers, got " + std::string(argv_[pos_ + 1]) + " and " +
                    std::string(argv_[pos_ + 2]));
        }
        pos_ += 3;
    }
}

void Parser::ParseGrayScale() {
    filter_ = std::make_unique<GrayScale>();
    ++pos_;
}

void Parser::ParseNegative() {
    filter_ = std::make_unique<Negative>();
    ++pos_;
}

void Parser::ParseSharpening() {
    filter_ = std::make_unique<Sharpening>();
    ++pos_;
}

void Parser::ParseEdgeDetection() {
    if (pos_ + 1 >= argc_) {
        throw MissingFilterParametersException("edge detection");
    } else {
        try {
            double threshold = std::stod(argv_[pos_ + 1]);
            filter_ = std::make_unique<EdgeDetection>(threshold);
        } catch (const std::invalid_argument &e) {
            throw std::invalid_argument("Parameter should be numeric, got " + std::string(argv_[pos_ + 1]));
        }
        pos_ += 2;
    }
}

void Parser::ParseGaussianBlur() {
    if (pos_ + 1 >= argc_) {
        throw MissingFilterParametersException("gaussian blur");
    } else {
        try {
            double sigma = std::stod(argv_[pos_ + 1]);
            filter_ = std::make_unique<GaussianBlur>(sigma);
        } catch (const std::invalid_argument &e) {
            throw std::invalid_argument("Parameter should be numeric, got " + std::string(argv_[pos_ + 1]));
        }
        pos_ += 2;
    }
}

void Parser::ParseCrystallize() {
    filter_ = std::make_unique<Crystallize>();
    ++pos_;
}
