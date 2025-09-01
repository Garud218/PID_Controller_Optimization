clc
clear all

%% 
% Kc, tau_i, tau_d varying

Kc = 18.8;
rau_1 = 2;
tau_2 = 4;
tau_3 = 6;
tau_i = 236.2; 
tau_d = 1.978;
h3_sp = 1;
tf = 1000;

sim("lab5_221147.slx",1000);
edata = load("error.mat").e;
t_data = edata(1,:);
e_data = edata(2,:);

iae = trapz(t_data,abs(e_data));