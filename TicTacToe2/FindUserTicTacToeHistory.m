function [UserColumn,UserHistory,TicTacToe2Stats] = FindUserTicTacToeHistory(TicTacToe2Stats,PlayerName)
%  Christopher Curran, East Carolina University
%  (Started October 5, 2016; Last Edited - October 6, 2016)
%  For MATLAB Class - Due October 6, 2016
%
%  calling - [ UserColumn, UserHistory, TicTacToe2Stats ] = FindUserTicTacToeHistory( TicTacToe2Stats, PlayerName )
%  
%  This function will load the .mat file containing the data matrix of results from all previous TicTacToe2 users  
%  Then it will load the results from the current user in order to display
%  the users Win Loss and Tie record
  
%  Inputs
%  --------
%  TicTacToeGame2Stats  - Data matrix containing results
%  PlayerName           - Current user's Player Name
%  
%  
%  Outputs
%  --------
%  UserColumn - Column number in TicTacToe2Stats corresponding to PlayerName
%  UserHistory - 3 x 1 matrix of the data in UserColumn
%               - Row 1 = User Wins
%               - Row 2 = CPU Wins
%               - Row 3 = Ties
%  
%  
%  Other Functions Called
%  -----------------------
%  
% 
%  variables
%  ----------
%  UserColumn - Column number in TicTacToe2Stats corresponding to PlayerName
%  ProperUser - 1 x 4 column of data in the corresponding column to the user name

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %                                                     %
  %  Search for string in Row 1 to match PlayerName     %
  %     or "2eoTcaTciT" - which was entered as default  %
  %                                                     %
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

for UserColumn = 1:length(TicTacToe2Stats)

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %                                                            %
  %  If string matches PlayerName,                             %
  %       Set ProperUser to the values of the matching column  %
  %       Set User History equal to rows 2:4                   %
  %       Break out of for loop to avoid running through       %
  %         rest of TicTacToe2Stats                            %
  %                                                            %
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    if strcmp(TicTacToe2Stats(1,UserColumn),PlayerName) == 1
        ProperUser = TicTacToe2Stats(:,UserColumn);
        UserHistory = ProperUser(2:4);
        break

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %                                                            %
  %  If string matches default,                                %
  %       Set Row 1 of that column equal to PlayerName string  %
  %       Set ProperUser to the values of the matching column  %
  %       Set User History equal to rows 2:4                   %
  %       Break out of for loop to avoid running through       %
  %         rest of TicTacToe2Stats                            %
  %                                                            %
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  
    elseif strcmp(TicTacToe2Stats(1,UserColumn),{'2eoTcaTciT'}) == 1
        TicTacToe2Stats(1,UserColumn) = PlayerName;
        ProperUser = TicTacToe2Stats(:,UserColumn);
        UserHistory = ProperUser(2:4);
        break
    else
    end
    
end


end