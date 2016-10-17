function [maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean] = genderIsoCalc(Gender, Day1, Day2, Day3)
%% genderIsoCalc
%  
%  Christopher Curran, East Carolina University
%  October 14th, 2016
%  
%  This function will script will perform data analysis on a set of isokinetic strength data
%  
%  This function will be called by the script assignment5.m
%  
%  
%  calling
%  --------
%  [ maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean ] = genderIsoCalc( Gender, Day1, Day2, Day3 )
%  
%  
%  inputs
%  --------
%  Gender   - Gender of participants
%  Day1     - Isometric strength values for participants on Day 1
%  Day2     - Isometric strength values for participants on Day 2
%  Day3     - Isometric strength values for participants on Day 3
%  
%  
%  outputs
%  --------
%  maleIsoIndMeans      - individual mean isometric strength values across all 3 days for male participants
%  femaleIsoIndMeans    - individual mean isometric strength values across all 3 days for female participants
%  maleGroupIsoMean     - single mean value for male participants
%  femaleGroupIsoMean   - single mean value for female participants
%  


%  other functions called
%  --------
%  
%  
%  variables
%  --------
%  Gender               - genders of participants
%  Day1                 - isometric strength of participants on Day 1
%  Day2                 - isometric strength of participants on Day 2
%  Day3                 - isometric strength of participants on Day 3
%  MaleCounter          - Row counter for building MaleStrengthMatrix
%  FemaleCounter          - Row counter for building FemaleStrengthMatrix
%  MaleStrengthMatrix   - Matrix containing strength of male participants for each day
%  FemaleStrengthMatrix - Matrix containing strength of female participants for each day
%  maleIsoIndMeans      - individual mean isometric strength values across all 3 days for male participants
%  femaleIsoIndMeans    - individual mean isometric strength values across all 3 days for female participants
%  maleGroupIsoMean     - single mean value for male participants
%  femaleGroupIsoMean   - single mean value for female participants
%  
%  


%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                      %
%  Build matrices of strength values for male and female participants  %
%                                                                      %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


MaleCounter = 1;
FemaleCounter = 1;

for i = 1:length(Gender)
    if strcmp(Gender(i),'M') == 1;
        MaleStrengthMatrix(MaleCounter,1:3) = [Day1(i),Day2(i),Day3(i)];
        MaleCounter = MaleCounter + 1;
    else
        FemaleStrengthMatrix(FemaleCounter,1:3) = [Day1(i),Day2(i),Day3(i)];
        FemaleCounter = FemaleCounter + 1;
    end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                              %
%  Calculate output variables  %
%                              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

maleIsoIndMeans = mean(MaleStrengthMatrix,2);
femaleIsoIndMeans = mean(FemaleStrengthMatrix,2);

maleGroupIsoMean = mean(maleIsoIndMeans);
femaleGroupIsoMean = mean(femaleIsoIndMeans);

end
