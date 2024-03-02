%% Code for the drawing of Mohr's Circle
clc
clear all
close all
%% Defining Stress Components
sigma_xx = 200 % Units : Mpa
sigma_yy = 100 % Units : Mpa
tau_xy = -20 % Units : Mpa
%% Calculating the Principal stresses
average = (sigma_xx + sigma_yy)/2
radius = sqrt((((sigma_xx - sigma_yy)/2)^2) + (tau_xy^2))
sigma_max = average + radius
sigma_min = average - radius
tau_max = radius
%% Calculating theta_n and theta_s
theta_n_1 = 0.5*atand((2*tau_xy)/(sigma_xx - sigma_yy))
theta_n_2 = theta_n_1 + 90
%% Mohr's circle Drawing
figure(1)
c_handle = circle ([average,0],radius,100,'-k');
hold on
axis equal
plot([sigma_xx,sigma_yy] , [-tau_xy,tau_xy])
hold on
plot(average,0,'ko') % Centre
hold on
plot(average + radius ,0, 'ro') % Max Principal stress
hold on
plot(average - radius ,0, 'bo') % Min Principal stress
hold on
xlabel('Normal stress (Mpa)')
ylabel('Shear stress (Mpa)')
title('Mohr circle of stress')
saveas(figure(1), 'Mohr_Circle_2D_Stress_jpg')




