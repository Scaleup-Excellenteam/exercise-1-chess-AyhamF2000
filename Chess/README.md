# Chess Move Evaluator

## Overview
This project implements a chess move evaluator using a depth-based evaluation algorithm.
The evaluator analyzes possible moves and scores them based on the likelihood of achieving 
a favorable outcome, such as capturing pieces or avoiding checkmate.

## Algorithm Explanation
The move evaluator uses a depth-first search approach to explore potential moves up to a specified depth.
The depth determines the number of turns considered for evaluation:
- **Depth 0:** Evaluates only the immediate moves.
- **Depth 1:** Considers the opponent's responses to each immediate move.
- **Depth 2:** Looks ahead to the player's responses to the opponent's responses.

### Move Evaluation Criteria
- **Piece Values:** Each chess piece is assigned a value (e.g., Pawns = 1, Knights = 3).
- **Board Control:** Extra points are awarded for controlling the center of the board.
- **Threats and Safety:** Moves that place the piece in danger are penalized.
- **Check and Checkmate:** Moves leading to checkmate are highly rewarded.

### Complexity
The algorithm's complexity grows with the depth:
- **Depth 0:** \(O(n)\)
- **Depth 1:** \(O(n^2)\)
- **Depth 2:** \(O(n^3)\)

Where \(n\) is the total number of possible moves on the board. This complexity reflects the branching factor at each depth level.

## Usage
Run the program and enter the desired depth (0, 1, or 2) for move evaluation. The evaluator will output the best moves based on the specified depth.
