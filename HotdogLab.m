%%Lab 1: Hotdogs
%%Carlos Luevanos 
%% 9 - 6 - 16

clear all; 
close all; 
clc; 

hotdogs = load('hotdog.dat');

n = length(hotdogs);%extract length of hotdogs
x = 1:n;%for plotting on graph

%%indexing the stats of each type meat
beef = hotdogs(1:20, 1:3);
meat = hotdogs(21:37, 1:3);
poultry = hotdogs(38: end, 1:3);

%%retrieve the calories of each type of meat
beefCal = beef(:,2);
meatCal = meat(:,2);
poultryCal = poultry(:,2);

%%retrieve the sodium contents of each type of meat
beefSod = beef(:,3);
meatSod = meat(:,3);
poultrySod = poultry(:,3); 

%%extract mean, variance, and std for calories of each hotdog type
beefMeanCal = mean(beefCal);
beefVarCal  = var(beefCal);
beefStdCal = std(beefCal);
meatMeanCal = mean(meatCal);
meatVarCal = var(meatCal);
meatStdCal = std(meatCal);
poultryMeanCal = mean(poultryCal);
poultryVarCal = var(poultryCal);
poultryStdCal = std(poultryCal);

%%extract mean, variance, std for sodium of each hotdog type
beefMeanSod = mean(beefSod);
beefVarSod  = var(beefSod);
beefStdSod = std(beefSod);
meatMeanSod = mean(meatSod);
meatVarSod = var(meatSod);
meatStdSod = std(meatSod);
poultryMeanSod = mean(poultrySod);
poultryVarSod = var(poultrySod);
poultryStdSod = std(poultrySod);

%%print out results and save results into txt file

results = fopen('Project1_result.txt','w');

fprintf(results, 'The hotdog with the most calories is : meat %5.2f calories. \n',meatMeanCal);
fprintf(results,'The hotdog with the least calories is : poultry %5.2f caloies. \n',poultryMeanCal);
fprintf(results,'The hotdog with the most sodium is: poultry %5.2f sodium. \n', poultryMeanSod);
fprintf(results,'The hotdog with the least sodium is: beef %5.2f sodium. \n', beefMeanSod);


%%Print out histogram for calories in meat hotdogs
figure(1)
hist(meatCal);
title('Calories in a meat hotdog','FontSize',16, 'FontWeight','bold');
xlabel('Calories in each tested hotdog','FontSize',16,'FontWeight','bold');
ylabel('Amount of hotdogs tested','FontSize',16,'FontWeight','bold');


%%Print out scatter plot for sodium in beef hotdogs
figure(2)
scatter(x:20, beefSod,20,'m','fill');
title('Sodium in beef hotdogs','FontSize',16,'FontWeight','bold')
xlabel('Beef hotdogs', 'Fontsize', 25, 'Fontweight', 'bold');
ylabel('Sodium', 'Fontsize', 25, 'Fontweight', 'bold');
