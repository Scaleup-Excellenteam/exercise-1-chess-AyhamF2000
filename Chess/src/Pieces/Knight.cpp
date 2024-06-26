#include "Pieces/Knight.h"

// Knight moves in an L-shape
bool Knight::isMoveLegal(int currentRow, int currentColumn, int goalRow, int goalColumn, const Board& board) const {
    int rowDiff = abs(goalRow - currentRow);
    int colDiff = abs(goalColumn - currentColumn);

    return (rowDiff == 2 && colDiff == 1) || (rowDiff == 1 && colDiff == 2);  
}