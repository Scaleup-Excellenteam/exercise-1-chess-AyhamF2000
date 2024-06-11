#pragma once
#include "Piece.h"
#include "Board.h"

class Knight : public Piece {
public:
    Knight(char color, char name) : Piece(color, name) {}
    virtual bool isMoveLegal(int currentRow, int currentColumn, int goalRow, int goalColumn, const Board& board) const override;
};