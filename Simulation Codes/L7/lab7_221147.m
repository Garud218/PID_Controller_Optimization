clc
clear all
%% Q1

b=[0 1];
a=[100 80 17 1 0];

%residue calulation
[r,p]=residue(b,a);

%t at inflection point
tinfl = fzero(@(t) sum(r.*p.*p.*exp(t*p)),[7]);

%slope
dydt = sum(r.*p.*exp(p*tinfl));

%ym at tinflection
yminfl = sum(r.*exp(p*tinfl));

%define t matrix
tmat = [0,0.001,40];

%% PI Controller

K=1; B=1; A=1; tau= B/dydt;
td = 3.54;

Kc= 1*tau*(0.9+td/(12*tau))/(K*td);
Ti = td*(30+3*td/tau)/(9+20*td/tau);

%Gol = GcGvGpGm
%Gol = Kc(Tis+1)(1)/((Ti*s)*(100s^3+80s^2+17s+1)

H = tf([Kc*Ti Kc],[Ti*100 Ti*80 Ti*17 Ti*1 0]);
figure(2)
bode(H)

%%

sim("sim7.slx",300);
x1data = load("hello.mat");
t= x1data.ans(1,:);
ym = x1data.ans(2,:);

%plot of ym vs t
figure(1)
hold on
plot(t,ym,tmat,dydt*(tmat-tinfl)+yminfl,linewidth=1.5)
plot(tinfl,yminfl,"*")
legend('ym vs t', 'Tangent at POI','Inflection Point');
xlabel('t (sec)'); ylabel('ym');
title('Step Response Plot');
hold off

