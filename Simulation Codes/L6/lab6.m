
clear all
format short
%%

Kp = 6; tau1 =2; tau2 =4; tau3= 6;
sys = tf([Kp], [tau1*tau2*tau3 (tau1*tau2 + tau2*tau3 + tau1*tau3) (tau1+tau2+tau3) 1]);
controlSystemDesigner(sys)


%% from lab 5

% Kc = 9.9*0.029266;
% tau_1 = 2;
% tau_2 = 4;
% tau_3 = 6;
% tau_i = 9.9; 
% h3_sp = 1;
% tf = 1000;
% 
% sim("lab5_221147.slx",1000);
% edata = load("error.mat").e;
% t_data = edata(1,:);
% e_data = edata(2,:);
% 
% iae = trapz(t_data,abs(e_data))

%% Part a
% robust response time
% Kc = 9.8*0.020795;
% tau_i= 9.8;
% err = 9.1421

% Skogestad IMC 
% Kc = 9.9*0.029138;
% tau_i= 9.9;
% err = 9.1080 (min)

% Zeigler-Nichols step response
% Kc = 8.6*0.060566;
% tau_i= 8.6;
% err = 14.1162

%% Part b

%length = linspace(0.025,0.03,100);

%Kc = 8.6*0.060566;
%tau_1 = 2;
%tau_2 = 4;
%tau_3 = 6;
%tau_i = 8.6; 
%h3_sp = 1;
%tf = 1000;
%for i=1:100
%    Kc = 8.6*length(i);
%    sim("lab5_221147.slx",1000);
%    edata = load("error.mat").e;
%    t_data = edata(1,:);
%    e_data = edata(2,:);
%    iae(i) = trapz(t_data,abs(e_data));
%    i=i+1;
%end
%
%errmin= min(iae)

%% Part (c)

Kc = 9.9*0.026;
tau_1 = 2;
tau_2 = 4;
tau_3 = 6;
tau_i = 9.9; 
h3_sp = 1;
tf = 1000;

sim("lab5_221147.slx",1000);
edata = load("error.mat").e;
t_data = edata(1,:);
e_data = edata(2,:);
iae = trapz(t_data,abs(e_data));
   