function [ out ] = fun_Cluster_FP_00main( X )
% UNTITLED Summary of this function goes here
%   Detailed explanation goes here
%% outline
% use the science cluster algorithm to cluster the points

%% 00 load data %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% 01 cal the distance matrix %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
disp('-------------------------------------------')
[ dis_mat, dis] = fun_Cluster_FP_01dismatrix( X );

%% 02 cal rho %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
disp('-------------------------------------------')
[ rho        ] = fun_Cluster_FP_02rho( 1 );

%% 03 cal deltra %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
disp('-------------------------------------------')
[ delta      ] = fun_Cluster_FP_03deltra( 1 );

%% 04 cal halo %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
disp('-------------------------------------------')
[ halo       ] = fun_Cluster_FP_04halo( 1 );

out = dis_mat;

end


%% logs 
% mod : 21-Aug-2014 08:37:06
% mod : 20-Aug-2014 16:11:35
% mod : 2014年 08月 20日 星期三 17:02:51 CST
% mod : this commit is added on win7, t400
