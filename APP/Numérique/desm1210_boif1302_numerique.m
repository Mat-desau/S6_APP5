load sons.mat

%La variable user est l'identifiant utilisateur (sur 4 bits, donc valeur de 0 à 15).
%La variable mod est le type de modulation (sur 3 bits, donc valeur de 0 à 7 mais seulement 0 à 3 implémentés pour le moment). Pour mod, 0=BPSK,1=QPSK, 2=8-PSK et 3=16-QAM.

user = 1;
mod = 1;

%% a
%On trouve pour une probabilité d'erreur de 10^-4
X = qfuncinv((10^-4));


sim("genpaquet2.slx")