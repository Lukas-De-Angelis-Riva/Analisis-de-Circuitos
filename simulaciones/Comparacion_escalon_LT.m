datos = dlmread('C:\Users\Lukas\Desktop\Nueva carpeta\RespuestaEscalon.txt', '\t', 1, 0)

t = datos(:,1)
Vh = datos(:,2)
Vi = datos(:,3)

s = tf('s')
H = (0.8911*s^4)/((s^2 + 2272.32*s + 3179590)*(s^2 + 266.68*s + 900440))
H_ = (0.8913*s^4)/((s^2 + 2271.87*s + 3180000)*(s^2 + 266.23*s + 899680))

step(H, max(t))
hold on
step(H_, max(t))
plot(t, Vh)
plot(t, Vi)
hold off