function [ dis_mat, dis ] = fun_dis_matrix( a )
% function [ dis_mat, ind, dis ] = fun_dis_matrix( a )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

% ind =1;
dis     = pdist(a);
dis_mat = squareform(dis,'tomatrix'); 

end

%% logs 
% mod : 21-Aug-2014 09:46:05
