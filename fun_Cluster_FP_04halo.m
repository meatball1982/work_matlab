function [ output_args ] = fun_Cluster_FP_04halo( n_cluster,dis_mat,dc, cl,rho )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
disp('fun_Cluster_FP_04halo')
[ND,m]=size(dis_mat);

bord_rho=zeros(n_cluster,1);
for i=1:ND
    halo(i)=cl(i);
end

% for i=1:(ND-1)
for i=1:(ND-1)
    for j=(i+1):ND
        if ( ( cl(i)~=cl(j) ) && (dis_mat(i,j) <= dc ) )
%             fprintf('i=%d, j=%d\n',i,j);
            rho_aver=0.5*(rho(i)+rho(j));
            if rho_aver > bord_rho(cl(i))
                bord_rho(cl(i)) = rho_aver;
            end
            if rho_aver > bord_rho(cl(j))
                bord_rho(cl(j)) = rho_aver;
            end
        end
    end
end


for i= 1:ND
    if (rho(i)< bord_rho(cl(i)))
        halo(i)=0;
    end
end

% output_args = 4;
output_args = halo;



end

%% logs
% mod : 22-Aug-2014 14:19:23
% mod : 22-Aug-2014 10:42:01
% mod : 2014年 08月 20日 星期三 16:04:54 CST
