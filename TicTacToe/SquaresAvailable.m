function OpenSquares = SquaresAvailable(handles)
%  Christopher Curran, East Carolina University
%  (Started September 16, 2016; Last Edited - September 26, 2016)
%  For MATLAB Class - Due September 27, 2016
%
%  calling - OpenSquares = SquaresAvailable(handles)
%  
%  This code will create an array of the squares that have not already been used on the TicTacToeGame GUI
%  
%  There are no other functions called during this function
%  
%  
%  Inputs
%  --------
%  OpenSquares - array of handles structure from TicTacToeGame
%  
%  
%  Outputs
%  --------
%  handles - handles structure to TicTacToeGame
%  
%  
%  Other Functions Called
%  -----------------------
%  
%  
%  variables
%  ----------
%  Squares - array of strings from pushbuttons
%  OpenSquares - array of available pushbuttons
%  

% Create array of all pushbutton strings from gameboard
Squares = [get(handles.TicTacToe1,'string'),get(handles.TicTacToe2,'string'),get(handles.TicTacToe3,'string'),get(handles.TicTacToe4,'string'),get(handles.TicTacToe5,'string'),get(handles.TicTacToe6,'string'),get(handles.TicTacToe7,'string'),get(handles.TicTacToe8,'string'),get(handles.TicTacToe9,'string')];

% Remove spaces that have a string of X
OpenSquares = strrep(Squares,'X','');

% Remove spaces that have a string of O
OpenSquares = strrep(OpenSquares,'O','');
end