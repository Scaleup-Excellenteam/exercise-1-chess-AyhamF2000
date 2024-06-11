#pragma once
#include "Piece.h"
#include "Board.h"

class Bishop : public Piece {
public:
    Bishop(char color, char name) : Piece(color, name) {}
    virtual bool isMoveLegal(int currentRow, int currentColumn, int goalRow, int goalColumn, const Board& board) const override;
};
