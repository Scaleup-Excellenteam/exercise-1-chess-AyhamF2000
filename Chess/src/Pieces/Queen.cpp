#include "Pieces/Queen.h"
#include "Pieces/Rook.h"
#include "Pieces/Bishop.h"

// Queen moves any number of squares vertically, horizontally, or diagonally (Rook + Bishop)
bool Queen::isMoveLegal(int currentRow, int currentColumn, int goalRow, int goalColumn, const Board& board) const {
    if (currentRow == goalRow || currentColumn == goalColumn) {
        // Rook movement
        Rook rook(color,'R');
        return rook.isMoveLegal(currentRow, currentColumn, goalRow, goalColumn, board);
    }
    else if (abs(goalRow - currentRow) == abs(goalColumn - currentColumn)) {
        // Bishop movement
        Bishop bishop(color,'B');
        return bishop.isMoveLegal(currentRow, currentColumn, goalRow, goalColumn, board);
    }

    return false;  
}
