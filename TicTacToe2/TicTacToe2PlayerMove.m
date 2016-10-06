function Gameboard = TicTacToe2PlayerMove(Gameboard,PlayerName)
%  Christopher Curran, East Carolina University
%  (Started Octoberr 3, 2016; Last Edited - October , 2016)
%  For MATLAB Class - Due October 6, 2016
%
%  calling
%  --------
%  ( Gameboard ) = TicTacToe2PlayerMove( Gameboard, PlayerName )
%  
%  
%  This function will allow the user to choose their next move from the
%  list of available places to move at the current time in the game.
%  
%  
%  Inputs
%  --------
%  Gameboard  -  5 x 7 matrix containing the Tic Tac Toe Gameboard
%  PlayerName -  String containing current   
%
%  
%  Outputs
%  --------
%  Gameboard - 5 x 7 Matrix containing the Tic Tac Toe Gameboard
%  
%  
%  Other Functions Called
%  -----------------------
%  listdlg
% 
%  
%  variables
%  ----------
%  Spaces - character array of the current elements of the Tic Tac Toe gameboard
%  OpenSpaces - character array of spaces that have not been selected yet
%  PromptString - String of instructions for user to chosse their space
%  PlayerMove - list dialog of available spaces for the user to chosse from


   Spaces = [Gameboard(1,1),Gameboard(1,4),Gameboard(1,7),Gameboard(3,1),Gameboard(3,4),Gameboard(3,7),Gameboard(5,1),Gameboard(5,4),Gameboard(5,7)];
   OpenSpaces = strrep(Spaces,'X','');
   OpenSpaces = strrep(OpenSpaces,'O','');
   
   switch length(OpenSpaces)
       case 8
           disp(' ')
           disp(' ')
           disp([char(PlayerName),'''s First Move:'])
       case 6
           disp(' ')
           disp(' ')
           disp([char(PlayerName),'''s Second Move:'])
       case 4
           disp(' ')
           disp(' ')
           disp([char(PlayerName),'''s Third Move:'])
       case 2
           disp(' ')
           disp(' ')
           disp([char(PlayerName),'''s Fourth Move:'])
   end
   
   PromptString = [char(PlayerName),',';{''};{'Please select the space you would'};{'like to choose for your move'}];
   PlayerMove = listdlg('PromptString',PromptString,'ListString',OpenSpaces','SelectionMode','single','ListSize',[180 130]);
   
   switch OpenSpaces(PlayerMove)
       case '1'
           Gameboard(1,1) = 'X';
       case '2'
           Gameboard(1,4) = 'X';
       case '3'
           Gameboard(1,7) = 'X';
       case '4'
           Gameboard(3,1) = 'X';
       case '5'
           Gameboard(3,4) = 'X';
       case '6'
           Gameboard(3,7) = 'X';
       case '7'
           Gameboard(5,1) = 'X';
       case '8'
           Gameboard(5,4) = 'X';
       case '9'
           Gameboard(5,7) = 'X';
   end
   disp(' ')
   disp(Gameboard)
end