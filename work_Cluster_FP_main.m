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
load Mat_320_int_input_output.mat dat320_in_dia
load Mat_016_cluster_3_20Dia_int.mat dat_En


ind_cho=logical([1:20:length(dat320_in_dia)]);
a=dat320_in_dia(ind_cho,:);
en=dat_En(ind_cho,:);
clear dat320_in_dia dat320_En
a(a(:,1)>0,1)=a(a(:,1)>0,1)-2*pi;

% load Mat_00_orig_points.mat Y
% a=Y;


[ out ] = fun_Cluster_FP_00main( a );

ic=out.ic;
rho=out.rho;
delta=out.delta;

% subplot(1,2,1)
plot(rho,delta,'.');
hold on
plot(rho(ic),delta(ic),'o',...
    'MarkerEdgeColor','r',...
    'MarkerFaceColor','r',...
    'MarkerSize',10)


% subplot(1,2,2)
% % plot3(a(:,1),a(:,2),a(:,3),'.')
% scatter3(a(:,1),a(:,2),a(:,3),12,en)
% alpha(0.3)
% hold on
% plot3(a(ic,1),a(ic,2),a(ic,3),'o',...
%     'MarkerEdgeColor','r',...
%     'MarkerFaceColor','r',...
%     'MarkerSize',10)
% grid on
% xlabel('phi')
% ylabel('psi')
% zlabel('tau')
% colorbar
% view(120,20)

%% logs 
% mod : 21-Aug-2014 20:59:09
% mod : 21-Aug-2014 08:49:09