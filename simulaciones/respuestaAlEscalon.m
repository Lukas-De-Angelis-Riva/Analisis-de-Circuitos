clear all; close all
e = exp(1)

s = tf('s')
H = (0.8911*s^4)/(s^4 + 2539*s^3 + 4.686*(10^6)*s^2+2.894*(10^9)*s+2.863*(10^12))

[A_sim, t] = step(H)
A_ana = 1.1692*cos(1374.31*t).*e.^(-1136.16*t)- 0.6416*sin(1374.31*t).*e.^(-1136.16*t) -0.2782*cos(939.5*t).*e.^(-133.34*t) -0.094*sin(939.5*t).*e.^(-133.34*t)

plot(t, A_ana)
hold all
plot(t, A_sim)
grid on