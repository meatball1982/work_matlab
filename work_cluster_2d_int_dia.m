clear all
close all
clc

%% outline
% use the science cluster algorithm to cluster the 2dia angle 
% 
%
load Mat_320_int_input_output.mat dat320_in_dia 

 
a=dat320_in_dia;
clear dat320_in_dia

ind_cho=logical([1:500:length(a)]);
% ind_cho=logical([1:1:length(a)]);

dia1=a(ind_cho,1);
dia2=a(ind_cho,2);
dia3=a(ind_cho,3);

% shift the angle
dia1(dia1<0)=dia1(dia1<0)+2*pi;
dia3(dia3<-2)=dia3(dia3<-2)+2*pi;

% gen the distance between 2 points.
X=[dia1';dia3']';

% data=[];
% for i=1:length(X)
%     for j=(i+1):length(X)
%         tm=[i,j,norm(X(i,:)-X(j,:))];
%         data=[data;tm];
%     end
% end
tm=pdist(X);

% plot the original data
% h=scatter(dia1(ind_cho),dia3(ind_cho),20,dat_En(ind_cho))
% axis tight
% grid on
% xlabel('8-7-6-1'),ylabel('17-8-7-6')
% fi_na=['../imgs/cluster/fig_dia_2D_scatter_En'];
% fun_work_li_035_myfig_out(h,fi_na,3)

% n_conf=length(dia1); % ND in the science matlab pro
% n_dis= n_conf * ( n_conf - 1 ) / 2;
% percent = 2.0; %% this is the parameter. 
% position= round(n_dis*percent/100); %1-2% in ref 1494. col3.






% sda = sort(data);
% dc=sda(position);


% for i=1:n_dis
%     dis_mat()
% end
% 
% rho = zeros(n_conf,1);
% 
% dis_mat=zeros(n_conf);

% % cut off kernel
% for i=1:n_conf-1
%     for j=(i+1):n_conf
%         if ((i,j)<dc)
%             rho(i)=rho(i)+1;
%             rho(j)=rho(j)+1;
%         end
%     end
% end


%% logs
% mod : 2014年 08月 19日 星期二 20:47:20 CST

