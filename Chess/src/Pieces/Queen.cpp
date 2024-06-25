#include "Pieces/Queen.h"


// Queen moves any number of squares vertically, horizontally, or diagonally (Rook + Bishop)
bool Queen::isMoveLegal(int currentRow, int currentColumn, int goalRow, int goalColumn, const Board& board) const {
    if (currentRow == goalRow || currentColumn == goalColumn) {
        // Rook movement
        
        return Rook::isMoveLegal(currentRow, currentColumn, goalRow, goalColumn, board);
    }
    else if (abs(goalRow - currentRow) == abs(goalColumn - currentColumn)) {
        // Bishop movement
        return Bishop::isMoveLegal(currentRow, currentColumn, goalRow, goalColumn, board);
    }

    return false;  
}
