#pragma once
class Board;  // Forward declaration to avoid circular dependency

class Piece {
protected:
    const char color;  // 'W' for white, 'B' for black
    const char name; // B K N P Q R

public:
    Piece(char color, char name) : color(color), name(name) {}
    virtual ~Piece() {}

    char getColor() const { return color; }
    char getName() const { return name; }


    virtual bool isMoveLegal(int currentRow, int currentColumn, int goalRow, int goalColumn, const Board& board) const = 0;
};
