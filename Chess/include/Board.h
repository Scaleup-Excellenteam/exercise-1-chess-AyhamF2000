#pragma once
#include <vector>
#include <memory>
#include "Piece.h"  // Adjust the path if necessary.
#include <string>

class Board {
public:
   

    Board();
    Board(const std::string& );
    int checkMove(const int currentRow, const int currentColumn, const int goalRow, const int goalColumn, const char playerColor);
    void setupBoard();
    void setupBoard(const std::string&);
    std::shared_ptr<Piece> getPiece(int row, int column) const;
private:
    std::vector<std::vector<std::shared_ptr<Piece>>> board;
    std::shared_ptr<Piece> createPiece(const char type, const char color);
    std::shared_ptr<Piece>& getTheKingByColor(const char color);
    std::pair<int, int> getKingPositionByColor(const char color);
    bool isKingInCheck(const char color);
    bool canEscapeCheck(const char color);
    bool checkForCastling(int currentRow, int currentColumn, int goalRow, int goalColumn, const char playerColor);

   

};
