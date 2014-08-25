clear all
clc
clf

%% outline %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% work to cluster the ser int cor with function
% use the science cluster algorithm
% 
% ref : clustering by fast search and find of density peaks
% Science 27 June 2014: 
% Vol. 344 no. 6191 pp. 1492-1496 
% DOI: 10.1126/science.1242072

%% main %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% load data
% load the inter cordinator
load Mat_320_int_input_output54.mat dat320_in_noh
% load the en data
load Mat_016_cluster_3_20Dia_int.mat dat_En

ind_cho=logical([1:2:length(dat320_in_noh)]);
a=dat320_in_noh(ind_cho,:);

b=a(:,end-6:end);
b(b<0)=b(b<0)+2*pi;
ind_b3=b(:,3)<1.2;
b(ind_b3,3)=b(ind_b3,3)+2*pi;
ind_b6=b(:,6)>4.5;
b(ind_b6,6)=b(ind_b6,6)-2*pi;

a(:,end-6:end)=b;

en=dat_En(ind_cho,:);
clear dat320_in_dia dat_En b ind_b3 ind_b6

[ out_clu ] = fun_Cluster_FP_00main( a );

ic    = out_clu.ic;
rho   = out_clu.rho;
delta = out_clu.delta;
cl    = out_clu.cl;
halo  = out_clu.halo;

% clear out_clu

save Mat_cluster_int_halo.mat
% % save Mat_cluster_2dia_halo.mat
% save Mat_cluster_3dia_halo54.mat




%% logs 
% mod : 25-Aug-2014 21:49:35
% cluster inter cord
% mod : 21-Aug-2014 20:59:09
% mod : 21-Aug-2014 08:49:09