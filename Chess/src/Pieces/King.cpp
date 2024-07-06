#include "Pieces/King.h"

// King moves one square in any direction
bool King::isMoveLegal(int currentRow, int currentColumn, int goalRow, int goalColumn, const Board& board) const {
    int rowDiff = abs(goalRow - currentRow);
    int colDiff = abs(goalColumn - currentColumn);

    if (this->FirstMove == true && rowDiff <= 1 && colDiff <= 1)
        this->FirstMove = false;

    return (rowDiff <= 1 && colDiff <= 1);  
}