clear all; close all
e = exp(1)
w = 895.3

s = tf('s')
H = (0.8911*s^4)/(s^4 + 2539*s^3 + 4.686*(10^6)*s^2+2.894*(10^9)*s+2.863*(10^12))

t = linspace(0, 0.05, 1000);
u = sin(w*t);
y_sim = lsim(H, u, t);
y_ana = (e.^(-1136.16*t)).*(-0.2918*cos(1374.31*t)+0.6146*sin(1374.31*t)) + (e.^(-133.34*t)).*(0.965*cos(939.5*t)-0.0568*sin(939.5*t))-0.673*cos(895.3*t)-0.2194*sin(895.3*t)

plot(t, y_sim)
hold all
plot(t, y_ana)
grid on