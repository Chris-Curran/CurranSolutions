function varargout = TicTacToeGame(varargin)
%  Christopher Curran, East Carolina University
%  (Started September 13, 2016; Last Edited - September 26, 2016)
%  For MATLAB Class - Due September 27, 2016
%
%  This is the GUI code to allow the user to play a game of Tic Tac Toe against the computer. The computer will never lose, only win or tie.
%  While there are no inputs our outputs, this GUI will use other functions.
%  
%  Inputs
%  --------
%  
%  
%  Outputs
%  --------
%  
%  
%  Other Functions Called
%  -----------------------
%  handles = TurnButtonsOff(handles)
%  handles = TurnButtonsOn(handles)
%  OpenSquares = SquaresAvailable(handles)
%  handles = CheckIfOver(handles)
%  handles = SmartComputersTurn(handles)
%  
% 
%  handles structure
%  ------------------
%  handles.TicTacToe1 = pushbutton in space (1,1) of the Tic Tac Toe board
%  handles.TicTacToe2 = pushbutton in space (1,2) of the Tic Tac Toe board
%  handles.TicTacToe3 = pushbutton in space (1,3) of the Tic Tac Toe board
%  handles.TicTacToe4 = pushbutton in space (2,1) of the Tic Tac Toe board
%  handles.TicTacToe5 = pushbutton in space (2,2) of the Tic Tac Toe board
%  handles.TicTacToe6 = pushbutton in space (2,3) of the Tic Tac Toe board
%  handles.TicTacToe7 = pushbutton in space (3,1) of the Tic Tac Toe board
%  handles.TicTacToe8 = pushbutton in space (3,2) of the Tic Tac Toe board
%  handles.TicTacToe9 = pushbutton in space (3,3) of the Tic Tac Toe board
%  handles.NewGame_button = button pushed to start game, and then to close GUI
%  handles.InstructionBox = static text box displaying next instruction for user
%  handles.TicTacToe_text = static tezxt displaying "Tic Tac Toe" at the top of the GUI
%  handles.TicTacToeGame = GUI figure that game is played in
%  handles.GameOver = variable that changes to a value of 1 if a winning move has been played
%  handles.PlayerName = string of the user's name obtained from input dialog
%  handles.OpenSquares = variable containing sting of available spaces on the board
%  
%  variables
%  ----------
%  OpenSquaresBefore = number of squares available before turn is taken
%  OpenSquaresNow = number of squares available after turn is taken
%  
%  
%  
% TICTACTOEGAME MATLAB code for TicTacToeGame.fig
%      TICTACTOEGAME, by itself, creates a new TICTACTOEGAME or raises the existing
%      singleton*.
%
%      H = TICTACTOEGAME returns the handle to a new TICTACTOEGAME or the handle to
%      the existing singleton*.
%
%      TICTACTOEGAME('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TICTACTOEGAME.M with the given input arguments.
%
%      TICTACTOEGAME('Property','Value',...) creates a new TICTACTOEGAME or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before TicTacToeGame_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to TicTacToeGame_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help TicTacToeGame

% Last Modified by GUIDE v2.5 15-Sep-2016 22:32:11

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @TicTacToeGame_OpeningFcn, ...
                   'gui_OutputFcn',  @TicTacToeGame_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before TicTacToeGame is made visible.
function TicTacToeGame_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to TicTacToeGame (see VARARGIN)

% Turn GUI buttons off until computer makes it's first move

handles = TurnButtonsOff(handles);

% Initialize two handles variables with a value of 0

handles.GameOver = 0;
handles.OpenSquares = [get(handles.TicTacToe1,'string'),get(handles.TicTacToe2,'string'),get(handles.TicTacToe3,'string'),get(handles.TicTacToe4,'string'),get(handles.TicTacToe5,'string'),get(handles.TicTacToe6,'string'),get(handles.TicTacToe7,'string'),get(handles.TicTacToe8,'string'),get(handles.TicTacToe9,'string')];

% Initialize two variables with a value of 0
OpenSquaresBefore = 0;
OpenSquaresNow = 0;

% Choose default command line output for TicTacToeGame
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes TicTacToeGame wait for user response (see UIRESUME)
uiwait

 
% --- Outputs from this function are returned to the command line.
function varargout = TicTacToeGame_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


 
 
% --- Executes on button press in NewGame_button.
function NewGame_button_Callback(hObject, eventdata, handles)
% hObject    handle to NewGame_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% --- Executes on button press in TicTacToe1.

%  If NewGame_button shows "NEW GAME", then create input dialog asking for player name
Yes = strcmp(get(handles.NewGame_button,'string'),'NEW GAME');

if Yes == 1
    handles.PlayerName = inputdlg('Please enter your name:','Player Name');

%  Create welcome statement with player name in it and display welcome statement in InstructionBox
    WelcomeStatement = strcat({'Welcome '},handles.PlayerName,{', Please wait while the computer makes it''s first move'});
    set(handles.InstructionBox,'string',WelcomeStatement,'ForegroundColor','b');
    
%  Change NewGame_button to a red button reading "CLOSE GAME"
    set(handles.NewGame_button,'string','Close Game','BackgroundColor','r');

%  Pause while "Computer makes it's first move", then set middle space as a blue O
    pause(1.5)
    set(handles.TicTacToe5,'string','O','BackgroundColor','b');

%  Change InstructionBox text to tell player to make their first move, and turn gameboard pushbuttons on   
    set(handles.InstructionBox,'string','Please make your first move...Choose carefully','ForegroundColor','b')
    handles = TurnButtonsOn(handles);
    
% Update handles structure
guidata(hObject, handles);

% If NewGame_button is pressed and the button's string is not "NEW GAME", then delete the GUI
else
   delete(handles.TicTacToeGame) 
end




function TicTacToe1_Callback(hObject, eventdata, handles)
% hObject    handle to TicTacToe1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%  The following commands will take place after the user selects TicTacToe1 pushbutton

%  Update string of available squares on game board
handles.OpenSquares = SquaresAvailable(handles);

%  Update variable of the number of available squares before the player's turn
OpenSquaresBefore = length(handles.OpenSquares);

% If the square was already used, display error message in InstructionBox and ask user to pick a new square
if get(handles.TicTacToe1,'string') == 'X' | get(handles.TicTacToe1,'string') == 'O'
    set(handles.InstructionBox,'string','ERROR: Please select a different square!','ForegroundColor','r');

% Otherwise, change selected square to a Red box with an X in it
%   Change InstructionBox to say "Nice Move"
%   Run function CheckIfOver to see if a winning move has been made
%   If a winning move has not been made, ask user to wait while computer makes it's next move
else
    handles = TurnButtonsOff(handles);
    set(handles.TicTacToe1,'string','X','BackgroundColor','r');
    set(handles.InstructionBox,'string','Nice Move!','ForegroundColor','b');
    handles = CheckIfOver(handles);
    pause(1)
    if handles.GameOver == 0
        set(handles.InstructionBox,'string','Please wait for your opponent''s move','ForegroundColor','b');
    end
end

%  Update string of available squares on game board
handles.OpenSquares = SquaresAvailable(handles);

%  Update variable of the number of available squares after the player's turn
OpenSquaresNow = length(handles.OpenSquares);

%  Compare the number of squares available before and after the player's turn
%       This will allow user to go again if they first selected a box that was already used
%  If the numbers are the different, turn gameboard off, and run function SmartComputersTurn
%       Then check if a winning move has been made, and if not, turn the gameboard back on after computer move
if OpenSquaresBefore ~= OpenSquaresNow && handles.GameOver == 0
    handles = SmartComputersTurn(handles);
    handles = CheckIfOver(handles);
    if handles.GameOver == 0
        handles = TurnButtonsOn(handles);
    end
end


% Update handles structure
guidata(hObject, handles);


% --- Executes on button press in TicTacToe2.
function TicTacToe2_Callback(hObject, eventdata, handles)
% hObject    handle to TicTacToe2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%  The following commands will take place after the user selects TicTacToe2 pushbutton

%  Update string of available squares on game board
handles.OpenSquares = SquaresAvailable(handles);

%  Update variable of the number of available squares before the player's turn
OpenSquaresBefore = length(handles.OpenSquares);

% If the square was already used, display error message in InstructionBox and ask user to pick a new square
if get(handles.TicTacToe2,'string') == 'X' | get(handles.TicTacToe2,'string') == 'O'
    set(handles.InstructionBox,'string','ERROR: Please select a different square!','ForegroundColor','r');

% Otherwise, change selected square to a Red box with an X in it
%   Change InstructionBox to say "Nice Move"
%   Run function CheckIfOver to see if a winning move has been made
%   If a winning move has not been made, ask user to wait while computer makes it's next move
else
    handles = TurnButtonsOff(handles);
    set(handles.TicTacToe2,'string','X','BackgroundColor','r');
    set(handles.InstructionBox,'string','Nice Move!','ForegroundColor','b');
    handles = CheckIfOver(handles);
    pause(1)
    if handles.GameOver == 0
        set(handles.InstructionBox,'string','Please wait for your opponent''s move','ForegroundColor','b');
    end
end

%  Update string of available squares on game board
handles.OpenSquares = SquaresAvailable(handles);

%  Update variable of the number of available squares after the player's turn
OpenSquaresNow = length(handles.OpenSquares);

%  Compare the number of squares available before and after the player's turn
%       This will allow user to go again if they first selected a box that was already used
%  If the numbers are the different, turn gameboard off, and run function SmartComputersTurn
%       Then check if a winning move has been made, and if not, turn the gameboard back on after computer move
if OpenSquaresBefore ~= OpenSquaresNow && handles.GameOver == 0
    handles = SmartComputersTurn(handles);
    handles = CheckIfOver(handles);
    if handles.GameOver == 0
        handles = TurnButtonsOn(handles);
    end
end


% Update handles structure
guidata(hObject, handles);


% --- Executes on button press in TicTacToe3.
function TicTacToe3_Callback(hObject, eventdata, handles)
% hObject    handle to TicTacToe3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%  The following commands will take place after the user selects TicTacToe3 pushbutton

%  Update string of available squares on game board
handles.OpenSquares = SquaresAvailable(handles);

%  Update variable of the number of available squares before the player's turn
OpenSquaresBefore = length(handles.OpenSquares);

% If the square was already used, display error message in InstructionBox and ask user to pick a new square
if get(handles.TicTacToe3,'string') == 'X' | get(handles.TicTacToe3,'string') == 'O'
    set(handles.InstructionBox,'string','ERROR: Please select a different square!','ForegroundColor','r');

% Otherwise, change selected square to a Red box with an X in it
%   Change InstructionBox to say "Nice Move"
%   Run function CheckIfOver to see if a winning move has been made
%   If a winning move has not been made, ask user to wait while computer makes it's next move
else
    handles = TurnButtonsOff(handles);
    set(handles.TicTacToe3,'string','X','BackgroundColor','r');
    set(handles.InstructionBox,'string','Nice Move!','ForegroundColor','b');
    handles = CheckIfOver(handles);
    pause(1)
    if handles.GameOver == 0
        set(handles.InstructionBox,'string','Please wait for your opponent''s move','ForegroundColor','b');
    end
end

%  Update string of available squares on game board
handles.OpenSquares = SquaresAvailable(handles);

%  Update variable of the number of available squares after the player's turn
OpenSquaresNow = length(handles.OpenSquares);

%  Compare the number of squares available before and after the player's turn
%       This will allow user to go again if they first selected a box that was already used
%  If the numbers are the different, turn gameboard off, and run function SmartComputersTurn
%       Then check if a winning move has been made, and if not, turn the gameboard back on after computer move
if OpenSquaresBefore ~= OpenSquaresNow && handles.GameOver == 0
    handles = SmartComputersTurn(handles);
    handles = CheckIfOver(handles);
    if handles.GameOver == 0
        handles = TurnButtonsOn(handles);
    end
end


% Update handles structure
guidata(hObject, handles);

% --- Executes on button press in TicTacToe4.
function TicTacToe4_Callback(hObject, eventdata, handles)
% hObject    handle to TicTacToe4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%  The following commands will take place after the user selects TicTacToe4 pushbutton

%  Update string of available squares on game board
handles.OpenSquares = SquaresAvailable(handles);

%  Update variable of the number of available squares before the player's turn
OpenSquaresBefore = length(handles.OpenSquares);

% If the square was already used, display error message in InstructionBox and ask user to pick a new square
if get(handles.TicTacToe4,'string') == 'X' | get(handles.TicTacToe4,'string') == 'O'
    set(handles.InstructionBox,'string','ERROR: Please select a different square!','ForegroundColor','r');

% Otherwise, change selected square to a Red box with an X in it
%   Change InstructionBox to say "Nice Move"
%   Run function CheckIfOver to see if a winning move has been made
%   If a winning move has not been made, ask user to wait while computer makes it's next move
else
    handles = TurnButtonsOff(handles);
    set(handles.TicTacToe4,'string','X','BackgroundColor','r');
    set(handles.InstructionBox,'string','Nice Move!','ForegroundColor','b');
    handles = CheckIfOver(handles);
    pause(1)
    if handles.GameOver == 0
        set(handles.InstructionBox,'string','Please wait for your opponent''s move','ForegroundColor','b');
    end
end

%  Update string of available squares on game board
handles.OpenSquares = SquaresAvailable(handles);

%  Update variable of the number of available squares after the player's turn
OpenSquaresNow = length(handles.OpenSquares);

%  Compare the number of squares available before and after the player's turn
%       This will allow user to go again if they first selected a box that was already used
%  If the numbers are the different, turn gameboard off, and run function SmartComputersTurn
%       Then check if a winning move has been made, and if not, turn the gameboard back on after computer move
if OpenSquaresBefore ~= OpenSquaresNow && handles.GameOver == 0
    handles = SmartComputersTurn(handles);
    handles = CheckIfOver(handles);
    if handles.GameOver == 0
        handles = TurnButtonsOn(handles);
    end
end

% Update handles structure
guidata(hObject, handles);


% --- Executes on button press in TicTacToe5.
function TicTacToe5_Callback(hObject, eventdata, handles)
% hObject    handle to TicTacToe5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%  The following commands will take place after the user selects TicTacToe5 pushbutton

%  Update string of available squares on game board
handles.OpenSquares = SquaresAvailable(handles);

%  Update variable of the number of available squares before the player's turn
OpenSquaresBefore = length(handles.OpenSquares);

% If the square was already used, display error message in InstructionBox and ask user to pick a new square
if get(handles.TicTacToe5,'string') == 'X' | get(handles.TicTacToe5,'string') == 'O'
    set(handles.InstructionBox,'string','ERROR: Please select a different square!','ForegroundColor','r');

% Otherwise, change selected square to a Red box with an X in it
%   Change InstructionBox to say "Nice Move"
%   Run function CheckIfOver to see if a winning move has been made
%   If a winning move has not been made, ask user to wait while computer makes it's next move
else
    handles = TurnButtonsOff(handles);
    set(handles.TicTacToe5,'string','X','BackgroundColor','r');
    set(handles.InstructionBox,'string','Nice Move!','ForegroundColor','b');
    handles = CheckIfOver(handles);
    pause(1)
    if handles.GameOver == 0
        set(handles.InstructionBox,'string','Please wait for your opponent''s move','ForegroundColor','b');
    end
end

%  Update string of available squares on game board
handles.OpenSquares = SquaresAvailable(handles);

%  Update variable of the number of available squares after the player's turn
OpenSquaresNow = length(handles.OpenSquares);

%  Compare the number of squares available before and after the player's turn
%       This will allow user to go again if they first selected a box that was already used
%  If the numbers are the different, turn gameboard off, and run function SmartComputersTurn
%       Then check if a winning move has been made, and if not, turn the gameboard back on after computer move
if OpenSquaresBefore ~= OpenSquaresNow && handles.GameOver == 0
    handles = SmartComputersTurn(handles);
    handles = CheckIfOver(handles);
    if handles.GameOver == 0
        handles = TurnButtonsOn(handles);
    end
end


% Update handles structure
guidata(hObject, handles);


% --- Executes on button press in TicTacToe6.
function TicTacToe6_Callback(hObject, eventdata, handles)
% hObject    handle to TicTacToe6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%  The following commands will take place after the user selects TicTacToe6 pushbutton

%  Update string of available squares on game board
handles.OpenSquares = SquaresAvailable(handles);

%  Update variable of the number of available squares before the player's turn
OpenSquaresBefore = length(handles.OpenSquares);

% If the square was already used, display error message in InstructionBox and ask user to pick a new square
if get(handles.TicTacToe6,'string') == 'X' | get(handles.TicTacToe6,'string') == 'O'
    set(handles.InstructionBox,'string','ERROR: Please select a different square!','ForegroundColor','r');

% Otherwise, change selected square to a Red box with an X in it
%   Change InstructionBox to say "Nice Move"
%   Run function CheckIfOver to see if a winning move has been made
%   If a winning move has not been made, ask user to wait while computer makes it's next move
else
    handles = TurnButtonsOff(handles);
    set(handles.TicTacToe6,'string','X','BackgroundColor','r');
    set(handles.InstructionBox,'string','Nice Move!','ForegroundColor','b');
    handles = CheckIfOver(handles);
    pause(1)
    if handles.GameOver == 0
        set(handles.InstructionBox,'string','Please wait for your opponent''s move','ForegroundColor','b');
    end
end

%  Update string of available squares on game board
handles.OpenSquares = SquaresAvailable(handles);

%  Update variable of the number of available squares after the player's turn
OpenSquaresNow = length(handles.OpenSquares);

%  Compare the number of squares available before and after the player's turn
%       This will allow user to go again if they first selected a box that was already used
%  If the numbers are the different, turn gameboard off, and run function SmartComputersTurn
%       Then check if a winning move has been made, and if not, turn the gameboard back on after computer move
if OpenSquaresBefore ~= OpenSquaresNow && handles.GameOver == 0
    handles = SmartComputersTurn(handles);
    handles = CheckIfOver(handles);
    if handles.GameOver == 0
        handles = TurnButtonsOn(handles);
    end
end


% Update handles structure
guidata(hObject, handles);


% --- Executes on button press in TicTacToe7.
function TicTacToe7_Callback(hObject, eventdata, handles)
% hObject    handle to TicTacToe7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%  The following commands will take place after the user selects TicTacToe7 pushbutton

%  Update string of available squares on game board
handles.OpenSquares = SquaresAvailable(handles);

%  Update variable of the number of available squares before the player's turn
OpenSquaresBefore = length(handles.OpenSquares);

% If the square was already used, display error message in InstructionBox and ask user to pick a new square
if get(handles.TicTacToe7,'string') == 'X' | get(handles.TicTacToe7,'string') == 'O'
    set(handles.InstructionBox,'string','ERROR: Please select a different square!','ForegroundColor','r');

% Otherwise, change selected square to a Red box with an X in it
%   Change InstructionBox to say "Nice Move"
%   Run function CheckIfOver to see if a winning move has been made
%   If a winning move has not been made, ask user to wait while computer makes it's next move
else
    handles = TurnButtonsOff(handles);
    set(handles.TicTacToe7,'string','X','BackgroundColor','r');
    set(handles.InstructionBox,'string','Nice Move!','ForegroundColor','b');
    handles = CheckIfOver(handles);
    pause(1)
    if handles.GameOver == 0
        set(handles.InstructionBox,'string','Please wait for your opponent''s move','ForegroundColor','b');
    end
end

%  Update string of available squares on game board
handles.OpenSquares = SquaresAvailable(handles);

%  Update variable of the number of available squares after the player's turn
OpenSquaresNow = length(handles.OpenSquares);

%  Compare the number of squares available before and after the player's turn
%       This will allow user to go again if they first selected a box that was already used
%  If the numbers are the different, turn gameboard off, and run function SmartComputersTurn
%       Then check if a winning move has been made, and if not, turn the gameboard back on after computer move
if OpenSquaresBefore ~= OpenSquaresNow && handles.GameOver == 0
    handles = SmartComputersTurn(handles);
    handles = CheckIfOver(handles);
    if handles.GameOver == 0
        handles = TurnButtonsOn(handles);
    end
end

% Update handles structure
guidata(hObject, handles);


% --- Executes on button press in TicTacToe8.
function TicTacToe8_Callback(hObject, eventdata, handles)
% hObject    handle to TicTacToe8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%  The following commands will take place after the user selects TicTacToe8 pushbutton

%  Update string of available squares on game board
handles.OpenSquares = SquaresAvailable(handles);

%  Update variable of the number of available squares before the player's turn
OpenSquaresBefore = length(handles.OpenSquares);

% If the square was already used, display error message in InstructionBox and ask user to pick a new square
if get(handles.TicTacToe8,'string') == 'X' | get(handles.TicTacToe8,'string') == 'O'
    set(handles.InstructionBox,'string','ERROR: Please select a different square!','ForegroundColor','r');

% Otherwise, change selected square to a Red box with an X in it
%   Change InstructionBox to say "Nice Move"
%   Run function CheckIfOver to see if a winning move has been made
%   If a winning move has not been made, ask user to wait while computer makes it's next move
else
    handles = TurnButtonsOff(handles);
    set(handles.TicTacToe8,'string','X','BackgroundColor','r');
    set(handles.InstructionBox,'string','Nice Move!','ForegroundColor','b');
    handles = CheckIfOver(handles);
    pause(1)
    if handles.GameOver == 0
        set(handles.InstructionBox,'string','Please wait for your opponent''s move','ForegroundColor','b');
    end
end

%  Update string of available squares on game board
handles.OpenSquares = SquaresAvailable(handles);

%  Update variable of the number of available squares after the player's turn
OpenSquaresNow = length(handles.OpenSquares);

%  Compare the number of squares available before and after the player's turn
%       This will allow user to go again if they first selected a box that was already used
%  If the numbers are the different, turn gameboard off, and run function SmartComputersTurn
%       Then check if a winning move has been made, and if not, turn the gameboard back on after computer move
if OpenSquaresBefore ~= OpenSquaresNow && handles.GameOver == 0
    handles = SmartComputersTurn(handles);
    handles = CheckIfOver(handles);
    if handles.GameOver == 0
        handles = TurnButtonsOn(handles);
    end
end


% Update handles structure
guidata(hObject, handles);


% --- Executes on button press in TicTacToe9.
function TicTacToe9_Callback(hObject, eventdata, handles)
% hObject    handle to TicTacToe9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%  The following commands will take place after the user selects TicTacToe9 pushbutton

%  Update string of available squares on game board
handles.OpenSquares = SquaresAvailable(handles);

%  Update variable of the number of available squares before the player's turn
OpenSquaresBefore = length(handles.OpenSquares);

% If the square was already used, display error message in InstructionBox and ask user to pick a new square
if get(handles.TicTacToe9,'string') == 'X' | get(handles.TicTacToe9,'string') == 'O'
    set(handles.InstructionBox,'string','ERROR: Please select a different square!','ForegroundColor','r');

% Otherwise, change selected square to a Red box with an X in it
%   Change InstructionBox to say "Nice Move"
%   Run function CheckIfOver to see if a winning move has been made
%   If a winning move has not been made, ask user to wait while computer makes it's next move
else
    handles = TurnButtonsOff(handles);
    set(handles.TicTacToe9,'string','X','BackgroundColor','r');
    set(handles.InstructionBox,'string','Nice Move!','ForegroundColor','b');
    handles = CheckIfOver(handles);
    pause(1)
    if handles.GameOver == 0
        set(handles.InstructionBox,'string','Please wait for your opponent''s move','ForegroundColor','b');
    end
end

%  Update string of available squares on game board
handles.OpenSquares = SquaresAvailable(handles);

%  Update variable of the number of available squares after the player's turn
OpenSquaresNow = length(handles.OpenSquares);

%  Compare the number of squares available before and after the player's turn
%       This will allow user to go again if they first selected a box that was already used
%  If the numbers are the different, turn gameboard off, and run function SmartComputersTurn
%       Then check if a winning move has been made, and if not, turn the gameboard back on after computer move
if OpenSquaresBefore ~= OpenSquaresNow && handles.GameOver == 0
    handles = SmartComputersTurn(handles);
    handles = CheckIfOver(handles);
    if handles.GameOver == 0
        handles = TurnButtonsOn(handles);
    end
end

% Update handles structure
guidata(hObject, handles);


% --- Executes during object deletion, before destroying properties.
function TicTacToeGame_DeleteFcn(hObject, eventdata, handles)
% hObject    handle to TicTacToeGame (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
