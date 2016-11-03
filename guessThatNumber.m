function guessThatNumber()  % *** WARNING: CONTAINS INTENTIONAL BUGS! ***
%---------------------------------------------------------------
%       USAGE: guessThatNumber()
%
%        NAME: Christopher Curran
%
%         DUE: November 3
%
%
% DESCRIPTION: This program is supposed to allow the user to play
%              the Number Guessing Game, however, it contains bugs.
%              Your job is to find, correct, and mark the errors with
%              comments describing the bug, how you found it, 
%              and how you corrected it. Correct the bugs and submit this
%              corrected file on github.
%
%      INPUTS: None
%
%     OUTPUTS: None
%
%---------------------------------------------------------------

beginner = 1;               % beginner level #
moderate = 2;               % moderate level #
advanced = 3;               % advanced level #
beginnerHighest = 10;       % highest possible number for beginner
moderateHighest = 100;      % highest possible number for moderate
advancedHighest = 1000;     % highest possible number for advanced

% clear screen and display game introduction

clc()
fprintf(['Guess That Number Game (buggy)\n\n', ...
'This program plays the game of Guess That Number in which you have to guess\n', ...
'a secret number.  After each guess you will be told whether your \n', ...
'guess is too high, too low, or correct.\n\n'])

% Get level of play (1-3) from user

fprintf('Please select one of the three levels of play:\n')
fprintf('   1) Beginner (range is 1 to %d)\n', beginnerHighest)
fprintf('   2) Moderate (range is 1 to %d)\n', moderateHighest)
fprintf('   3) Advanced (range is 1 to %d)\n', advancedHighest)

level = input('Enter level (1-3): '); 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                                    %
%  Bug #1                                                                            %
%                                                                                    %
%  ORIGINAL CODE: while level ~= beginner || level ~= moderate || level ~= advanced  %
%                                                                                    %
%  BUG:         || operator causes correct inputs to still be sent through loop      %
%  FOUND:       Entering levels 1-3 produced string contained in while loop          %
%  SOLUTION:    use && operator                                                      %
%  FIXED CODE:  while level ~= beginner && level ~= moderate && level ~= advanced    %
%                                                                                    %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

while level ~= beginner && level ~= moderate && level ~= advanced
    fprintf('Sorry, that is not a valid level selection.\n')
    level = input('Please re-enter a level of play (1-3): ');
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                       %
%  Bug #2                                                               %
%                                                                       %
%  ORIGINAL CODE: if level = beginner                                   %
%                                                                       %
%  BUG:         Single = attmepts to assign value of beginner to level  %
%               does not check if level is equal to beginner.           %
%  FOUND:       Script would not run because of syntax error            %
%  SOLUTION:    use isequal to compare values of two arguments.         %
%  FIXED CODE:  if isequal(level,beginner)                              %
%                                                                       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% set highest secret number based on level selected

if isequal(level,beginner)
    highest = beginnerHighest;
elseif level == moderate
    highest = moderateHighest;
else
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                       %
%  Bug #3                                                               %
%                                                                       %
%  ORIGINAL CODE: highest = advancedhighest                             %
%                                                                       %
%  BUG:         advancedhighest is undefined variable name              %
%  FOUND:       error found upon advanced level selection               %
%  SOLUTION:    Variable name should be advancedHighest                 %
%  FIXED CODE:  highest = advancedHighest                               %
%                                                                       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    highest = advancedHighest;
end

% randomly select secret number between 1 and highest for level of play

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                       %
%  Bug #4                                                               %
%                                                                       %
%  ORIGINAL CODE: secretNumber = floor(rand() + 1 * highest);           %
%                                                                       %
%  BUG:         adding 1*highest to the random value then rounding down %
%               will always result secretNumber being equal to highest  %
%  FOUND:       evaluating why userGuess answer was giving wrong result %
%  SOLUTION:    multiply random value * highest, ignore the + 1         %
%  FIXED CODE:  secretNumber = floor(rand() * highest);                 %
%                                                                       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

secretNumber = floor(rand() * highest);     

