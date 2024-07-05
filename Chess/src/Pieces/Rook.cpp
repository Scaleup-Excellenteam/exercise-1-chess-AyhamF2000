#include "Pieces/Rook.h"
#include "Board.h"

// Rook moves any number of squares vertically or horizontally
bool Rook::isMoveLegal(int currentRow, int currentColumn, int goalRow, int goalColumn, const Board& board) const {
    if (currentRow != goalRow && currentColumn != goalColumn)
        return false;  // Rooks move in straight lines only

    if (currentRow == goalRow) {
        int step = (goalColumn > currentColumn) ? 1 : -1;
        for (int col = currentColumn + step; col != goalColumn; col += step) {
            if (board.getPiece(currentRow, col))
                return false;  // Path is blocked
        }
    }
    else {
        int step = (goalRow > currentRow) ? 1 : -1;
        for (int row = currentRow + step; row != goalRow; row += step) {
            if (board.getPiece(row, currentColumn))
                return false;  // Path is blocked
        }
    }

    if (this->FirstMove == true)
        this->FirstMove = false;
    return true;
    
}
