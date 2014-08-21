function [ output_args ] = fun_Cluster_FP_02rho( dis_mat,dc)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
disp('fun_Cluster_FP_02rho')
[m,n]=size(dis_mat);

rho = zeros(m,1);
for i=1:m-1
    for j=(i+1):m
        if (dis_mat(i,j)< dc)
            rho(i)=rho(i)+1;
            rho(j)=rho(j)+1;
        end
    end
end

output_args =rho ;

end

%% logs
% mod : 21-Aug-2014 10:35:17
% 