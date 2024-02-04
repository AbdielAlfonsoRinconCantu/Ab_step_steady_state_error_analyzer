%Ejercicio de práctica de análisis de estabilidad y error
%ver 1.0
%Abdiel Alfonso Rincon Cantu, 738884
%Cinthia Michelle Uresti Paez, 726780
%Saul Tadeo Salazar Rojas, 739162
%Control aplicado, Jorge Anibal Quishpe Armas

%Analice la estabilidad del siguiente sistema 
% y el error en estado estacionario para una señal de escalón.

clear %elimina las variables
numerator=[1 7 10]; %numerador de E(s)
denominator=[1 30 296 960]; %denominador de E(s)
E_s=tf(500*numerator,denominator) %E(s)
E_c=feedback(E_s,1) %Ec(s)
polos_de_E_c=pole(E_c) %polos de Ec(s)
figure; %nueva ventana para figura
pzplot(E_c); %grafica los polos de Ec(s)
figure; %nueva ventana para figura
step(E_c); %grafica la respuesta a un escalón de Ec(s)

estabilidad=isstable(E_c); %estabilidad de Ec(s)
if estabilidad == 1 %si estabilidad es 1:
  disp('El sistema es estable.'); %imprime
else %si no:
  disp('El sistema no es estable.'); %imprime
end %fin del condicional

syms s %declara variable simbólica
ecuacion=(500*(s^2+7*s+10))/(s^3+30*s^2+296*s+960); %E(s)
K_P=limit(ecuacion, s, 0); %Kp
e_inf=1/(1+double(K_P)); %einf
disp(['Error en estado estable: ', num2str(e_inf)]); %imprime