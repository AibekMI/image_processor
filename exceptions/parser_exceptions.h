#pragma once

#include <exception>
#include <string>

class NotEnoughArgumentsException : public std::exception {
public:
    NotEnoughArgumentsException(int argc);

    const char *what() const noexcept override {
        return message_.c_str();
    }

private:
    std::string message_;
};

class InvalidFilterNameException : public std::exception {
public:
    InvalidFilterNameException(std::string filter_name);

    const char *what() const noexcept override {
        return message_.c_str();
    }

private:
    std::string message_;
};

class MissingFilterParametersException : public std::exception {
public:
    MissingFilterParametersException(std::string filter_name);

    const char *what() const noexcept override {
        return message_.c_str();
    }

private:
    std::string message_;
};
