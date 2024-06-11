#include "Board.h"
#include "Pieces/Rook.h"
#include "Pieces/Knight.h"
#include "Pieces/Bishop.h"
#include "Pieces/Queen.h"
#include "Pieces/King.h"
#include "Pieces/Pawn.h"
#include <cctype>  
#include <memory>  


/**
 * @brief Constructs the Board and sets up the initial pieces.
 */
Board::Board() : board(8, std::vector<std::shared_ptr<Piece>>(8)) {
    setupBoard();
}


/**
 * @brief Sets up the initial positions of all the pieces on the board.
 */
void Board::setupBoard() {
    // Place Rooks
    board[0][0] = createPiece('R', 'W');
    board[0][7] = createPiece('R', 'W');
    board[7][0] = createPiece('R', 'B');
    board[7][7] = createPiece('R', 'B');
    // Place Knights
    board[0][1] = createPiece('N', 'W');
    board[0][6] = createPiece('N', 'W');
    board[7][1] = createPiece('N', 'B');
    board[7][6] = createPiece('N', 'B');
    // Place Bishops
    board[0][2] = createPiece('B', 'W');
    board[0][5] = createPiece('B', 'W');
    board[7][2] = createPiece('B', 'B');
    board[7][5] = createPiece('B', 'B');
    // Place Queens
    board[0][3] = createPiece('Q', 'W');
    board[7][3] = createPiece('Q', 'B');
    // Place Kings
    board[0][4] = createPiece('K', 'W');
    board[7][4] = createPiece('K', 'B');
    // Place Pawns
    for (int i = 0; i < 8; i++) {
        board[1][i] = createPiece('P', 'W');
        board[6][i] = createPiece('P', 'B');
    }
}


/**
 * @brief Return the piece at the specified position.
 *
 * @param row The row of the position.
 * @param column The column of the position.
 * @return std::shared_ptr<Piece> The piece at the specified position.
 */
std::shared_ptr<Piece> Board::getPiece(int row, int column) const {
    return board[row][column];
}


/**
 * @brief Creates a piece based on its type/name and color.
 *
 * @param type The type/name of the piece ('R', 'N', 'B', 'Q', 'K', 'P').
 * @param color The color of the piece ('W' for white, 'B' for black).
 * @return std::shared_ptr<Piece> The created piece.
 */
std::shared_ptr<Piece> Board::createPiece(char type, char color) {
    switch (std::toupper(type)) {
    case 'R':
        return std::make_shared<Rook>(color, type);
    case 'N':
        return std::make_shared<Knight>(color, type);
    case 'B':
        return std::make_shared<Bishop>(color, type);
    case 'Q':
        return std::make_shared<Queen>(color, type);
    case 'K':
        return std::make_shared<King>(color, type);
    case 'P':
        return std::make_shared<Pawn>(color, type);
    default:
        return nullptr;
    }
}


/**
 * @brief Return the CodeResponse.
 *
 * @param currentRow The starting row of the piece.
 * @param currentColumn The starting column of the piece.
 * @param goalRow The destination row of the piece.
 * @param goalColumn The destination column of the piece.
 * @param playerColor The color of the player making the move.
 * @return int The result code indicating the legality and result of the move.
 */
int Board::checkMove(int currentRow, int currentColumn, int goalRow, int goalColumn, char playerColor) {

    // This statement is handled in the Chess.cpp

    /*if (currentRow < 0 || currentRow >= 8 || currentColumn < 0 || 
        currentColumn >= 8 || goalRow < 0 || goalRow >= 8 || 
        goalColumn < 0 || goalColumn >= 8) {
        
        return 21;
    }*/

    char opponentColor = (playerColor == 'W' ? 'B' : 'W');
    if (!board[currentRow][currentColumn])
        return 11;  // there is no piece at the source

    if (board[currentRow][currentColumn]->getColor() != playerColor)
        return 12;  // the piece in the source is a piece of your opponent

    if (board[goalRow][goalColumn] && board[goalRow][goalColumn]->getColor() == playerColor)
        return 13;  // there is one of your pieces at the destination 

    if (!board[currentRow][currentColumn]->isMoveLegal(currentRow, currentColumn, goalRow, goalColumn, *this))
        return 21;  // illegal movement of that piece

    // Simulate the move
    std::shared_ptr<Piece> temp = board[goalRow][goalColumn];
    board[goalRow][goalColumn] = board[currentRow][currentColumn];
    board[currentRow][currentColumn] = nullptr;

    // Check if the move causes checkmate
    bool causesCheckmate = isKingInCheck(opponentColor) && !canEscapeCheck(opponentColor);

    // Check if the move causes check
    bool causesCheck = isKingInCheck(opponentColor);

    // Undo the move, if the move causes checkmate
    if (causesCheckmate) {
        board[currentRow][currentColumn] = board[goalRow][goalColumn];
        board[goalRow][goalColumn] = temp;
        return 31;  // this movement will cause checkmate
    }

    // ******************  
    // In the future, an if-statement will be added here to check if the king is captured (you did not ask for that) 

    else if (causesCheck)
        return 41;  // the last movement was legal and caused check
    
    else 
        return 42;  // the last movement was legal, next turn
}



