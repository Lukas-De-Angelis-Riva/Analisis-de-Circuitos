f0 = 142.4

datos01 = dlmread('C:\Users\Lukas\Desktop\Nueva carpeta\Datos\SimulacionCuadrada01f0', '\t', 1, 0)
datos1  = dlmread('C:\Users\Lukas\Desktop\Nueva carpeta\Datos\SimulacionCuadradaf0', '\t', 1, 0)
datos10 = dlmread('C:\Users\Lukas\Desktop\Nueva carpeta\Datos\SimulacionCuadrada10f0', '\t', 1, 0)

t = 0:0.0001:0.16

t01  = datos01(:,1)
Vh01 = datos01(:,2)
Vi01 = datos01(:,3)

t1   = datos1(:,1)
Vh1  = datos1(:,2)
Vi1  = datos1(:,3)

t10  = datos10(:,1)
Vh10 = datos10(:,2)
Vi10 = datos10(:,3)

s  = tf('s')
H  = (0.8911*s^4)/((s^2 + 2272.32*s + 3179590)*(s^2 + 266.68*s + 900440))
H_ = (0.8913*s^4)/((s^2 + 2271.87*s + 3180000)*(s^2 + 266.23*s + 899680))

figure

subplot(3, 1, 1)
[u,t_] = gensig('square', 1/(0.1*f0), 0.04);

plot(t01, Vi01)  % La senial verdadera
hold on
plot(t01, Vh01)  % La respuesta en LTSpice
y_sim = lsim(H, u, t_);
plot(t_, y_sim) % Respuesta de H
y_sim = lsim(H_, u, t_);
plot(t_, y_sim) % Respuesta de H*
hold off


subplot(3, 1, 2)
[u,t_] = gensig('square', 1/f0, 0.04);

plot(t1, Vi1)    % La senial verdadera
hold on
plot(t1, Vh1)   % La respuesta en LTSpice
y_sim = lsim(H, u, t_);
plot(t_, y_sim) % Respuesta de H
y_sim = lsim(H_, u, t_);
plot(t_, y_sim) % Respuesta de H*
hold off


subplot(3, 1, 3)
[u,t_] = gensig('square', 1/(10*f0), 0.04);

plot(t10, Vi10)    % La senial verdadera
hold on
plot(t10, Vh10)   % La respuesta en LTSpice
y_sim = lsim(H, u, t_);
plot(t_, y_sim) % Respuesta de H
y_sim = lsim(H_, u, t_);
plot(t_, y_sim) % Respuesta de H*
hold off