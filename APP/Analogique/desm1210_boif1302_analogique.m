clc
clear all
close all

format long

load("sons.mat");

%1 = Passe par en haut
%0 = Passe par en bas

%% Sans Bruit Sans Accen
Bruit = 1;
Accen = 1;

out = sim("mfbase.slx");

Ps = var(out.RSBi(4000:end));
Pso = var(out.RSBo(4000:end));

%% Avec Bruit sans Accen
Bruit = 0;
Accen = 1;

out = sim("mfbase.slx");

Psb = var(out.RSBi(4000:end));
Psbo = var(out.RSBo(4000:end));

%Calcul RSBi avec bruit sans Accentuation
RSBi = Ps/(Psb - Ps);
RSBi_dB = 10*log10(RSBi);
%Calcul RSBo avec bruit sans Accentuation
RSBo = Pso/(Psbo - Pso);
RSBo_dB = 10*log10(RSBo);

%% Sans bruit avec Accen
Bruit = 1;
Accen = 0;

out = sim("mfbase.slx");

Pso_A = var(out.RSBo(4000:end));

%% Avec Bruit Avec Accen
Bruit = 0;
Accen = 0;

out = sim("mfbase.slx");

Psb_A = var(out.RSBi(4000:end));
Psbo_A = var(out.RSBo(4000:end));

%Calcul RSBi avec Bruit et Accentuation
RSBi_A = Ps/(Psb_A - Ps);
RSBi_A_dB = 10*log10(RSBi_A);
%Calcul RSBo avec Bruit et Accentuation
RSBo_A = Pso_A/(Psbo_A - Pso_A);
RSBo_A_dB = 10*log10(RSBo_A);

%% Display
disp("RSBi sans accentuation : " + RSBi_dB + " dB");
disp("RSBi avec accentuation : " + RSBi_A_dB + " dB");
disp("RSBo sans accentuation : " + RSBo_dB + " dB");
disp("RSBo avec accentuation : " + abs(RSBo_A_dB) + " dB");
