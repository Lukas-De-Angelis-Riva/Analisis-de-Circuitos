f0 = 142.4

s = tf('s')
H = (0.8911*s^4)/((s^2 + 2272.32*s + 3179590)*(s^2 + 266.68*s + 900440))
H_ = (0.8913*s^4)/((s^2 + 2271.87*s + 3180000)*(s^2 + 266.23*s + 899680))

figure

subplot(3, 1, 1)
[u,t] = gensig('square',1/(0.1*f0), 10*(1/(0.1*f0)));
y_sim = lsim(H, u, t);
plot(t, u)
hold on
plot(t, y_sim)
hold on
y_sim = lsim(H_, u, t);
plot(t, y_sim)
hold off

subplot(3, 1, 2)
[u,t] = gensig('square',1/f0, 10*(1/f0));
y_sim = lsim(H, u, t);
plot(t, u)
hold on
plot(t, y_sim)
hold on
y_sim = lsim(H_, u, t);
plot(t, y_sim)
hold off


subplot(3, 1, 3)
[u,t] = gensig('square',1/(10*f0), 10*(1/(10*f0)));
y_sim = lsim(H, u, t);
plot(t, u)
hold on
plot(t, y_sim)
hold on
y_sim = lsim(H_, u, t);
plot(t, y_sim)
hold off