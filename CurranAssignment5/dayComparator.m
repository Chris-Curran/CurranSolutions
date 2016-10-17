function Improvers = dayComparator(SubjectID, Day1Data, Day2Data)
%% dayComparator
%  
%  Christopher Curran, East Carolina University
%  October 14th, 2016
%  
%  This function will return a list of the IDs of participants who increased their isometric strength between the two days of data given as inputs
%  
%  This function will be called by the script assignment5.m
%  
%  
%  calling
%  --------
%  [ Improvers ] = dayComparator( subjectIDs, Day1Data, Day2Data )
%  
%  
%  inputs
%  --------
%  SubjectIDs - SubjectID numbers of participants
%  Day1Data   - Isometric strength values for participants on first comparison day
%  Day2Data   - Isometric strength values for participants on second comparison day
%  
%  
%  outputs
%  --------
%  Improvers - Subject ID numbers of the participants that improved their 
%       isometric strength between the two days being compared
%  


%  other functions called
%  --------
%  
%  
%  variables
%  --------
%  SubjectIDs       - SubjectID numbers of participants
%  Day1Data         - Isometric strength values for participants on first comparison day
%  Day2Data         - Isometric strength values for participants on second comparison day
%  ImproversCounter - Row Couter for creating Improvers array
%  Improvers        - Subject ID numbers of the participants that improved their 
%       isometric strength between the two days being compared
%  

%% 


  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %                                                             %
  %  Create an array of SubjectID numbers that improved their   %
  %     isometric strength between the two days being compared  %
  %                                                             %
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  
ImproversCounter = 1;
  
for i = 1:length(SubjectID)
    if Day1Data(i) < Day2Data(i)
        Improvers(ImproversCounter,1) = SubjectID(i);
        ImproversCounter = ImproversCounter + 1;
    end
end
  
  
end