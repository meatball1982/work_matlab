clear all
clc
clf

%% outline
% plot the halo and the cluster 

% load Mat_cluster_3dia_halo.mat
load Mat_cluster_3dia_halo54.mat

% view_mm=[6,10];
view_mm=[-63,20];

% subplot(2,2,1)
% h=plot(rho,delta,'.');
% hold on
% plot(rho(ic),delta(ic),'o',...
%     'MarkerEdgeColor','r',...
%     'MarkerFaceColor','r',...
%     'MarkerSize',10)
% xlabel('rho')
% ylabel('delta')
% fi_na=['../imgs/fig_int_3dia/fig_cluster_3_dia_01_rho_deltra']
% fun_work_li_035_myfig_out(h,fi_na,3)

% % % clf
% % subplot(2,2,2)
% % % plot3(a(:,1),a(:,2),a(:,3),'.')
% % h=scatter3(a(:,1),a(:,2),a(:,3),12,cl)
% h=scatter3(a(:,1),a(:,2),a(:,3),12,en)
% % h=scatter3(a(:,1),a(:,2),a(:,3),12,halo)
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
% % col_mm=jet(length(ic));
% % colormap(col_mm)
% colorbar
% % view(120,20)
% view(view_mm)
% axis tight
% fi_na=['../imgs/fig_int_3dia/fig_cluster_3_dia_02_en']
% fun_work_li_035_myfig_out(h,fi_na,3)

% subplot(2,2,3)
% h=scatter3(a(:,1),a(:,2),a(:,3),12,cl)
% view(view_mm)
% axis tight
% fi_na=['../imgs/fig_int_3dia/fig_cluster_3_dia_03_cluster']
% fun_work_li_035_myfig_out(h,fi_na,3)


% subplot(2,2,4)
ind_halo=(halo==0);

h=scatter3(a(:,1),a(:,2),a(:,3),40,halo)
view(view_mm)
axis tight
hold on
plot3(a(ind_halo,1),a(ind_halo,2),a(ind_halo,3),'k.')
fi_na=['../imgs/fig_int_3dia/fig_cluster_3_dia_04_halo'];
fun_work_li_035_myfig_out(h,fi_na,3)

%% logs
% mod : 22-Aug-2014 15:20:41
