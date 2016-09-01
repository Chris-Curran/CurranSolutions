%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                      %
%  Name:        Christopher Curran                     %
%  Due Date:    September 15 2016                      %
%  Description: Solution to Assignment 2 of KINE 6803  %
%                                                      %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Chapter 1 Exercises
%       1-6,11-15,22,24-27

% 1.)
AtomWeightCopper = 63.55;

% 2.)
MyAge = 23;
MyAge = MyAge - 2;
MyAge = MyAge + 1;

% 3.)
MaxCharacters = namelengthmax;

% 4.)
WeightLbs = 4;
WeightOz = 64;

who
whos

clear WeightOz

who
whos

% 5.)
Range_uint32 = [intmin('uint32'),intmax('uint32')];
Range_uint64 = [intmin('uint64'),intmax('uint64')];

% 6.)
Prob6Num_doub = 1.234;
Prob6Num_int32 = int32(1.234);

% 11.) 
Pounds = 195;
Kilos = Pounds / 2.2;

% 12.)
FTemp = 32;
CTemp = (FTemp - 32) * 5/9;

% 13.)
Centimeters = 15;
Inches = 2.54 * Centimeters;

% 14.)
ProperSin = sind(90) == 1;
syms R
RadianValue = solve(sin(R) == 1,R);

% 15.)
R1 = 100;
R2 = 150;
R3 = 200;
CombinedResistance = (1/((1/R1)+(1/R2)+(1/R3)));

% 22.)
Message = 'AaBbCc';
double(Message);
disp('The capital letters come first in the ASCII character encoding');


%% Chapter 2 Exercises
%       1-4,6-10,12,23,26,30,31



%% Chapter 3 Exercises
%       1,4,6,8,13