#pragma once
#include "Piece.h"
#include "Board.h"

class Rook : public Piece {
public:
    Rook(char color, char name) : Piece(color, name) {}
    virtual bool isMoveLegal(int currentRow, int currentColumn, int goalRow, int goalColumn, const Board& board) const override;
};
