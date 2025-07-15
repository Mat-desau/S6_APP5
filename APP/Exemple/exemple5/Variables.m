
%% Valeurs
clc
clear all
close all

load("xanalogique.mat");
load("xnumerique.mat");

fi = 340;

Val = (1360000 - (300000/2))/1000;
Val2 = (1360000 - (295000/2))/1000;

fbn = (Val2 + 47.5) - fi;
offsetn = 100;

% Fb c'est la fréquence centale, puisque nous avons des bandes de 3khz
% chaque bord de 30 donc 36/2 = 18

% offset c'est de 33khz à chaque 
fba = (Val + 18) - fi;
offseta = 33;

type = 0;

out = sim("SelectionDepart.slx");
subplot(2,1,1)
hold on
plot(out.zmanalogique.Time(4000:5000), out.zmanalogique.Data(4000:5000));
title('Canal m')

m = 2;
out = sim("SelectionDepart.slx");
subplot(2,1,1)
hold on
plot(out.zmanalogique.Time(4000:5000), out.zmanalogique.Data(4000:5000));

m = 3;
out = sim("SelectionDepart.slx");
subplot(2,1,1)
hold on
plot(out.zmanalogique.Time(4000:5000), out.zmanalogique.Data(4000:5000));

m = 4;
out = sim("SelectionDepart.slx");
subplot(2,1,1)
hold on
plot(out.zmanalogique.Time(4000:5000), out.zmanalogique.Data(4000:5000));

m = 5;
out = sim("SelectionDepart.slx");
subplot(2,1,1)
hold on
plot(out.zmanalogique.Time(4000:5000), out.zmanalogique.Data(4000:5000));

m = 6;
out = sim("SelectionDepart.slx");
subplot(2,1,1)
hold on
plot(out.zmanalogique.Time(4000:5000), out.zmanalogique.Data(4000:5000));

m = 7;
out = sim("SelectionDepart.slx");
subplot(2,1,1)
hold on
plot(out.zmanalogique.Time(4000:5000), out.zmanalogique.Data(4000:5000));

m = 8;
out = sim("SelectionDepart.slx");
subplot(2,1,1)
hold on
plot(out.zmanalogique.Time(4000:5000), out.zmanalogique.Data(4000:5000));

subplot(2,1,2)
plot(out.znanalogique.Time(4000:5000), out.znanalogique.Data(4000:5000));
title('Canal n')

figure();
