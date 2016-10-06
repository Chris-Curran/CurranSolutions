function handles = ComputersTurn(handles)

Squares = [get(handles.TicTacToe1,'string'),get(handles.TicTacToe2,'string'),get(handles.TicTacToe3,'string'),get(handles.TicTacToe4,'string'),get(handles.TicTacToe5,'string'),get(handles.TicTacToe6,'string'),get(handles.TicTacToe7,'string'),get(handles.TicTacToe8,'string'),get(handles.TicTacToe9,'string')];
OpenSquares = strrep(Squares,'X','');
OpenSquares = strrep(OpenSquares,'O','');
ComputerMove = datasample(OpenSquares,1);
switch (ComputerMove) 
    case '1' 
        set(handles.TicTacToe1,'string','O','BackgroundColor','b');
    case '2' 
        set(handles.TicTacToe2,'string','O','BackgroundColor','b');
    case '3' 
        set(handles.TicTacToe3,'string','O','BackgroundColor','b'); 
    case '4' 
        set(handles.TicTacToe4,'string','O','BackgroundColor','b'); 
    case '5' 
        set(handles.TicTacToe5,'string','O','BackgroundColor','b');
    case '6' 
        set(handles.TicTacToe6,'string','O','BackgroundColor','b');
    case '7' 
        set(handles.TicTacToe7,'string','O','BackgroundColor','b');
    case '8' 
        set(handles.TicTacToe8,'string','O','BackgroundColor','b');
    case '9' 
        set(handles.TicTacToe9,'string','O','BackgroundColor','b');
    otherwise 
        h = msgbox('YOU BROKE MY CODE :('); 
end

handles = CheckIfOver(handles);

set(handles.InstructionBox,'string','Please make your next move...Choose carefully','ForegroundColor','b')

end