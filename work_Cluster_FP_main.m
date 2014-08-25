clear all
clc
clf

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
load Mat_320_int_input_output54.mat dat320_in_dia
% load Mat_320_int_input_output.mat dat320_in_dia

load Mat_320_int_input_output54.mat dat320_in_noh


load Mat_016_cluster_3_20Dia_int.mat dat_En


ind_cho=logical([1:2:length(dat320_in_dia)]);
a=dat320_in_dia(ind_cho,:);


% a=cos(a);
en=dat_En(ind_cho,:);
clear dat320_in_dia dat_En

% a(a(:,1)>0,1)=a(a(:,1)>0,1)-2*pi;
% a(a(:,1)<0,1)=a(a(:,1)<0,1)+2*pi;
% a(a(:,2)<0,2)=a(a(:,2)<0,2)+2*pi;
% a(a(:,3)<-2,3)=a(a(:,3)<-2,3)+2*pi;



% load Mat_00_orig_points.mat Y
% a=Y;

% 2 dia angle 
% a(:,2)=[];

% 
% [ out_clu ] = fun_Cluster_FP_00main( a );
% 
% ic    = out_clu.ic;
% rho   = out_clu.rho;
% delta = out_clu.delta;
% cl    = out_clu.cl;
% halo  = out_clu.halo;
% 
% clear out_clu
% 
% % save Mat_cluster_2dia_halo.mat
% save Mat_cluster_3dia_halo54.mat




%% logs 
% mod : 25-Aug-2014 21:36:15
% cluster inter cord
% mod : 21-Aug-2014 20:59:09
% mod : 21-Aug-2014 08:49:09