function [ out ] = fun_Cluster_FP_00main( X )
% UNTITLED Summary of this function goes here
%   Detailed explanation goes here
%% outline
% use the science cluster algorithm to cluster the points

%% 00 load data %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ND = length(X);
N  = ND*(ND-1)/2;

percent  = 1.0;
position = round(N*percent/100);

%% 01 cal the distance matrix %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
disp('-------------------------------------------')
[ dis_mat, dis] = fun_Cluster_FP_01dismatrix( X );

% cal rho parameter 
sda = sort(dis);
dc  = sda(position);

%% 02 cal rho %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
disp('-------------------------------------------')
[ rho        ] = fun_Cluster_FP_02rho( dis_mat , dc );

[rho_sorted,ordrho]=sort(rho,'descend'); % want the ordrho

%% 03 cal deltra %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
disp('-------------------------------------------')
[ delta ,nneigh    ] = fun_Cluster_FP_03deltra( dis_mat,rho );

% save Mat_delta.mat


%% index each point to cluster
% rhomin = 21.2588; deltamin = 0.1990;

% rhomin = 30; deltamin = 1.6;

% rhomin = 100; deltamin = 0.8;
rhomin = 20; deltamin = 0.8;
% rhomin = 180; deltamin = 0.5;
% rhomin = 100; deltamin = 2;

cl=ones(ND,1)*(-1);
n_cluster=0;
icl=[];

for i=1:ND
    if( (rho(i)>rhomin) && (delta(i)>deltamin))
        n_cluster=n_cluster+1;
        cl(i)=n_cluster;
        icl(n_cluster)=i;
    end
end

if length(icl)==0
    icl=1;
end

% ref version assigemnt. the pointA is 
% in the same cluster like the other pointB, 
% which density is higher than pointA, and nearest to pointA.
for i=1:ND
    if (cl(ordrho(i))== -1)
        cl(ordrho(i))=cl(nneigh(ordrho(i)));
    end
end



%% 04 cal halo %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
disp('-------------------------------------------')
[ halo  ] = fun_Cluster_FP_04halo( n_cluster,dis_mat,dc, cl,rho );


% plot(rho,delta,'.')
out.dis_mat   = dis_mat;
out.rho       = rho;
out.delta     = delta;
out.ic        = icl;
out.cl        = cl;
out.halo      = halo;
out.n_cluster = n_cluster;

end


%% logs 
% mod : 21-Aug-2014 08:37:06
% mod : 20-Aug-2014 16:11:35
% mod : 2014年 08月 20日 星期三 17:02:51 CST
% mod : this commit is added on win7, t400
