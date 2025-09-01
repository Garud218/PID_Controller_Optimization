clear all;
clc;
omega = linspace(0, 1000, 100000);

Kc = 10;
z= 4*Kc./(i*omega+1)./(i*omega+2)./(i*omega+3);

figure()
plot(z,'LineWidth',3)
grid on
xlabel("Re(z)")
ylabel("Im(z)")
% polarplot(z,"-")

sys = tf([4], [1 6 11 6]);
figure()
rlocus(sys,[0:0.001:20]);