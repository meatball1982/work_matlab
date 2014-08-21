clear all
clc

%% outline %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% work to cluster the ser dia with function
% use the science cluster algorithm
% 
% ref : clustering by fast search and find of density peaks
% Science 27 June 2014: 
% Vol. 344 no. 6191 pp. 1492-1496 
% DOI: 10.1126/science.1242072

%% main %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% load data
load Mat_320_int_input_output.mat dat320_in_dia 

ind_cho=logical([1:50:length(dat320_in_dia)]);

a=dat320_in_dia(ind_cho,:);
clear dat320_in_dia

[ out ] = fun_Cluster_FP_00main( a );



%% logs 
% mod : 21-Aug-2014 08:49:09