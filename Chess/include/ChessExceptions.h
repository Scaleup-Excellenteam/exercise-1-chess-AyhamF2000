// ChessExceptions.h
#pragma once
#include <exception>
#include <string>

class ChessException : public std::exception {
public:
    ChessException(const std::string& message) : msg_(message) {}
    virtual const char* what() const noexcept override {
        return msg_.c_str();
    }
private:
    std::string msg_;
};

class InvalidMoveException : public ChessException {
public:
    InvalidMoveException(const std::string& message) : ChessException(message) {}
};

class CheckmateException : public ChessException {
public:
    CheckmateException(const std::string& message) : ChessException(message) {}
};
