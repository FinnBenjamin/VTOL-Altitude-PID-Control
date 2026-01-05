m = 1.5; % mass in kg
g = 9.81;
Kp = 5.249;
Ki = 0.4593;
Kd = 15;

C = pid(Kp,Ki,Kd);
T = feedback(C * Plant, 1);
s = tf('s');
Plant = 1/(m*s^2);
step(T)
title('VTOL Altitude Response with Initial PID Gains')
grid on;

[C_tuned, info] = pidtune(Plant, 'PID');

T_tuned = feedback(C_tuned * Plant, 1);

figure;
step(T, 'r--'); 
hold on;
step(T_tuned, 'b'); 
legend('Initial Guess', 'MATLAB Optimized');
title('Comparison of Manual vs. Automated Tuning');