% initialize number of guesses and User_guess

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                       %
%  Bug #5                                                               %
%                                                                       %
%  ORIGINAL CODE: numOfTries = 1;                                       %
%                                                                       %
%  BUG:         initializing numOfTries at 1 prevents user from winning %
%               with a numOfTries of 1 because of counter added in line %
%               140.                                                    %
%  FOUND:       Tested code so that user won on first guess and string  %
%               showed that user won on 2 tries                         %
%  SOLUTION:    Initialize numOfTries with a value of 0                 %
%  FIXED CODE:  numofTries = 0;                                         %
%                                                                       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

numOfTries = 0;
userGuess = 0;

% repeatedly get user's guess until the user guesses correctly

while userGuess ~= secretNumber

% get a valid guess (an integer from 1-Highest) from the user
    fprintf('\nEnter a guess (1-%d): ', highest);
    userGuess = input('');
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                       %
%  Bug #6                                                               %
%                                                                       %
%  ORIGINAL CODE:  while userGuess < 1 || userGuess >= highest          %
%                                                                       %
%  BUG:         >= operator will prevent user from guessing highest     %
%  FOUND:       attmepted to guess highest value in range               %
%  SOLUTION:    remove = from operator  for highest                     %
%  FIXED CODE:  userGuess > highest                                     %
%                                                                       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    while userGuess < 1 || userGuess > highest
        fprintf('Sorry, that is not a valid guess.\nRe-enter a guess (1-%d): ', highest);
        userGuess = input(''); 
    end % of guess validation loop

    % add 1 to the number of guesses the user has made
    numOfTries = numOfTries + 1;
    
    % report whether the user's guess was high, low, or correct
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                       %
%  Bug #7                                                               %
%                                                                       %
%  ORIGINAL CODE: if userGuess > secretNumber                           %
%                                                                       %
%  BUG:         > operator used instead of < to test if user guess is   %
%               too low                                                 %
%  FOUND:       userGuess was always too low                            %
%  SOLUTION:    change > to <                                           %
%  FIXED CODE:  if userGuess < secretNumber                             %
%                                                                       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    if userGuess < secretNumber
        
        
        fprintf('Sorry, %d is too low.\n', userGuess);
    elseif userGuess > secretNumber 
        fprintf('Sorry, %d is too high.\n', userGuess);
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                       %
%  Bug #8                                                               %
%                                                                       %
%  ORIGINAL CODE: elseif usernumOfTries == 1                            %
%                                                                       %
%  BUG:         usernumOfTries is undefined variable name               %
%  FOUND:       error found upon correct userGuess                      %
%  SOLUTION:    Variable name should be numOfTries                      %
%  FIXED CODE:  elseif numOfTries == 1                                  %
%                                                                       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    elseif numOfTries == 1
        fprintf('\nLucky You!  You got it on your first try!\n\n');
    else
        fprintf('\nCongratulations!  You got %d in %d tries.\n\n', ...
            secretNumber,numOfTries);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                       %
%  Bug #9                                                               %
%                                                                       %
%  ORIGINAL CODE:                                                       %
%                                                                       %
%  BUG:         missing end command to close if statement checking if   %
%               user's guess was high, low, or correct                  %
%  FOUND:       Script would not run because of syntax error            %
%  SOLUTION:    insert end command to close if statement                %
%  FIXED CODE:  end                                                     %
%                                                                       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    % close if statement
    end
    
end  % of guessing while loop

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                       %
%  Bug #10                                                              %
%                                                                       %
%  ORIGINAL CODE: fprintf code below was inside of while loop           %
%                                                                       %
%  BUG:         line below printed after every single guess             %
%  FOUND:       after adding end to close function from line 1, all     %
%               guesses had Game Over script after them                 %
%  SOLUTION:    move Game Over script outside of guessing while loop    %
%  FIXED CODE:  fprintf code now below                                  %
%                                                                       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

fprintf('Game Over. Thanks for playing the Guess That Number game.\n\n');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                       %
%  Bug #11                                                              %
%                                                                       %
%  ORIGINAL CODE:                                                       %
%                                                                       %
%  BUG:         missing end command to end function guessThatNumber     %
%  FOUND:       Script would not run because of syntax error            %
%  SOLUTION:    insert end command to end function                      %
%  FIXED CODE:  end                                                     %
%                                                                       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

end % of function

% end of game