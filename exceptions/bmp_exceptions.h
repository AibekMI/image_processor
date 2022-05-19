#pragma once

#include <exception>
#include <string>

class InputFileOpenFailedException : public std::exception {
public:
    InputFileOpenFailedException(std::string path);

    const char *what() const noexcept override {
        return message_.c_str();
    }

private:
    std::string message_;
};

class OutputFileOpenFailedException : public std::exception {
public:
    OutputFileOpenFailedException(std::string path);

    const char *what() const noexcept override {
        return message_.c_str();
    }

private:
    const std::string message_;
};
