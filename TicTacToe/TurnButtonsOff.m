function handles = TurnButtonsOff(handles)
%  Christopher Curran, East Carolina University
%  (Started September 15, 2016; Last Edited - September 26, 2016)
%  For MATLAB Class - Due September 27, 2016
%
%  calling - [handles] = TurnButtonsOff(handles)
%  
%  This code will disable the pushbuttons that make up the game board of the TictacToeGame GUI
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

set(handles.TicTacToe1,'Enable','inactive')
set(handles.TicTacToe2,'Enable','inactive')
set(handles.TicTacToe3,'Enable','inactive')
set(handles.TicTacToe4,'Enable','inactive')
set(handles.TicTacToe5,'Enable','inactive')
set(handles.TicTacToe6,'Enable','inactive')
set(handles.TicTacToe7,'Enable','inactive')
set(handles.TicTacToe8,'Enable','inactive')
set(handles.TicTacToe9,'Enable','inactive')

end