clear all
clc
clf

%% outline
% plot the halo and the cluster with the inter cordinator


%% load data
load Mat_cluster_int_halo.mat

view_mm=[-63,20];
ind_plot=[21 24 25];

subplot(2,2,1)
h=plot(rho,delta,'.');
hold on
plot(rho(ic),delta(ic),'o',...
    'MarkerEdgeColor','r',...
    'MarkerFaceColor','r',...
    'MarkerSize',10)
xlabel('rho')
ylabel('delta')
% fi_na=['../imgs/fig_int_3dia/fig_cluster_3_dia_01_rho_deltra']
% fun_work_li_035_myfig_out(h,fi_na,3)


% % clf
subplot(2,2,2)
% % plot3(a(:,1),a(:,2),a(:,3),'.')
% h=scatter3(a(:,1),a(:,2),a(:,3),12,cl)
h=scatter3(a(:,ind_plot(1)),a(:,ind_plot(2)),a(:,ind_plot(3)),12,en)
% h=scatter3(a(:,1),a(:,2),a(:,3),12,halo)
alpha(0.3)
hold on
plot3(a(ic,ind_plot(1)),a(ic,ind_plot(2)),a(ic,ind_plot(3)),'o',...
    'MarkerEdgeColor','r',...
    'MarkerFaceColor','r',...
    'MarkerSize',10)
grid on
xlabel('phi')
ylabel('psi')
zlabel('tau')

colorbar
% view(120,20)
view(view_mm)
axis tight
% fi_na=['../imgs/fig_int_3dia/fig_cluster_3_dia_02_en']
% fun_work_li_035_myfig_out(h,fi_na,3)

subplot(2,2,3)
h=scatter3(a(:,ind_plot(1)),a(:,ind_plot(2)),a(:,ind_plot(3)),12,cl)
view(view_mm)
axis tight
% fi_na=['../imgs/fig_int_3dia/fig_cluster_3_dia_03_cluster']
% fun_work_li_035_myfig_out(h,fi_na,3)

subplot(2,2,4)
ind_halo=(halo==0);

h=scatter3(a(:,ind_plot(1)),a(:,ind_plot(2)),a(:,ind_plot(3)),40,halo)
view(view_mm)
axis tight
hold on
plot3(a(ind_halo,ind_plot(1)),a(ind_halo,ind_plot(2)),a(ind_halo,ind_plot(3)),'k.')
fi_na=['../imgs/fig_int_3dia/fig_cluster_3_dia_04_halo'];
% fun_work_li_035_myfig_out(h,fi_na,3)




%% logs
% mod : 25-Aug-2014 22:03:14
% 