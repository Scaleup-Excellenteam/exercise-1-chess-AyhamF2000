#pragma once
#include "Piece.h"
#include "Board.h"

class King : public Piece {
public:
    King(const char color, const char name) : Piece(color, name) {}
    virtual bool isMoveLegal(int currentRow, int currentColumn, int goalRow, int goalColumn, const Board& board) const override;
};
