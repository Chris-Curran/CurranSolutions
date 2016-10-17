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
%  SubjectID                    - array of participant ID numbers
%  Age                          - ages of participants in years
%  Gender                       - genders of participants
%  Weight                       - weight of participants in kg
%  Day1                         - isometric strength of participants on Day 1
%  Day2                         - isometric strength of participants on Day 2
%  Day3                         - isometric strength of participants on Day 3
%  maleNums                     - Subject ID of male participants
%  maleIsoIndMeans              - individual mean isometric strength values across all 3 days for all male participants
%  femaleNums                   - Subject numbers of female participants
%  femaleIsoIndMeans            - individual mean isometric strength values across all 3 days for all female participants
%  maleGroupIsoMean             - single mean value for male group
%  femaleGroupIsoMean           - single mean value for female group
%  day1toDay2                   - participants that improved their isometric strength between Day 1 and Day 2                      
%  day2toDay3                   - participants that improved their isometric strength between Day 2 and Day 3
%  normDay1mean                 - group means for Day 1 normalized for participant weights
%  normDay2mean                 - group means for Day 2 normalized for participant weights
%  normDay3mean                 - group means for Day 3 normalized for participant weights
%  Results                      - 13 x 11 matrix to organize and manipulate outcome measures for exporting as table
%  RESULTSmaleNums              - 13 Row cell array for ResultsTable containing maleNums
%  RESULTSmaleIsoIndMeans       - 13 Row cell array for ResultsTable containing maleIsoIndMeans
%  RESULTSfemaleNums            - 13 Row cell array for ResultsTable containing femaleNums
%  RESULTSfemaleIsoIndMeans     - 13 Row cell array for ResultsTable containing femaleIsoIndMeans
%  RESULTSmaleGroupIsoMean      - 13 Row cell array for ResultsTable containing maleGroupIsoMean
%  RESULTSfemaleGroupIsoMean    - 13 Row cell array for ResultsTable containing femaleGroupIsoMean
%  RESULTSday1toDay2            - 13 Row cell array for ResultsTable containing day1toDay2
%  RESULTSday2toDay3            - 13 Row cell array for ResultsTable containing day2toDay3
%  RESULTSnormDay1mean          - 13 Row cell array for ResultsTable containing normDay1mean
%  RESULTSnormDay2mean          - 13 Row cell array for ResultsTable containing normDay2mean
%  RESULTSnormDay3mean          - 13 Row cell array for ResultsTable containing normDay3mean
%  ResultsTable                 - Table contianing column arrays for all outcome variables calculated from data set
%  
%  




%% Part 3
% (Parts 1 and 2 containined general instructions for the assignment)


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
  
[maleNums, femaleNums, maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean] = genderIsoCalc(Gender, Day1, Day2, Day3);

%% Part 5  

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %                                                             %
  %  Run dayComparator function to determine participants that  %
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
  %                                                %
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  

Results = NaN(13,11);

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %                                             %
  %  Insert columns of results into NaN matrix  %
  %                                             %
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  

for i = 1:length(maleNums)
Results(i,1) = maleNums(i);
end  
  
for i = 1:length(maleIsoIndMeans)
Results(i,2) = maleIsoIndMeans(i);
end

for i = 1:length(femaleNums)
Results(i,3) = femaleNums(i);
end

for i = 1:length(femaleIsoIndMeans)
Results(i,4) = femaleIsoIndMeans(i);
end

for i = 1:length(maleGroupIsoMean)
Results(i,5) = maleGroupIsoMean(i);
end

for i = 1:length(femaleGroupIsoMean)
Results(i,6) = femaleGroupIsoMean(i);
end

for i = 1:length(day1toDay2)
Results(i,7) = day1toDay2(i);
end

for i = 1:length(day2toDay3)
Results(i,8) = day2toDay3(i);
end

for i = 1:length(normDay1mean)
Results(i,9) = normDay1mean(i);
end

for i = 1:length(normDay2mean)
Results(i,10) = normDay2mean(i);
end

for i = 1:length(normDay3mean)
Results(i,11) = normDay3mean(i);
end


  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %                                         %
  %  Replace excess NaN values with blanks  %
  %                                         %
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


Results = num2cell(Results);
Results(cellfun(@isnan,Results))={[]};

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %                                    %
  %  Create Results Table from matrix  %
  %                                    %
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

RESULTSmaleNums = Results(:,1);
RESULTSmaleIsoIndMeans = Results(:,2);
RESULTSfemaleNums = Results(:,3);
RESULTSfemaleIsoIndMeans = Results(:,4);
RESULTSmaleGroupIsoMean = Results(:,5);
RESULTSfemaleGroupIsoMean = Results(:,6);
RESULTSday1toDay2 = Results(:,7);
RESULTSday2toDay3 = Results(:,8);
RESULTSnormDay1mean = Results(:,9);
RESULTSnormDay2mean = Results(:,10);
RESULTSnormDay3mean = Results(:,11);


ResultsTable = table(RESULTSmaleNums, RESULTSmaleIsoIndMeans, RESULTSfemaleNums, RESULTSfemaleIsoIndMeans, RESULTSmaleGroupIsoMean, RESULTSfemaleGroupIsoMean, RESULTSday1toDay2, RESULTSday2toDay3, RESULTSnormDay1mean, RESULTSnormDay2mean, RESULTSnormDay3mean,'VariableNames',{'MaleParticipants', 'maleIsoIndMeans', 'FemaleParticipants', 'femaleIsoIndMeans', 'maleGroupIsoMean', 'femaleGroupIsoMean', 'day1toDay2', 'day2toDay3', 'normDay1mean', 'normDay2mean','normDay3mean'});

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %                                   %
  %  Write results table to csv file  %
  %                                   %
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

writetable(ResultsTable,'iso-results.csv','WriteVariableNames',true)


