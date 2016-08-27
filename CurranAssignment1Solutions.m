%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment 1: Matlab Scavenger Hunt and HelloWorld
%
% Submitted by: Chris Curran
%
% Due: September 8, 2016
%
% Instructions: 

% There are two parts to this assignment. Part 1 deals with using the
% Matlab documentation to answer some questions or perform some tasks. Part
% 2 involves you writing your very first Matlab program!!

% Please write all of your responses in the following .mfile.
% If there are comments after the question (as in question 2) please 
% write your answer inside those comments. If there are not comments
% please write your answer with correct matlab syntax. 
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%% Part 1  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 1. Set the url of the matlab documentation to a variable called helpURL

helpURL = 'http://www.mathworks.com/help/matlab/';


% 2. What does the command 'clear all' do?
%
% Answer: "clear ALL" removes all variables, globals, functions and MEX links.
%


% 3. What function would you use to take the average of the following
% numbers [1 7 21 32 67 32453]? Store your answer in a variable called
% averageAnswer.

% Answer: I would use the function "mean" to take the average of the numbers above

% Create variable for numbers and then find average of [1 7 21 32 67 32453]
part3nums = [1 7 21 32 67 32453];
part3avg = mean(part3nums);



% 4. What command would you type to see a list of all installed toolboxes?

% Answer: I would use the command "ver" to see a list of all installed toolboxes


% 5. What command would return a list of all of the available functions in 
% the image processing toolbox? 

% Answer: "help images"


% 6. On the line below figure (line 44), write a command to draw a graph of 
% x and y. 

x = linspace(-2*pi,2*pi);
y = sin(x);

figure
plot(x,y)        %<- command goes here

        

% 7. Find a function that performs a statistical test you've seen used
% in a journal article (there are many possible answers to this). 

%
% Answer: ttest2    This is a two-sample t-test
%

% 8. What are the 2 major types of loops that MATLAB supports? What is the
% difference between them?

%
% Answer: for loops and while loops
%           The difference between them is that for loops are useful when the number of iterations that a condition is run is known,
%           whereas a while loop is useful when the number of iterations is unknown and will continue as long as the while statement is true.
% 


% 9. What does NaN stand for? Give an example of when you would get NaN as
% an answer. 
% 
%
% Answer: NaN means not a number. These values result from operations which have undefined numerical results.
%           An example of when you get this would be when you perform an
%           arithmatic expression on a NaN, such as 5*NaN.
%


% 10. The following code snippet executes but contains an error (we don't
% get a useful answer). See if you can use the documentation to fix the 
% error to get the sum of the numbers in A. Do not change or remove 
% any of the values in A.

A = [1 2 3 2 1 NaN 1 2 3 NaN];
S = nansum(A)


% 11. I used to love playing the game minesweeper. Is there a way that I
% could play a similar game on Matlab? Write the command that would launch
% the game if so. 
xpbombs



% 12. What happens if you type why and hit enter in the command window?
% Repeat this a few times and copy your result below (Make sure everything
% commented out).

%
% Answer: the command why outputs randomly generated responses such as the sequence below:
%
% >> why
% Don't you have something better to do?
% >> why
% The bald and tall and young and terrified and not very rich and not very tall and not very young and very rich and tall and young and terrified system manager knew it was a good idea.
% >> why
% Mara obeyed some engineer.
% >> why
% For the approval from Pete.
% >> why
% Penny knew it was a good idea.



%%%%%%%%%%%%%%%%%%%%%%%%%%  Part 2: Hello World %%%%%%%%%%%%%%%%%%%%%%%%%%

% Write some code that will print the string 'Hello World' to the screen. 
% There are several ways that you could do this. For an extra challenge, 
% make your program able to take text input from the user and output 
% whatever they input. (For ease of running and executing your solution,
% you should comment all the lines of code from Part 1. Just make sure you
% remove the comments before you submit.) 

%%% Enter the code for your program below this line

disp('Hello World')

UserInput = inputdlg('Type something here to satisfy the desires of your heart:')



%%%%% When you have completed everything, type the following two commands
%%%%% (without comments) into your command window. 

load handel
sound(y, Fs)