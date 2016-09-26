function handles = SmartComputersTurn(handles)
%  Christopher Curran, East Carolina University
%  (Started September 20, 2016; Last Edited - September 26, 2016)
%  For MATLAB Class - Due September 27, 2016
%
%  calling - [handles] = SmartComputersTurn(handles)
%  
%  This code is a sequence of switch and if conditionals to allow the computer to make the best moves in the TicTacToeGame GUI code.
%  The computer will not lose when using this code
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
%  ComputerMove - random soace from available squares if not strategic move to be made
%  
%  

% Computer's second turn

switch length(handles.OpenSquares) 
    case 7 
        % If opponent chooses side on first move
        if isequal(get(handles.TicTacToe2,'string'),'X') | isequal(get(handles.TicTacToe4,'string'),'X') | isequal(get(handles.TicTacToe6,'string'),'X') | isequal(get(handles.TicTacToe8,'string'),'X')
            set(handles.TicTacToe9,'string','O','BackgroundColor','b');
        % If opponent chooses corner on first move
        elseif isequal(get(handles.TicTacToe1,'string'),'X') && isequal(get(handles.TicTacToe9,'string'),'9')
            set(handles.TicTacToe9,'string','O','BackgroundColor','b');
        elseif isequal(get(handles.TicTacToe3,'string'),'X') && isequal(get(handles.TicTacToe7,'string'),'7')
            set(handles.TicTacToe7,'string','O','BackgroundColor','b');
        elseif isequal(get(handles.TicTacToe7,'string'),'X') && isequal(get(handles.TicTacToe3,'string'),'3')
            set(handles.TicTacToe3,'string','O','BackgroundColor','b');
        elseif isequal(get(handles.TicTacToe9,'string'),'X') && isequal(get(handles.TicTacToe1,'string'),'1')
            set(handles.TicTacToe1,'string','O','BackgroundColor','b');
        end
        
%  Computer's third turn

    case 5
        % Based off of opponent choosing 2,4,6, or 8 on first move and not blocking computer win
        if isequal(get(handles.TicTacToe9,'string'),'O') && isequal(get(handles.TicTacToe1,'string'),'1');
                set(handles.TicTacToe1,'string','O','BackgroundColor','b')
        % If opponent blocks computer diagonal win
        else
            if isequal(get(handles.TicTacToe1,'string'),'X')
                if isequal(get(handles.TicTacToe2,'string'),'X')
                    set(handles.TicTacToe3,'string','O','BackgroundColor','b');
                elseif isequal(get(handles.TicTacToe3,'string'),'X')
                    set(handles.TicTacToe2,'string','O','BackgroundColor','b');
                elseif isequal(get(handles.TicTacToe4,'string'),'X')
                    set(handles.TicTacToe7,'string','O','BackgroundColor','b');
                elseif isequal(get(handles.TicTacToe6,'string'),'X')
                    set(handles.TicTacToe7,'string','O','BackgroundColor','b');
                elseif isequal(get(handles.TicTacToe7,'string'),'X')
                    set(handles.TicTacToe4,'string','O','BackgroundColor','b');
                elseif isequal(get(handles.TicTacToe8,'string'),'X')
                    set(handles.TicTacToe3,'string','O','BackgroundColor','b');
                end
            elseif isequal(get(handles.TicTacToe2,'string'),'X')
                if isequal(get(handles.TicTacToe3,'string'),'X')
                    set(handles.TicTacToe1,'string','O','BackgroundColor','b');
                elseif isequal(get(handles.TicTacToe7,'string'),'X')
                    set(handles.TicTacToe9,'string','O','BackgroundColor','b');
                elseif isequal(get(handles.TicTacToe9,'string'),'X')
                    set(handles.TicTacToe7,'string','O','BackgroundColor','b');
                end
            elseif isequal(get(handles.TicTacToe3,'string'),'X')
                if isequal(get(handles.TicTacToe4,'string'),'X')
                    set(handles.TicTacToe9,'string','O','BackgroundColor','b');
                elseif isequal(get(handles.TicTacToe6,'string'),'X')
                    set(handles.TicTacToe9,'string','O','BackgroundColor','b');
                elseif isequal(get(handles.TicTacToe9,'string'),'X')
                    set(handles.TicTacToe6,'string','O','BackgroundColor','b');
                end
            elseif isequal(get(handles.TicTacToe4,'string'),'X')
                if isequal(get(handles.TicTacToe7,'string'),'X')
                    set(handles.TicTacToe1,'string','O','BackgroundColor','b');
                elseif isequal(get(handles.TicTacToe9,'string'),'X')
                    set(handles.TicTacToe3,'string','O','BackgroundColor','b');
                end
            elseif isequal(get(handles.TicTacToe6,'string'),'X')
                if isequal(get(handles.TicTacToe7,'string'),'X')
                    set(handles.TicTacToe1,'string','O','BackgroundColor','b');
                elseif isequal(get(handles.TicTacToe9,'string'),'X')
                    set(handles.TicTacToe3,'string','O','BackgroundColor','b');
                end
            elseif isequal(get(handles.TicTacToe7,'string'),'X')
                if isequal(get(handles.TicTacToe8,'string'),'X')
                    set(handles.TicTacToe9,'string','O','BackgroundColor','b');
                elseif isequal(get(handles.TicTacToe9,'string'),'X')
                    set(handles.TicTacToe8,'string','O','BackgroundColor','b');
                end
            elseif isequal(get(handles.TicTacToe8,'string'),'X') && isequal(get(handles.TicTacToe9,'string'),'X')
                set(handles.TicTacToe7,'string','O','BackgroundColor','b');
            end
        end
        
