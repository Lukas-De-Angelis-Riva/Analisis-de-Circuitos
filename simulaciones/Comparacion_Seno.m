w0 = 895.3
t = linspace(0, 0.05, 1000);

s = tf('s')
H = (0.8911*s^4)/((s^2 + 2272.32*s + 3179590)*(s^2 + 266.68*s + 900440))
H_ = (0.8913*s^4)/((s^2 + 2271.87*s + 3180000)*(s^2 + 266.23*s + 899680))

figure

subplot(3, 1, 1)
u = sin(0.1*w0*t);
y_sim = lsim(H, u, t);
plot(t, u)
hold on
plot(t, y_sim)
hold on
y_sim = lsim(H_, u, t);
plot(t, y_sim)
hold off

subplot(3, 1, 2)
u = sin(w0*t);
y_sim = lsim(H, u, t);
plot(t, u)
hold on
plot(t, y_sim)
hold on
y_sim = lsim(H_, u, t);
plot(t, y_sim)
hold off


subplot(3, 1, 3)
u = sin(10*w0*t);
y_sim = lsim(H, u, t);
plot(t, u)
hold on
plot(t, y_sim)
hold on
y_sim = lsim(H_, u, t);
plot(t, y_sim)
hold off