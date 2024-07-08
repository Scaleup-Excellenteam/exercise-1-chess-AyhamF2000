#include "Move.h"

std::ostream& operator<<(std::ostream& os, const Move& move) {
    os << "Move from (" << char(move.fromRow+'a') << ", " << move.fromCol + 1 << ") to ("
        << char(move.toRow+'a') << ", " << move.toCol + 1 << ") with score " << move.score;
    return os;
}
