%%  assignment5
%  
%  Christopher Curran, East Carolina University
%  October 14th, 2016
%  
%  This script will perform data analysis on a set of isokinetic strength data
%  
%  This code was written to fulfill the requirements of Assignment 5 for
%  the ECU class KINE 6803.
%  
%  
%  calling
%  --------
%  assignment5
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
%  [ SubjectID, Age, Gender, Weight, Day1, Day2, Day3 ] = importfile( filename )
%  [ maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean ] = genderIsoCalc( Gender, Day1, Day2, Day3 )
%  [ Improvers ] = dayComparator( subjectIDs , Day1Data, Day2Data )
%  
%  
%  variables
%  --------
%  SubjectID    - array of participant ID numbers
%  Age          - ages of participants in years
%  Gender       - genders of participants
%  Weight       - weight of participants in kg
%  Day1         - isometric strength of participants on Day 1
%  Day2         - isometric strength of participants on Day 2
%  Day3         - isometric strength of participants on Day 3
%  
%  
%  

%% Part 3


  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %                                                  %
  %  Run importfile function to load data sheet and  %
  %     separate the data out into proper variables  %
  %                                                  %
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  
[SubjectID,Age,Gender,Weight,Day1,Day2,Day3] = importfile('isok_data_6803.csv');

%% Part 4
  
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %                                                                  %
  %  Run function genderIsoCalc to calculate:                        %
  %     individual mean isometric strength values across all 3 days  %
  %     single mean value for each group                             %
  %                                                                  %
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  
[maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean] = genderIsoCalc(Gender, Day1, Day2, Day3);

%% Part 5  

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %                                                             %
  %  Run dayComparator function to determine partiicpants that  %
  %     improved their isometric strength between the two days  %
  %     being compared                                          %
  %                                                             %
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  
[day1toDay2] = dayComparator(SubjectID,Day1,Day2);
[day2toDay3] = dayComparator(SubjectID,Day2,Day3);
 
 
%% Part 6  

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %                                                 %
  %  Run NormMeanCalc to calculate the group means  %
  %     normalized for participant weights          %
  %                                                 %
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
[normDay1mean, normDay2mean, normDay3mean] = NormMeanCalc(Weight,Day1,Day2,Day3);


  
%% Part 7

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %                                                %
  %  Create results table and export as .csv file  %
  %     Create NaN matrix to store results         %
  %     Insert columns of results into NaN matrix  %
  %     Replace excess NaN values with blanks      %
  %     Create Rsults Table from matrix            %
  %     Write results table to csv file            %
  %                                                %
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  

TryResults = NaN(13,9);

for i = 1:length(maleIsoIndMeans)
TryResults(i,1) = maleIsoIndMeans(i);
end

for i = 1:length(femaleIsoIndMeans)
TryResults(i,2) = femaleIsoIndMeans(i);
end

for i = 1:length(maleGroupIsoMean)
TryResults(i,3) = maleGroupIsoMean(i);
end

for i = 1:length(femaleGroupIsoMean)
TryResults(i,4) = femaleGroupIsoMean(i);
end

for i = 1:length(day1toDay2)
TryResults(i,5) = day1toDay2(i);
end

for i = 1:length(day2toDay3)
TryResults(i,6) = day2toDay3(i);
end

for i = 1:length(normDay1mean)
TryResults(i,7) = normDay1mean(i);
end

for i = 1:length(normDay2mean)
TryResults(i,8) = normDay2mean(i);
end

for i = 1:length(normDay3mean)
TryResults(i,9) = normDay3mean(i);
end

TryResults = num2cell(TryResults);
TryResults(cellfun(@isnan,TryResults))={[]};

maleIsoIndMeans = TryResults(:,1);
femaleIsoIndMeans = TryResults(:,2);
maleGroupIsoMean = TryResults(:,3);
femaleGroupIsoMean = TryResults(:,4);
day1toDay2 = TryResults(:,5);
day2toDay3 = TryResults(:,6);
normDay1mean = TryResults(:,7);
normDay2mean = TryResults(:,8);
normDay3mean = TryResults(:,9);



ResultsTable = table(maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean, day1toDay2, day2toDay3, normDay1mean, normDay2mean, normDay3mean,'VariableNames',{'maleIsoIndMeans', 'femaleIsoIndMeans', 'maleGroupIsoMean', 'femaleGroupIsoMean', 'day1toDay2', 'day2toDay3', 'normDay1mean', 'normDay2mean','normDay3mean'});
writetable(ResultsTable,'Assignment5Results.csv','WriteVariableNames',true)