/**
 * @brief Retrieves the king of the specified color.
 *
 * @param color The color of the king.
 * @return std::shared_ptr<Piece>& The king piece.
 */
std::shared_ptr<Piece>& Board::getTheKingByColor(char color) {
    for (auto& row : board) {
        for (auto& piece : row) {
            if (piece && piece->getName() == 'K' && piece->getColor() == color) {
                return piece;
            }
        }
    }
    static std::shared_ptr<Piece> nullPiece = nullptr;
    return nullPiece;  // Return a reference to a null shared pointer if the king is not found
}


/**
 * @brief Retrieves the position of the king of the specified color.
 *
 * @param color The color of the king.
 * @return std::pair<int, int> The row and column of the king.
 */
std::pair<int, int> Board::getKingPositionByColor(char color) {
    for (int row = 0; row < board.size(); ++row) {
        for (int col = 0; col < board[row].size(); ++col) {
            if (board[row][col] && board[row][col]->getName() == 'K' && board[row][col]->getColor() == color) {
                return { row, col };
            }
        }
    }
    return { -1, -1 };  // Return an invalid position if the king is not found
}


/**
 * @brief Checks if the king of the specified color is in check.
 *
 * @param color The color of the king.
 * @return bool True if the king is in check, false otherwise.
 */
bool Board::isKingInCheck(char color) {
    std::pair<int, int> kingPosition = getKingPositionByColor(color);
    int kingRow = kingPosition.first;
    int kingColumn = kingPosition.second;

    if (kingRow == -1 || kingColumn == -1)
        return false;  // King not found (shouldn't happen in a valid game)

    for (int row = 0; row < board.size(); ++row) {
        for (int col = 0; col < board[row].size(); ++col) {
            std::shared_ptr<Piece> piece = board[row][col];
            if (piece && piece->getColor() != color) {
                if (piece->isMoveLegal(row, col, kingRow, kingColumn, *this)) {
                    return true;  // King is in check
                }
            }
        }
    }
    return false;
}


/**
 * @brief Checks if the king of the specified color can escape check.
 *
 * @param color The color of the king.
 * @return bool True if the king can escape check, false otherwise.
 */
bool Board::canEscapeCheck(char color) {
    
    for (int currentRow = 0; currentRow < board.size(); ++currentRow) {
        for (int currentColumn = 0; currentColumn < board[currentRow].size(); ++currentColumn) {
            std::shared_ptr<Piece> piece = board[currentRow][currentColumn];

            // Check if the cell contains an opponent's piece
            if (piece && piece->getColor() == color) {

                
                for (int goalRow = 0; goalRow < board.size(); ++goalRow) {
                    for (int goalColumn = 0; goalColumn < board[goalRow].size(); ++goalColumn) {  

                        // Make all the legal moves for the opponent's piece
                        if (piece->isMoveLegal(currentRow, currentColumn, goalRow, goalColumn, *this)) {

                            // Simulate the move
                            std::shared_ptr<Piece> temp = board[goalRow][goalColumn];
                            board[goalRow][goalColumn] = piece;
                            board[currentRow][currentColumn] = nullptr;

                            bool isInCheck = isKingInCheck(color);

                            // Undo the move
                            board[currentRow][currentColumn] = piece;
                            board[goalRow][goalColumn] = temp;

                            if (!isInCheck) {
                                return true;  // Found a legal move to escape check
                            }
                        }
                    }
                }
            }
        }
    }
    return false;
}

