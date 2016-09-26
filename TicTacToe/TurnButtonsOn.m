function handles = TurnButtonsOn(handles)
%  Christopher Curran, East Carolina University
%  (Started September 15, 2016; Last Edited - September 26, 2016)
%  For MATLAB Class - Due September 27, 2016
%
%  calling - [handles] = TurnButtonsOn(handles)
%  
%  This code will enable the pushbuttons that make up the game board of the TictacToeGame GUI
%  
%  There are no other functions called during this function
%  
%  
%  Inputs
%  --------
%  handles - handles structure from TicTacToeGame
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
%  
%  
%  

set(handles.TicTacToe1,'Enable','on')
set(handles.TicTacToe2,'Enable','on')
set(handles.TicTacToe3,'Enable','on')
set(handles.TicTacToe4,'Enable','on')
set(handles.TicTacToe5,'Enable','on')
set(handles.TicTacToe6,'Enable','on')
set(handles.TicTacToe7,'Enable','on')
set(handles.TicTacToe8,'Enable','on')
set(handles.TicTacToe9,'Enable','on')

end