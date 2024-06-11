#pragma once
#include <vector>
#include <memory>
#include "Piece.h"  // Adjust the path if necessary.

class Board {
public:
    std::vector<std::vector<std::shared_ptr<Piece>>> board;

    Board();
    int checkMove(int currentRow, int currentColumn, int goalRow, int goalColumn, char playerColor);
    void setupBoard();
    std::shared_ptr<Piece> getPiece(int row, int column) const;


private:
    std::shared_ptr<Piece> createPiece(char type, char color);
    std::shared_ptr<Piece>& getTheKingByColor(char color);
    std::pair<int, int> getKingPositionByColor(char color);
    bool isKingInCheck(char color);
    bool canEscapeCheck(char color);
   

};
