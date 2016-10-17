function [normDay1mean, normDay2mean, normDay3mean] = NormMeanCalc(Weight,Day1,Day2,Day3)
%% NormMeanCalc
%  
%  Christopher Curran, East Carolina University
%  October 14th, 2016
%  
%  This function will return normalized group means for the participants isometric strength data
%  
%  This function will be called by the script assignment5.m
%  
%  
%  calling
%  --------
%  [ normDay1mean, normDay2mean, normDay3mean ] = NormMeanCalc( Weight, Day1, Day2, Day3 )
%  
%  
%  inputs
%  --------
%  Weight   - weights of participants
%  Day1     - isometric strength data for participants on Day 1
%  Day2     - isometric strength data for participants on Day 2
%  Day3     - isometric strength data for participants on Day 3
%  
%  
%  outputs
%  --------
%  normDay1mean - Mean Day 1 isometric strength data  normalized to participant weights
%  normDay2mean - Mean Day 2 isometric strength data  normalized to participant weights
%  normDay3mean - Mean Day 3 isometric strength data  normalized to participant weights
%  
%  

%  other functions called
%  --------
%  
%  
%  variables
%  --------
%  Weight                   - weights of participants
%  Day1                     - isometric strength data for participants on Day 1
%  Day2                     - isometric strength data for participants on Day 2
%  Day3                     - isometric strength data for participants on Day 3
%  NormalizedStrengthData   - matrix of strength data normalized to participant weights
%  normDay1mean             - Mean Day 1 isometric strength data  normalized to participant weights
%  normDay2mean             - Mean Day 2 isometric strength data  normalized to participant weights
%  normDay3mean             - Mean Day 3 isometric strength data  normalized to participant weights%  SubjectIDs       - SubjectID numbers of participants
%  

%%

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %                                                                    %
  %  Create matrix of strength data normalized to participant weights  %
  %                                                                    %
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

NormalizedStrengthData = zeros(length(Weight),3);

for i = 1:length(Weight)
    NormalizedStrengthData(i,1:3) = [(Day1(i)/Weight(i)),(Day2(i)/Weight(i)),(Day3(i)/Weight(i))];
end

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %                                                 %
  %  Calculate normalized mean values for each day  %
  %                                                 %
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  
normDay1mean = mean(NormalizedStrengthData(:,1));
normDay2mean = mean(NormalizedStrengthData(:,2));
normDay3mean = mean(NormalizedStrengthData(:,3));

end