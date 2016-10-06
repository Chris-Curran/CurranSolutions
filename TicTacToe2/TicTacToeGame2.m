%%  TicTacToeGame2
%  
%  Christopher Curran, East Carolina University
%  October 6th, 2016
%  
%  This script will launch an interactive TicTac Toe game in which users
%  will compete against the computer in a game of Tic Tac Toe. Try as they
%  may, users will not be successful. The computer has the first move and
%  will either win or lead the game to a tie. 

%  This code was written to fulfill the requirements of Assignment 4 for
%  the ECU class KINE 6803.
%  
%  
%  calling
%  --------
%  TicTacToeGame2
%  
%  
%  inputs
%  --------
%  
%  
%  outputs
%  --------
%  
%  
%  other functions called
%  --------
%  [ UserColumn, UserHistory, TicTacToe2Stats ]  =  FindUserTicTacToeHistory( TicTacToe2Stats, PlayerName )
%  [ ]  =  TicTacToe2Dialogs( varargin )
%  [ Gameboard ]  =  TicTacToe2PlayerMove( Gameboard, PlayerName )
%  [ Gameboard ]  =  TicTacToe2ComputerMove( Gameboard )
%  [ GameOver ]  =  CheckIfOver( Gameboard )
%  
%  
%  variables
%  --------
%  id                   - identification of warning to be hidden in this script
%  defaultWantToPlay    - Variable corresponding to YES pushbutton in WantToPlay questdlg
%                       - Sets return key press to default to YES for WantToPlay
%  WantToPlay           - response from question dialog asking user if they would like to play Tic Tac Toe
%                       - 'YES' or 'NO'
%  PlayerName           - String array of user input from inputdlg asking them to type their name
%  TicTacToe2Stats      - 4 x 10,000 cell Matrix of game outcomes from TicTacToe2 
%                       - Row 1 contains Player Names
%                       - Row 2 contains number of User Wins for that player
%                       - Row 3 contains number of CPU wins against that player
%                       - Row 4 contains number of cats games that that player was involved with
%  UserColumn           - Column number in TicTacToe2Stats corresponding to the current player
%  UserHistory          - 3 x 1 cell array corresponding to the [UserWins, CPUWins, CatsGames] for the current Player
%  GameOver             - Variable describing whether or not the game has ended, default value set to 0.
%                       - changes to 1 if a winning move is made, or 2 if a tie is reached
%  Gameboard            - 5 x 7 cell matrix containing the Tic Tac Toe gameboard
%  

%% Opening Processes

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %                                                %
  %  Clear the workspace and the command window    %
  %  Set default answer for WantToPlay to be YES   %
  %                                                %
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all
clc

defaultWantToPlay = 'YES';


  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %                                                %
  %  Ask user if they want to play Tic Tac Toe     %
  %  If YES, ask user to enter their name          %
  %                                                %
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


WantToPlay = questdlg({'Thank you for running "TicTacToe2"!';'Would you like to try your luck in a game of Tic Tac Toe against the computer?'},'Want to play Tic Tac Toe?','YES','NO',defaultWantToPlay);
if strcmp(WantToPlay,'YES') == 1;
    PlayerName = inputdlg('Please enter your name:');
end

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %                                                %
  %  While the user wants to keep playing:         %
  %    Stay in while loop of gameplay below        %
  %    Check if winning move made after CPU move   %
  %    Have some fun with the user                 %
  %    Restart game if user wants to keep playing  %
  %                                                %
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

while strcmp(WantToPlay,'YES') == 1;

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %                                                %
  %  Clear command window (necessary on restart)   %
  %  If YES, ask user to enter their name          %
  %                                                %
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    clc
    
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %                                                   %
  %  Load TicTacToe2Stats.mat to TicTacToe2Stats      %
  %  Run FindUserTicTacToeHistory to find             %
  %    previous stats for the current player          %
  %  Run TicTacToe2Dialogs to Display Welcome Dialog  %
  %                                                   %
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    load('TicTacToe2Stats.mat');
    
    [UserColumn,UserHistory,TicTacToe2Stats] = FindUserTicTacToeHistory(TicTacToe2Stats,PlayerName);
    
    TicTacToe2Dialogs('Welcome',PlayerName,UserHistory)
   
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %                                                   %
  %             START GAMEPLAY SEQUENCE               %
  %                                                   %
  %  Set GameOver default value to 0                  %
  %  Display starting gameboard w/ numbers in spaces  %
  %  Dsiplay Computer's first move and Gameboard      %
  %                                                   %
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    GameOver = 0;

    Gameboard = ['1','  ','2','  ','3';' ','  ',' ','  ',' ';'4','  ','5','  ','6';' ','  ',' ','  ',' ';'7','  ','8','  ','9'];
    disp(' ')
    disp('Starting Gameboard:')
    disp(' ')
    disp(Gameboard)
    disp(' ')
    disp(' ')
    pause(1)
    
    disp('Computer''s First Move:')
    disp(' ')
    Gameboard = ['1','  ','2','  ','3';' ','  ',' ','  ',' ';'4','  ','O','  ','6';' ','  ',' ','  ',' ';'7','  ','8','  ','9'];
    disp(Gameboard)
    

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %                                                                  %
  %  Run up to 4 iterations of:                                      %
  %     Player's turn and then CPU turn                              %
  %     Display the gameboard after each turn                        %
  %     Run CheckIfOver after each CPU turn to see if                %
  %       winning move or last possible move was made                %
  %     Break out of for loop if win or tie is reached               %
  %     If CPU wins, add loss to Player's column in TicTacToe2Stats  %
  %     If tie, add tie to Player's column in TicTacToe2Stats        %
  %                                                                  %
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  
    for i = 1:4       
        Gameboard = TicTacToe2PlayerMove(Gameboard,PlayerName);
        pause(1)
        Gameboard = TicTacToe2ComputerMove(Gameboard);
        pause(1)
        GameOver = CheckIfOver(Gameboard);
        if GameOver == 1
            TicTacToe2Stats(3,UserColumn) = {num2str(str2double(TicTacToe2Stats(3,UserColumn)) + 1)};
            break
        elseif GameOver == 2
            TicTacToe2Stats(4,UserColumn) = {num2str(str2double(TicTacToe2Stats(4,UserColumn)) + 1)};
            break
        end
    end
   
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %                                                                  %
  %  Ask user if they want to play again                             %
  %  If yes, run TicTacToe2Dialogs('PlayAgain')                      %
  %  If no, run appropriate TicTacToe2Dialogs based on UserHistory   %
  %                                                                  %
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    WantToPlay = questdlg({'Thank you for attempting to top our computer''s intelligence.';'Would you like to play again?'},'Try again?','YES','NO',defaultWantToPlay);
    if strcmp(WantToPlay,'YES') == 1;
        TicTacToe2Dialogs('PlayAgain')
        Gameboard = ['1','  ','2','  ','3';' ','  ',' ','  ',' ';'4','  ','5','  ','6';' ','  ',' ','  ',' ';'7','  ','8','  ','9'];
    else
        if sum(str2double(UserHistory)) == 0
            TicTacToe2Dialogs('QuitAfter1');
        else
            TicTacToe2Dialogs('Quit');
        end
    end
   
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %                                                                  %
  %  Resave TicTacToe2Stats.mat with updated user stats              %
  %  Clear specific variables before to allow restart run smoother   %
  %                                                                  %
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    save('TicTacToe2Stats.mat','TicTacToe2Stats')
    clear('UserHistory','TicTacToe2Stats','UserColumn')
    
end

