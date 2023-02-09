clear;
clc;
cd 'D:/Documentos/USAC/2023/Primer Semestre/Proyectos de aplicacion AIE/Git/TestGit'

%serie temporal
n=2^14;
dt=0.4;
t=(0:n-1)*dt; %vector de tiempos
x=cos(t)+0.5*cos(3*t)+0.4*cos(3.5*t)+0.7*cos(4*t)+0.2*cos(6*t);

%amplitud-fase vs. frecuencias
g=fft(x);
power=abs(g).^2;
dw=2*pi/(n*dt);
w=(0:n-1)*dw; %vector de frecuencias angulares

plot(w,power)
xlabel('\omega')
ylabel('P(\omega)')
title('Espectro de potencia')