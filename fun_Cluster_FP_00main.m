function [ out ] = fun_Cluster_FP_00main( X )
% UNTITLED Summary of this function goes here
%   Detailed explanation goes here
%% outline
% use the science cluster algorithm to cluster the points

%% 00 load data %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% 01 cal the distance matrix %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[ dis_matrix ] = fun_Cluster_FP_01dismatrix( X )

%% 02 cal rho %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[ rho        ] = fun_Cluster_FP_02rho( 1 )

%% 03 cal deltra %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[ delta      ] = fun_Cluster_FP_03deltra( 1 )

%% 04 cal halo %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[ halo       ] = fun_Cluster_FP_04halo( 1 )

end


%% logs 
% mod : 20-Aug-2014 16:11:35
% mod : 2014年 08月 20日 星期三 17:02:51 CST
