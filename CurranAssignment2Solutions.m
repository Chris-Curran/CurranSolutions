%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                      %
%  Name:        Christopher Curran                     %
%  Due Date:    September 15 2016                      %
%  Description: Solution to Assignment 2 of KINE 6803  %
%                                                      %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Chapter 1 Exercises
%       1-6,11-15,22,24-27

disp('Chapter 1 Exercises')

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

% 24.)
Prob24a = 'b' >= 'c' - 1;
Prob24b = 3 == 2 + 1;
Prob24c = (3 == 2) + 1;
Prob24d = xor(5 < 6, 8 > 4);
Prob24 = [Prob24a, Prob24b, Prob24c, Prob24d];

%25.)
x = 4;
y = 7;

if (x > 5 && y < 10) || (x < 5 && y > 10)
    Prob25 = 'False'
else
    Prob25 = 'True'
end

% 26.)
Prob26 = 3*10^5 == 3e5;

% 27.)
Prob27 = log10(10000) == 4;

%% Chapter 2 Exercises
%       1-4,6-10,12,23,26,30,31

disp('Chapter 2 Exercises')

% 1.)
Ch2Prob1a = 2:7;
Ch2Prob1b = 1.1000:.2:1.7000;
Ch2Prob1c = 8:-2;2;

% 2.)
vec = linspace(0,2*pi,50);

% 3.)
Ch2Prob3 = linspace(2,3,6);

% 4.)
Ch2Prob4aColon = -5:-1;
Ch2Prob4bColon = 5:2:9;
Ch2Prob4cColon = 8:-2:4;
Ch2Prob4aLin = linspace(-5,-1,5);
Ch2Prob4bLin = linspace(5,9,3);
Ch2Prob4cLin = linspace(8,4,3);

% 6.)
Ch2Prob6 = (-1:.5:1)';

% 7.)
VecSeven = 1:35;
Ch2Prob7 = VecSeven(1:2:length(VecSeven));

% 8.)
Ch2Prob8 = [7:10;12:-2:6];
Ch2Prob8a = Ch2Prob8(1,3);
Ch2Prob8b = Ch2Prob8(2,:);
Ch2Prob8c = Ch2Prob8(:,1:2);

% 9.)
MatNine = rand(2,4);
Ch2Prob9 = size(MatNine,1)*size(MatNine,2);

% 10.)
MatTen = MatNine;
MatTen(1,:) = 1:4;
MatTen(:,3) = 45;

% 12.)
Ch2Prob12rows = randi([1 5]);
Ch2Prob12cols = randi([1 5]);
Ch2Prob12 = zeros(Ch2Prob12rows, Ch2Prob12cols);

% 23.)
Ch2Prob23 = sum(3:2:11);

% 26.)
Numerators = [3,5,7,9];
Denominators = [1,2,3,4];
Fractions = Numerators./Denominators;
Ch2Prob26 = sum(Fractions);

% 30.)
Ch2Prob30Rand = randi([-10 10],1,5);
Ch2Prob30a = Ch2Prob30Rand - 3;
Ch2Prob30b = length(Ch2Prob30Rand(Ch2Prob30Rand > 0));
Ch2Prob30c = abs(Ch2Prob30Rand);
Ch2Prob30d = max(Ch2Prob30Rand);

% 31.)
Ch2Prob31Mat = rand([3,5])
Ch2Prob31a = max(Ch2Prob31Mat)
Ch2Prob31b = max(Ch2Prob31Mat,[],2)
Ch2Prob31c = max(max(Ch2Prob31Mat))

%% Chapter 3 Exercises
%       1,4,6,8,13

disp('Chapter 1 Exercises')