%  Computer's fourth turn
        
    case 3
        % Based off computer having 1,3,5
        if isequal(get(handles.TicTacToe1,'string'),'O') && isequal(get(handles.TicTacToe3,'string'),'O') && isequal(get(handles.TicTacToe5,'string'),'O')
            if isequal(get(handles.TicTacToe2,'string'),'2')
                set(handles.TicTacToe2,'string','O','BackgroundColor','b');
            else
                set(handles.TicTacToe9,'string','O','BackgroundColor','b');
            end
        % Based off computer having 1,5,7
        elseif isequal(get(handles.TicTacToe1,'string'),'O') && isequal(get(handles.TicTacToe5,'string'),'O') && isequal(get(handles.TicTacToe7,'string'),'O') && (get(handles.TicTacToe3,'string') ~= 'O');
            if isequal(get(handles.TicTacToe4,'string'),'4')
                set(handles.TicTacToe4,'string','O','BackgroundColor','b');
            else
                set(handles.TicTacToe3,'string','O','BackgroundColor','b');
            end
        % Based off computer having 3,5,9
        elseif isequal(get(handles.TicTacToe3,'string'),'O') && isequal(get(handles.TicTacToe5,'string'),'O') && isequal(get(handles.TicTacToe9,'string'),'O') && (get(handles.TicTacToe1,'string') ~= 'O');
            if isequal(get(handles.TicTacToe6,'string'),'6')
                set(handles.TicTacToe6,'string','O','BackgroundColor','b');
            else
                set(handles.TicTacToe7,'string','O','BackgroundColor','b');
            end
        % Based off computer having 5,7,9
        elseif isequal(get(handles.TicTacToe5,'string'),'O') && isequal(get(handles.TicTacToe7,'string'),'O') && isequal(get(handles.TicTacToe9,'string'),'O') && (get(handles.TicTacToe3,'string') ~= 'O');
            if isequal(get(handles.TicTacToe3,'string'),'3')
                set(handles.TicTacToe3,'string','O','BackgroundColor','b');
            elseif isequal(get(handles.TicTacToe8,'string'),'X')
                set(handles.TicTacToe1,'string','O','BackgroundColor','b');
            else
                set(handles.TicTacToe8,'string','O','BackgroundColor','b');
            end
        % If Comp has chance to win across or down
        elseif (isequal(get(handles.TicTacToe2,'string'),'O') && isequal(get(handles.TicTacToe8,'string'),'8') && (((get(handles.TicTacToe1,'string') ~= 'O') | (get(handles.TicTacToe3,'string') ~= 'O'))) == 1);
            set(handles.TicTacToe8,'string','O','BackgroundColor','b');
        elseif (isequal(get(handles.TicTacToe8,'string'),'O') && isequal(get(handles.TicTacToe2,'string'),'2') && (((get(handles.TicTacToe7,'string') ~= 'O') | (get(handles.TicTacToe9,'string') ~= 'O'))) == 1);
            set(handles.TicTacToe2,'string','O','BackgroundColor','b');
        elseif (isequal(get(handles.TicTacToe4,'string'),'O') && isequal(get(handles.TicTacToe6,'string'),'6') && (((get(handles.TicTacToe1,'string') ~= 'O') | (get(handles.TicTacToe7,'string') ~= 'O'))) == 1);
            set(handles.TicTacToe6,'string','O','BackgroundColor','b');
        elseif (isequal(get(handles.TicTacToe6,'string'),'O') && isequal(get(handles.TicTacToe4,'string'),'4') && (((get(handles.TicTacToe3,'string') ~= 'O') | (get(handles.TicTacToe9,'string') ~= 'O'))) == 1);
            set(handles.TicTacToe4,'string','O','BackgroundColor','b');
        else
      % If no chance to win, comp chooses any remaining square at random
            ComputerMove = datasample(handles.OpenSquares,1);
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
                end
        end
         
% Computer's fifth turn
% If game reaches this point, comp takes the last possible square

    case 1
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
        end
end