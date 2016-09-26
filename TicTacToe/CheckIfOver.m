function handles = CheckIfOver(handles)
%  Christopher Curran, East Carolina University
%  (Started September 17, 2016; Last Edited - September 26, 2016)
%  For MATLAB Class - Due September 27, 2016
%
%  calling - [handles] = CheckIfOver(handles)
%  
%  This code is a sequence of if conditionals to check if a winning move hjas been made in the TicTacToeGame GUI.
%  If a winning move is detected, a message dialog appears with the outcome of the game in it
%  
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
%  handles = TurnButtonsOff(handles)
%  
% 
%  variables
%  ----------
%  
%  
if get(handles.TicTacToe1,'string') == 'O' && get(handles.TicTacToe2,'string') == 'O' && get(handles.TicTacToe3,'string') == 'O'
   handles.GameOverBox = msgbox('YOU LOSE!','GameOver');
   handles = TurnButtonsOff(handles);
   handles.GameOver = 1;
   set(handles.NewGame_button,'Enable','inactive')
   uiwait(handles.GameOverBox)
   set(handles.NewGame_button,'Enable','on')
elseif get(handles.TicTacToe4,'string') == 'O' && get(handles.TicTacToe5,'string') == 'O' && get(handles.TicTacToe6,'string') == 'O'
   handles.GameOverBox = msgbox('YOU LOSE!','GameOver');
   handles = TurnButtonsOff(handles);
   handles.GameOver = 1;
   set(handles.NewGame_button,'Enable','inactive')
   uiwait(handles.GameOverBox)
   set(handles.NewGame_button,'Enable','on')
elseif get(handles.TicTacToe7,'string') == 'O' && get(handles.TicTacToe8,'string') == 'O' && get(handles.TicTacToe9,'string') == 'O'
   handles.GameOverBox = msgbox('YOU LOSE!','GameOver');
   handles = TurnButtonsOff(handles);
   handles.GameOver = 1;
   set(handles.NewGame_button,'Enable','inactive')
   uiwait(handles.GameOverBox)
   set(handles.NewGame_button,'Enable','on')
elseif get(handles.TicTacToe1,'string') == 'O' && get(handles.TicTacToe4,'string') == 'O' && get(handles.TicTacToe7,'string') == 'O'
   handles.GameOverBox = msgbox('YOU LOSE!','GameOver');
   handles = TurnButtonsOff(handles);
   handles.GameOver = 1;
   set(handles.NewGame_button,'Enable','inactive')
   uiwait(handles.GameOverBox)
   set(handles.NewGame_button,'Enable','on')
elseif get(handles.TicTacToe2,'string') == 'O' && get(handles.TicTacToe5,'string') == 'O' && get(handles.TicTacToe8,'string') == 'O'
   handles.GameOverBox = msgbox('YOU LOSE!','GameOver');
   handles = TurnButtonsOff(handles);
   handles.GameOver = 1;
   set(handles.NewGame_button,'Enable','inactive')
   uiwait(handles.GameOverBox)
   set(handles.NewGame_button,'Enable','on')
elseif get(handles.TicTacToe3,'string') == 'O' && get(handles.TicTacToe6,'string') == 'O' && get(handles.TicTacToe9,'string') == 'O'
   handles.GameOverBox = msgbox('YOU LOSE!','GameOver');
   handles = TurnButtonsOff(handles);
   handles.GameOver = 1;
   set(handles.NewGame_button,'Enable','inactive')
   uiwait(handles.GameOverBox)
   set(handles.NewGame_button,'Enable','on')
elseif get(handles.TicTacToe1,'string') == 'O' && get(handles.TicTacToe5,'string') == 'O' && get(handles.TicTacToe9,'string') == 'O'
   handles.GameOverBox = msgbox('YOU LOSE!','GameOver');
   handles = TurnButtonsOff(handles);
   handles.GameOver = 1;
   set(handles.NewGame_button,'Enable','inactive')
   uiwait(handles.GameOverBox)
   set(handles.NewGame_button,'Enable','on')
