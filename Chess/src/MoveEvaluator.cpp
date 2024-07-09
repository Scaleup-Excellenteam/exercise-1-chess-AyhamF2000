#include "MoveEvaluator.h"
#include <iostream>
#include <climits>

MoveEvaluator::MoveEvaluator(Board& board, char playerColor)
    : board(board), playerColor(playerColor), moveQueue(5) {
    initializePieceValues();
}

void MoveEvaluator::initializePieceValues() {
    pieceValues['P'] = 1;    // Pawn
    pieceValues['N'] = 3;    // Knight
    pieceValues['B'] = 3;    // Bishop
    pieceValues['R'] = 5;    // Rook
    pieceValues['Q'] = 9;    // Queen
    pieceValues['K'] = 1000; // King
}

void MoveEvaluator::evaluateMoves(int depth) {
    for (int row = 0; row < BOARD_SIZE; ++row) {
        for (int col = 0; col < BOARD_SIZE; ++col) {
            std::shared_ptr<Piece> piece = board.getPiece(row, col);
            if (piece && piece->getColor() == playerColor) {
                for (int toRow = 0; toRow < BOARD_SIZE; ++toRow) {
                    for (int toCol = 0; toCol < BOARD_SIZE; ++toCol) {
                        if (piece->isMoveLegal(row, col, toRow, toCol, board)) {
                            int moveScore = evaluateMove(row, col, toRow, toCol, depth);
                            moveQueue.push(Move(row, col, toRow, toCol, moveScore));
                        }
                    }
                }
            }
        }
    }
}

std::vector<Move> MoveEvaluator::getBestMoves() const {
    std::vector<Move> bestMoves;
    PriorityQueue<Move, MyComparator> tempQueue = moveQueue; // Create a copy of the queue
    while (!tempQueue.isEmpty()) {
        bestMoves.push_back(tempQueue.poll());
    }
    return bestMoves;
}

int MoveEvaluator::evaluateMove(int currentRow, int currentColumn, int goalRow, int goalColumn, int depth) {
    std::shared_ptr<Piece> piece = board.getPiece(currentRow, currentColumn);
    std::shared_ptr<Piece> targetPiece = board.getPiece(goalRow, goalColumn);

    int score = 0;

    // Add value for capturing a piece
    if (targetPiece) {
        score += pieceValues[targetPiece->getName()];
    }

    // Control of the center
    if ((goalRow >= 2 && goalRow <= 5) && (goalColumn >= 2 && goalColumn <= 5)) {
        score += 3;
    }

    // Simulate the move
    std::shared_ptr<Piece> temp = board.getPiece(goalRow, goalColumn);
    board.setPiece(goalRow, goalColumn, board.getPiece(currentRow, currentColumn));
    board.setPiece(currentRow, currentColumn, nullptr);

    // Check if the move puts the piece in danger
    score += evaluateThreats(currentRow, currentColumn, goalRow, goalColumn, piece);

    // Evaluate board control
    score += evaluateBoardControl();

    // Evaluate opponent's response if depth > 0
    if (depth > 0) {
        int bestOpponentScore = INT_MIN;
        for (int row = 0; row < BOARD_SIZE; ++row) {
            for (int col = 0; col < BOARD_SIZE; ++col) {
                std::shared_ptr<Piece> opponentPiece = board.getPiece(row, col);
                if (opponentPiece && opponentPiece->getColor() != playerColor) {
                    for (int toRow = 0; toRow < BOARD_SIZE; ++toRow) {
                        for (int toCol = 0; toCol < BOARD_SIZE; ++toCol) {
                            if (opponentPiece->isMoveLegal(row, col, toRow, toCol, board)) {
                                int opponentScore = evaluateMove(row, col, toRow, toCol, depth - 1);
                                if (opponentScore > bestOpponentScore) {
                                    bestOpponentScore = opponentScore;
                                }
                            }
                        }
                    }
                }
            }
        }
        score -= bestOpponentScore;
    }

    // Handle pawn promotion
    handlePawnPromotion(goalRow, piece);

    // Undo the move
    board.setPiece(currentRow, currentColumn, board.getPiece(goalRow, goalColumn));
    board.setPiece(goalRow, goalColumn, temp);

    //std::cout << currentRow << currentColumn << '-' << goalRow << goalColumn << '-' << score << std::endl;

    return score;
}

int MoveEvaluator::evaluateThreats(int currentRow, int currentColumn, int goalRow, int goalColumn, const std::shared_ptr<Piece>& piece) {
    int score = 0;
    for (int row = 0; row < BOARD_SIZE; ++row) {
        for (int col = 0; col < BOARD_SIZE; ++col) {
            std::shared_ptr<Piece> opponentPiece = board.getPiece(row, col);
            if (opponentPiece && opponentPiece->getColor() != playerColor) {
                if (opponentPiece->isMoveLegal(row, col, goalRow, goalColumn, board)) {
                    if (pieceValues[opponentPiece->getName()] < pieceValues[piece->getName()]) {
                        score -= pieceValues[piece->getName()]; // In danger by a weaker piece
                    }
                }
                if (opponentPiece->isMoveLegal(row, col, currentRow, currentColumn, board)) {
                    if (pieceValues[opponentPiece->getName()] > pieceValues[piece->getName()]) {
                        score += pieceValues[opponentPiece->getName()]; // Threatening a stronger piece
                    }
                }
            }
        }
    }
    return score;
}

int MoveEvaluator::evaluateBoardControl() const {
    int controlScore = 0;
    int playerCoverage = 0;
    int opponentCoverage = 0;

    for (int row = 0; row < BOARD_SIZE; ++row) {
        for (int col = 0; col < BOARD_SIZE; ++col) {
            std::shared_ptr<Piece> piece = board.getPiece(row, col);
            if (piece) {
                for (int toRow = 0; toRow < BOARD_SIZE; ++toRow) {
                    for (int toCol = 0; toCol < BOARD_SIZE; ++toCol) {
                        if (piece->isMoveLegal(row, col, toRow, toCol, board)) {
                            if (piece->getColor() == playerColor) {
                                playerCoverage++;
                            }
                            else {
                                opponentCoverage++;
                            }
                        }
                    }
                }
            }
        }
    }

    controlScore = playerCoverage - opponentCoverage;
    return controlScore;
}

void MoveEvaluator::handlePawnPromotion(int goalRow, std::shared_ptr<Piece>& piece) {
    if (piece->getName() == 'P' && (goalRow == 0 || goalRow == 7)) {
        char choice;
        std::cout << "Promote pawn to (Q/R/B/N): ";
        std::cin >> choice;
        switch (choice) {
        case 'Q':
            piece->setName('Q');
            break;
        case 'R':
            piece->setName('R');
            break;
        case 'B':
            piece->setName('B');
            break;
        case 'N':
            piece->setName('N');
            break;
        default:
            throw std::invalid_argument("Invalid promotion choice");
        }
    }
}

std::ostream& operator<<(std::ostream& os, const std::vector<Move>& moves) {
    for (const auto& move : moves) {
        os << move << "\n";
    }
    return os;
}
