clear all
clc

%% outline
% test the cluster dp alogirhm

%% main
% load data
data=load('../data/example_distances.dat');
ind=1:1000:length(data);
x=data(ind,1);
y=data(ind,2);
di=data(ind,3);



plot3(x,y,di,'.')
box on
%% logs
% mod : 01-Jul-2014 10:04:43