elseif get(handles.TicTacToe3,'string') == 'O' && get(handles.TicTacToe5,'string') == 'O' && get(handles.TicTacToe7,'string') == 'O'
   handles.GameOverBox = msgbox('YOU LOSE!','GameOver');
   handles = TurnButtonsOff(handles);
   handles.GameOver = 1;
   set(handles.NewGame_button,'Enable','inactive')
   uiwait(handles.GameOverBox)
   set(handles.NewGame_button,'Enable','on')
elseif get(handles.TicTacToe1,'string') == 'X' && get(handles.TicTacToe2,'string') == 'X' && get(handles.TicTacToe3,'string') == 'X'
   handles.GameOverBox = msgbox('YOU WIN!','GameOver');
   handles = TurnButtonsOff(handles);
   handles.GameOver = 1;
   set(handles.NewGame_button,'Enable','inactive')
   uiwait(handles.GameOverBox)
   set(handles.NewGame_button,'Enable','on')
elseif get(handles.TicTacToe7,'string') == 'X' && get(handles.TicTacToe8,'string') == 'X' && get(handles.TicTacToe9,'string') == 'X'
   handles.GameOverBox = msgbox('YOU WIN!','GameOver');
   handles = TurnButtonsOff(handles);
   handles.GameOver = 1;
   set(handles.NewGame_button,'Enable','inactive')
   uiwait(handles.GameOverBox)
   set(handles.NewGame_button,'Enable','on')
elseif get(handles.TicTacToe1,'string') == 'X' && get(handles.TicTacToe4,'string') == 'X' && get(handles.TicTacToe7,'string') == 'X'
   handles.GameOverBox = msgbox('YOU WIN!','GameOver');
   handles = TurnButtonsOff(handles);
   handles.GameOver = 1;
   set(handles.NewGame_button,'Enable','inactive')
   uiwait(handles.GameOverBox)
   set(handles.NewGame_button,'Enable','on')
elseif get(handles.TicTacToe3,'string') == 'X' && get(handles.TicTacToe6,'string') == 'X' && get(handles.TicTacToe9,'string') == 'X'
   handles.GameOverBox = msgbox('YOU WIN!','GameOver');
   handles = TurnButtonsOff(handles);
   handles.GameOver = 1;
   set(handles.NewGame_button,'Enable','inactive')
   uiwait(handles.GameOverBox)
   set(handles.NewGame_button,'Enable','on')
elseif get(handles.TicTacToe1,'string') == 'X' | get(handles.TicTacToe1,'string') == 'O' && get(handles.TicTacToe2,'string') == 'X' | get(handles.TicTacToe2,'string') == 'O' && get(handles.TicTacToe3,'string') == 'X' | get(handles.TicTacToe3,'string') == 'O' && get(handles.TicTacToe4,'string') == 'X' | get(handles.TicTacToe4,'string') == 'O' && get(handles.TicTacToe5,'string') == 'X' | get(handles.TicTacToe5,'string') == 'O' && get(handles.TicTacToe6,'string') == 'X' | get(handles.TicTacToe6,'string') == 'O' && get(handles.TicTacToe7,'string') == 'X' | get(handles.TicTacToe7,'string') == 'O' && get(handles.TicTacToe8,'string') == 'X' | get(handles.TicTacToe8,'string') == 'O' && get(handles.TicTacToe9,'string') == 'X' | get(handles.TicTacToe9,'string') == 'O';
   handles.GameOverBox = msgbox('IT''S A TIE!','GameOver');
   handles = TurnButtonsOff(handles);
   handles.GameOver = 1;
   set(handles.NewGame_button,'Enable','inactive')
   uiwait(handles.GameOverBox)
   set(handles.NewGame_button,'Enable','on')
end

end
