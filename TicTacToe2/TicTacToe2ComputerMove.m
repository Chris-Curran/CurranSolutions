function Gameboard = TicTacToe2ComputerMove(Gameboard)   
   Spaces = [Gameboard(1,1),Gameboard(1,4),Gameboard(1,7),Gameboard(3,1),Gameboard(3,4),Gameboard(3,7),Gameboard(5,1),Gameboard(5,4),Gameboard(5,7)];
   OpenSpaces = strrep(Spaces,'X','');
   OpenSpaces = strrep(OpenSpaces,'O','');
   OpenSpaces = OpenSpaces';
   length(OpenSpaces);
   
   
   switch length(OpenSpaces)
       case 7
           disp(' ')
           disp(' ')
           disp('Computer''s Second Move:')
           
        % If opponent chooses side on first move
        if Gameboard(1,4) == 'X' | Gameboard(3,1) == 'X' | Gameboard(3,7) == 'X' | Gameboard(5,4) == 'X'
            Gameboard(5,7) = 'O';
        % If opponent chooses corner on first move
        elseif Gameboard(1,1) == 'X' && Gameboard(5,7) == '9'
            Gameboard(5,7) = 'O';
        elseif Gameboard(1,7) == 'X' && Gameboard(5,1) == '7'
            Gameboard(5,1) = 'O';
        elseif Gameboard(5,1) == 'X' && Gameboard(1,7) == '3'
            Gameboard(1,7) = 'O';
        elseif Gameboard(5,7) == 'X' && Gameboard(1,1) == '1'
            Gameboard(1,1) = 'O';
        end
        
       case 5
           disp(' ')
           disp(' ')
           disp('Computer''s Third Move:')
        % Based off of opponent choosing 2,4,6, or 8 on first move and not blocking computer win
        if Gameboard(5,7) == 'O' && Gameboard(1,1) == '1';
                Gameboard(1,1) = 'O';
        % If opponent blocks computer diagonal win
        else
            if Gameboard(1,1) == 'X'
                if Gameboard(1,4) == 'X'
                    Gameboard(1,7) = 'O';
                elseif Gameboard(1,7) == 'X'
                    Gameboard(1,4) = 'O';
                elseif Gameboard(3,1) == 'X'
                    Gameboard(5,1) = 'O';
                elseif Gameboard(3,7) == 'X'
                    Gameboard(5,1) = 'O';
                elseif Gameboard(5,1) == 'X'
                    Gameboard(3,1) = 'O';
                elseif Gameboard(5,4) == 'X'
                    Gameboard(1,7) = 'O';
                end
            elseif Gameboard(1,4) == 'X'
                if Gameboard(1,7) == 'X'
                    Gameboard(1,1) = 'O';
                elseif Gameboard(5,1) == 'X'
                    Gameboard(5,7) = 'O';
                elseif Gameboard(5,7) == 'X'
                    Gameboard(5,1) = 'O';
                end
            elseif Gameboard(1,7) == 'X'
                if Gameboard(3,1) == 'X'
                    Gameboard(5,7) = 'O';
                elseif Gameboard(3,7) == 'X'
                    Gameboard(5,7) = 'O';
                elseif Gameboard(5,7) == 'X'
                    Gameboard(3,7) = 'O';
                end
            elseif Gameboard(3,1) == 'X'
                if Gameboard(5,1) == 'X'
                    Gameboard(1,1) = 'O';
                elseif Gameboard(5,7) == 'X'
                    Gameboard(1,7) = 'O';
                end
            elseif Gameboard(3,7) == 'X'
                if Gameboard(5,1) == 'X'
                    Gameboard(1,1) = 'O';
                elseif Gameboard(5,7) == 'X'
                    Gameboard(1,7) = 'O';
                end
            elseif Gameboard(5,1) == 'X'
                if Gameboard(5,4) == 'X'
                    Gameboard(5,7) = 'O';
                elseif Gameboard(5,7) == 'X'
                    Gameboard(5,4) = 'O';
                end
            elseif Gameboard(5,4) == 'X' && Gameboard(5,7) == 'X'
                Gameboard(5,1) = 'O';
            end
        end
       
       case 3
           disp(' ')
           disp(' ')
           disp('Computer''s Fourth Move:')
       
            % Based off computer having 1,3,5
        if Gameboard(1,1) == 'O' && Gameboard(1,7) == 'O' && Gameboard(3,4) == 'O'
            if Gameboard(1,4) == '2'
                Gameboard(1,4) = 'O';
            else
                Gameboard(5,7) = 'O';
            end
        % Based off computer having 1,5,7
        elseif Gameboard(1,1) == 'O' && Gameboard(3,4) == 'O' && Gameboard(5,1) == 'O' && Gameboard(1,7) ~= 'O';
            if Gameboard(3,1) == '4'
                Gameboard(3,1) = 'O';
            else
                Gameboard(1,7) = 'O';
            end
        % Based off computer having 3,5,9
        elseif Gameboard(1,7) == 'O' && Gameboard(3,4) == 'O' && Gameboard(5,7) == 'O' && Gameboard(1,1) ~= 'O';
            if Gameboard(3,7) == '6'
                Gameboard(3,7) = 'O';
            else
                Gameboard(5,1) = 'O';
            end
        % Based off computer having 5,7,9
        elseif Gameboard(3,4) == 'O' && Gameboard(5,1) == 'O' && Gameboard(5,7) == 'O' && Gameboard(1,7) ~= 'O';
            if Gameboard(1,7) == '3'
                Gameboard(1,7) = 'O';
            elseif Gameboard(5,4) == 'X'
                Gameboard(1,1) = 'O';
            else
                Gameboard(5,4) = 'O';
            end
        % If Comp has chance to win across or down
        elseif (Gameboard(1,4) == 'O' && Gameboard(5,4) == '8' && Gameboard(1,1) ~= 'O' | Gameboard(1,7) ~= 'O' == 1);
            Gameboard(5,4) = 'O';
        elseif (Gameboard(5,4) == 'O' && Gameboard(1,4) == '2' && Gameboard(5,1) ~= 'O' | Gameboard(5,7) ~= 'O' == 1);
            Gameboard(1,4) = 'O';
        elseif (Gameboard(3,1) == 'O' && Gameboard(3,7) == '6' && Gameboard(1,1) ~= 'O' | Gameboard(5,1) ~= 'O' == 1);
            Gameboard(3,7) = 'O';
        elseif (Gameboard(3,7) == 'O' && Gameboard(3,1) == '4' && Gameboard(1,7) ~= 'O' | Gameboard(5,7) ~= 'O' == 1);
            Gameboard(3,1) = 'O';
        else
      % If no chance to win, comp chooses any remaining square at random
            ComputerMove = datasample(OpenSpaces,1);
                switch (ComputerMove) 
                    case '1' 
                        Gameboard(1,1) = 'O';
                    case '2' 
                        Gameboard(1,4) = 'O';
                    case '3' 
                        Gameboard(1,7) = 'O'; 
                    case '4' 
                        Gameboard(3,1) = 'O'; 
                    case '5' 
                        Gameboard(3,4) = 'O';
                    case '6' 
                        Gameboard(3,7) = 'O';
                    case '7' 
                        Gameboard(5,1) = 'O';
                    case '8' 
                        Gameboard(5,4) = 'O';
                    case '9' 
                        Gameboard(5,7) = 'O';
                end
        end
           
       case 1
           disp(' ')
           disp(' ')
           disp('Computer''s Fifth Move:')
           
        ComputerMove = datasample(OpenSpaces,1);
        switch (ComputerMove) 
            case '1' 
                Gameboard(1,1) = 'O';
            case '2' 
                Gameboard(1,4) = 'O';
            case '3' 
                Gameboard(1,7) = 'O'; 
            case '4' 
                Gameboard(3,1) = 'O'; 
            case '5' 
                Gameboard(3,4) = 'O';
            case '6' 
                Gameboard(3,7) = 'O';
            case '7' 
                Gameboard(5,1) = 'O';
            case '8' 
                Gameboard(5,4) = 'O';
            case '9' 
                Gameboard(5,7) = 'O';
        end
   end
disp(' ')
disp(Gameboard)
end