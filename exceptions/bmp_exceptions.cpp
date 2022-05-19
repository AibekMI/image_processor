#include "bmp_exceptions.h"

InputFileOpenFailedException::InputFileOpenFailedException(std::string path) : message_(
        std::string("Cannot open the input file: ") + path) {}

OutputFileOpenFailedException::OutputFileOpenFailedException(std::string path) : message_(
        std::string("Cannot open the output file: ") + path) {}
