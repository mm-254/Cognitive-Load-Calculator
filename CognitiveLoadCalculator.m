%Cognitive Load calculator
Sub='Subject01';
pair='TempVib';
tallies=[3,5,4,1,1,1]; %Enter mental, physical, temporal, performance, effort, frustration
trial1Ratings=[45,60,20,75,25,35];  %Enter mental, physical, temporal, performance, effort, frustration
trial2Ratings=[40,50,20,65,60,50];  %Enter mental, physical, temporal, performance, effort, frustration
trial3Ratings=[40,50,20,35,65,30];  %Enter mental, physical, temporal, performance, effort, frustration

if sum(tallies)~=15
    error('Total tallies is not 15');
end

trialRatings=[trial1Ratings;trial2Ratings;trial3Ratings];
adjustedTrialRatings=tallies.*trialRatings;
weightedCogLoad=sum(adjustedTrialRatings,2)/15;
disp('Cognitive Load=');
disp(weightedCogLoad);
S1P8={Sub,pair,tallies,adjustedTrialRatings,weightedCogLoad};
save('CogLoad.mat', 'S1P8','-append'); %P1WeightHap, P2WeightVib, P3WeightVD, P4LiqVD,P5LiqVib,P6TempVD,P6TempPelt,P6TempVib

