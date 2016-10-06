function GameOver = CheckIfOver(Gameboard)
%  Christopher Curran, East Carolina University
%  (Started September 17, 2016; Last Edited - September 26, 2016)
%  For MATLAB Class - Due September 27, 2016
%
%  calling - [ GameOver ] = CheckIfOver(Gameboard)
%  
%  This code is a sequence of if conditionals to check if a winning move hjas been made in the TicTacToeGame2 script.
%  If a winning move is detected, a message dialog appears with the outcome of the game in it
%  
%  
%  
%  Inputs
%  --------
%  Gameboard - 5x7 char matrix containing Tic Tac Toe Gameboard
%  
%  
%  Outputs
%  --------
%  GameOver - 0 if game is not over, 1 if winning move has been made
%  
%  
%  Other Functions Called
%  -----------------------
%  
% 
%  variables
%  ----------
%  GameOver - T/F Variable if a winning move has been made
%  

GameOver = 0;

if Gameboard(1,1) == 'O' && Gameboard(1,4) == 'O' && Gameboard(1,7) == 'O'
   GameOverBox = msgbox('YOU LOSE!','GameOver');
   GameOver = 1;
   uiwait(GameOverBox)

elseif Gameboard(3,1) == 'O' && Gameboard(3,4) == 'O' && Gameboard(3,7) == 'O'
   GameOverBox = msgbox('YOU LOSE!','GameOver');
   GameOver = 1;
   uiwait(GameOverBox)

elseif Gameboard(5,1) == 'O' && Gameboard(5,4) == 'O' && Gameboard(5,7) == 'O'
   GameOverBox = msgbox('YOU LOSE!','GameOver');
   GameOver = 1;
   uiwait(GameOverBox)

elseif Gameboard(1,1) == 'O' && Gameboard(3,1) == 'O' && Gameboard(5,1) == 'O'
   GameOverBox = msgbox('YOU LOSE!','GameOver');
   GameOver = 1;
   uiwait(GameOverBox)

elseif Gameboard(1,4) == 'O' && Gameboard(3,4) == 'O' && Gameboard(5,4) == 'O'
   GameOverBox = msgbox('YOU LOSE!','GameOver');
   GameOver = 1;
   uiwait(GameOverBox)

elseif Gameboard(1,7) == 'O' && Gameboard(3,7) == 'O' && Gameboard(5,7) == 'O'
   GameOverBox = msgbox('YOU LOSE!','GameOver');
   GameOver = 1;
   uiwait(GameOverBox)

elseif Gameboard(1,1) == 'O' && Gameboard(3,4) == 'O' && Gameboard(5,7) == 'O'
   GameOverBox = msgbox('YOU LOSE!','GameOver');
   GameOver = 1;
   uiwait(GameOverBox)

elseif Gameboard(1,7) == 'O' && Gameboard(3,4) == 'O' && Gameboard(5,1) == 'O'
   GameOverBox = msgbox('YOU LOSE!','GameOver');
   GameOver = 1;
   uiwait(GameOverBox)

elseif Gameboard(1,1) ~= '1' && Gameboard(1,4) ~= '2' && Gameboard(1,7) ~= '3' && Gameboard(3,1) ~= '4' && Gameboard(3,4) ~= '5' && Gameboard(3,7) ~= '6' && Gameboard(5,1) ~= '7' && Gameboard(5,4) ~= '8' && Gameboard(5,7) ~= '9';
   GameOverBox = msgbox('IT''S A TIE!','GameOver');
   GameOver = 2;
   uiwait(GameOverBox)

end

end
