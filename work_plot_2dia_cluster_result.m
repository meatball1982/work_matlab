clear all
close all
clc
clf

%% outline
% plot the halo and the cluster 

load Mat_cluster_2dia_halo.mat
col_mm_halo=jet(length(ic));
col_mm=jet(length(unique(en)));

% subplot(2,2,1)
% h=plot(rho,delta,'.');
% hold on
% plot(rho(ic),delta(ic),'o',...
%     'MarkerEdgeColor','r',...
%     'MarkerFaceColor','r',...
%     'MarkerSize',10)
% xlabel('rho')
% ylabel('delta')
% fi_na=['../imgs/fig_int_2dia/fig_cluster_2_dia_01_rho_deltra']
% fun_work_li_035_myfig_out(h,fi_na,3)
% 
% 
% % clf
% subplot(2,2,2)
% h=scatter(a(:,1),a(:,2),12,en)
% hold on
% plot(a(ic,1),a(ic,2),'o',...
%     'MarkerEdgeColor','r',...
%     'MarkerFaceColor','r',...
%     'MarkerSize',10)
% grid on
% xlabel('phi')
% ylabel('psi')
% colormap(col_mm)
% colorbar
% axis tight
% fi_na=['../imgs/fig_int_2dia/fig_cluster_2_dia_02_en']
% fun_work_li_035_myfig_out(h,fi_na,3)

% subplot(2,2,3)
% h=scatter(a(:,1),a(:,2),12,cl)
% axis tight
% colormap(col_mm_halo)
% fi_na=['../imgs/fig_int_2dia/fig_cluster_2_dia_03_cluster']
% fun_work_li_035_myfig_out(h,fi_na,3)

% subplot(2,2,4)
ind_halo=(halo==0);
h=scatter(a(:,1),a(:,2),12,cl)
hold on
plot(a(ind_halo,1),a(ind_halo,2),'k.')
axis tight
fi_na=['../imgs/fig_int_2dia/fig_cluster_2_dia_04_halo'];
fun_work_li_035_myfig_out(h,fi_na,3)
% colormap(col_mm_halo)