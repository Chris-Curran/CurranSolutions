function TicTacToe2Dialogs(varargin)
%  Christopher Curran, East Carolina University
%  (Started Octoberr 3, 2016; Last Edited - October 4, 2016)
%  For MATLAB Class - Due October 6, 2016
%
%  calling - TicTacToe2Dialogs( varargin )
%  
%  This function will trigger subfunctions containing various dialogs for the TicTacToe2Game  
%  
%  
%  Inputs
%  --------
%  varargin{1} - string matching which dialog subfunction
%  varargin{2} - PlayerName variable containing string
%  varargin{3} - UserHistory - 3x1 array of user's past success with TicTacToe2
%  
%  Outputs
%  --------
%  
%  
%  Other Functions Called
%  -----------------------
%  WelcomeDialog
%  PlayAgainDialog
%  QuitAfter1Dialog
%  QuitDialog
% 
%  variables
%  ----------
%  

Dialog = varargin{1};

if nargin > 1
    PlayerName = varargin{2};
    UserHistory = varargin{3};
end

switch Dialog
    case 'Welcome'
        WelcomeDialog(PlayerName,UserHistory);
    case 'PlayAgain'
        PlayAgainDialog
    case 'QuitAfter1'
        QuitAfter1Dialog
    case 'Quit'
        QuitDialog
end

end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                        %
%  WelcomeDialog - displays a set of instructions for the user after     %
%   they enter their name and propr to the game beginning                %
%                                                                        %
%  input                                                                 %
%  ----------                                                            %
%  PlayerName                                                            %
%  UserHistory                                                           %
%                                                                        %
%  variables                                                             %
%  ----------                                                            %
%  UserWins     -     number of wins the user has had in TicTacToe2      %
%  CPUWins      -     number of losses the user has had in TicTacToe2    %
%  CatsGames    -     number of ties the user has had in TicTacToe2      %
%  GameNumber   -     total number of games the user has previously had  %
%                                                                        %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


function WelcomeDialog(PlayerName,UserHistory)

    UserWins = UserHistory(1);
    CPUWins = UserHistory(2);
    CatsGames = UserHistory(3);
    GameNumber = sum(str2double(UserHistory)) + 1; 


    if GameNumber == 1;
        Welcome = [strcat({'Welcome, '},PlayerName,{'!'});...
            strcat({'You''re the first '},PlayerName,{' to play TicTacToe2'})];
    else
        Welcome = [{' '};...
            strcat({'Welcome, '},PlayerName,{'!'});...
            strcat({'Here''s how players named '},PlayerName,{' have faired in the past on TicTacToe2'});...
            {' '};...
            {'            Wins   Losses   Ties'};...
            strcat({'               '},char(UserWins),{'          '},char(CPUWins),{'         '},char(CatsGames))];
    end
    
    WelcomeDialogBox = dialog('Position',[500 200 275 600],'Name','Welcome to your demise!');
    txt = uicontrol('Parent',WelcomeDialogBox,...
               'Style','text',...
               'Position',[50 50 175 500],...
               'String',{char(Welcome);...
               '';...
               'The gameboard for this Tic Tac Toe game will be diplayed in your command window.';...
               '';...
               'This is the starting gameboard:';...
               '';...
               '1   2   3';...
               '';...
               '4   5   6';...
               '';...
               '7   8   9';...
               '';...
               'When it is your turn, a dialog box will appear with a list of options for you to choose your next move from';...
               '';...
               'Please wait while the computer makes it''s first move'});
    btn = uicontrol('Parent',WelcomeDialogBox,...
               'Position',[100 20 75 25],...
               'String','Let''s Play!',...
               'Callback','delete(gcf)');
    uiwait(WelcomeDialogBox)
    pause(2)
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                        %
%  PlayAgainDialog - displays a funny dialog box and picture if the user %
%   should choose to play again                                          %
%                                                                        %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function PlayAgainDialog
    figure('Name','PlayAgainImage')
    ImageChoice = randi([1 7]);
    imshow(strcat('PlayAgainImage',num2str(ImageChoice),'.jpg'));
    hFig = gcf;
    hAx  = gca;
    set(hFig,'units','normalized','outerposition',[0 0 1 1]);
    set(hAx,'Unit','normalized','Position',[0 0 1 1]);
    set(hFig,'menubar','none')
    set(hFig,'NumberTitle','off');
            
    PlayAgain = dialog('Position',[500 600 275 200],'Name','Why are you doing this?');
    txt = uicontrol('Parent',PlayAgain,...
               'Style','text',...
               'Position',[50 50 175 100],...
               'String',{'You must really hate yourself,';'';'';'But Good Luck!'});
    btn = uicontrol('Parent',PlayAgain,...
               'Position',[75 20 125 25],...
               'String','Yeah Yeah, let''s go',...
               'Callback','delete(gcf)');
    uiwait(PlayAgain)
    close('PlayAgainImage')
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                        %
%  QuitAfter1Dialog - displays a funny dialog box & picture if the user  %
%   chooses to quit after their first game                               %
%                                                                        %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function QuitAfter1Dialog
    figure('Name','QuitImage')
    ImageChoice = randi([1 7]);
    imshow(strcat('QuitImage',num2str(ImageChoice),'.jpg'));
    hFig = gcf;
    hAx  = gca;
    set(hFig,'units','normalized','outerposition',[0 0 1 1]);
    set(hAx,'Unit','normalized','Position',[0 0 1 1]);
    set(hFig,'menubar','none')
    set(hFig,'NumberTitle','off');
    
    QuitAfter1 = dialog('Position',[600 600 300 155],'Name','Good Man Charlie Brown');
    txt = uicontrol('Parent',QuitAfter1,...
               'Style','text',...
               'Position',[25 75 250 100],...
               'String',{'Congratulations!';'';'You are making smart decisions from the very beginning!';'';'Thanks for trying anyways!'});

    btn = uicontrol('Parent',QuitAfter1,...
               'Position',[50 20 200 25],...
               'String','GET ME OUT OF HERE!',...
               'Callback','delete(gcf)');
    uiwait(QuitAfter1)
    close('QuitImage')
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                        %
%  QuitDialog - displays a funny dialog and picture if user chooses to   %
%   quit after a game that is not their first game                       %
%                                                                        %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function QuitDialog
    figure('Name','QuitImage')
    ImageChoice = randi([1 7]);
    imshow(strcat('QuitImage',num2str(ImageChoice),'.jpg'));
    hFig = gcf;
    hAx  = gca;
    set(hFig,'units','normalized','outerposition',[0 0 1 1]);
    set(hAx,'Unit','normalized','Position',[0 0 1 1]);
    set(hFig,'menubar','none')
    set(hFig,'NumberTitle','off');
    
    Quit = dialog('Position',[600 600 300 155],'Name','Good Man Charlie Brown');
    txt = uicontrol('Parent',Quit,...
               'Style','text',...
               'Position',[25 75 250 50],...
               'String',{'Congratulations!';'';'It''s good to see you have learned to be wiser.';'';'Thanks for trying anyways!'});

    btn = uicontrol('Parent',Quit,...
               'Position',[50 20 200 25],...
               'String','Should Have Learned The First Time',...
               'Callback','delete(gcf)');
    uiwait(Quit)
    close('QuitImage')
end
