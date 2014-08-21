clear all
clc


%% outline 
% test fun_dis_matrix

% load data
load Mat_320_int_input_output.mat dat320_in_dia 

ind_cho=logical([1:3000:length(dat320_in_dia)]);

a=dat320_in_dia(ind_cho,:);
clear dat320_in_dia

[ dis_mat, dis ] = fun_dis_matrix( a );


n=length(ind_cho);

for i=1:n
    for j=i+1:n
        dis_mm(i,j)=sqrt(sum((a(i,:)-a(j,:)).^2));
        dis_mm(j,i)=sqrt(sum((a(i,:)-a(j,:)).^2));
    end
end

tm=dis_mm-dis_mat;

%% logs 
% mod : 21-Aug-2014 09:59:36
% 