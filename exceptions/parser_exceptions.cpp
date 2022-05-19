#include "parser_exceptions.h"

NotEnoughArgumentsException::NotEnoughArgumentsException(int argc) : message_(
        "Not enough arguments in command line, got " + std::to_string(argc)) {}

InvalidFilterNameException::InvalidFilterNameException(std::string filter_name) : message_(
        "Invalid filter name, got " + filter_name) {}

MissingFilterParametersException::MissingFilterParametersException(std::string filter_name) : message_(
        "Parameters of " + filter_name + " filter are missing") {}
