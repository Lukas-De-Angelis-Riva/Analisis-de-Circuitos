s = tf('s')

H = (0.8911*s^4)/((s^2 + 2272.32*s + 3179590)*(s^2 + 266.68*s + 900440))

H_ = (0.8913*s^4)/((s^2 + 2271.87*s + 3180000)*(s^2 + 266.23*s + 899680))

figure

subplot(2, 1, 1)
impulse(H)
hold on
impulse(H_)
hold off

subplot(2, 1, 2)
step(H)
hold on
step(H_)
hold off
