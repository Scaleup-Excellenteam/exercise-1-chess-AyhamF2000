// Chess 
#include "Chess.h"
#include <sstream>
#include "Board.h"
int main()
{
	string board = "RNBQKBNRPPPPPPPP################################pppppppprnbqkbnr";
	//string board = "R###K##R####PPPPb###############################ppppppppr###k##r";// to check the castling
	//string board = "RNBQK###PPPPPPPP############################################kbnr";

	Chess a(board);

    Board myBoard(board);
	char myColor = 'W';

	int codeResponse = 0;
	string res = a.getInput();
	while (res != "exit")
	{
		/* 
		codeResponse value : 
		Illegal movements : 
		11 - there is not piece at the source  
		12 - the piece in the source is piece of your opponent
		13 - there one of your pieces at the destination 
		21 - illegal movement of that piece 
		31 - this movement will cause you checkmate

		legal movements : 
		41 - the last movement was legal and cause check 
		42 - the last movement was legal, next turn 
		43 - castling 
		44 - chess
		*/

		{ // put your code here instead that code

			// Smart move to checkmate the black king in 4 moves:
			// b6c6 g5e5 b7d7 h4d8
			

            std::stringstream stringNumber1,stringNumber2;
            stringNumber1 << res[1];
            stringNumber2 << res[3];

            int currentColumn,
            goalColumn,
            currentRow = res[0] - 'a',
            goalRow = res[2] - 'a';

            stringNumber1 >> currentColumn;
            stringNumber2 >> goalColumn;
            currentColumn--;
            goalColumn--;

            codeResponse = myBoard.checkMove(currentRow,currentColumn ,goalRow,goalColumn, myColor);
			if (codeResponse >= 41 && codeResponse <= 44)
				myColor = (myColor == 'W' ? 'B' : 'W');

			if (myBoard.getGameState() == Board::GameState::WHITE_WIN) { 
				a.setGameState(Chess::WHITE_WIN);
			}else if (myBoard.getGameState() == Board::GameState::BLACK_WIN) {
				a.setGameState(Chess::BLACK_WIN);
			}else if (myBoard.getGameState() == Board::GameState::DRAW) {
				a.setGameState(Chess::DRAW); 
			} 
        }
		
		a.setCodeResponse(codeResponse);
		res = a.getInput();
	}

	cout << endl << "Exiting " << endl; 
	return 0;
}