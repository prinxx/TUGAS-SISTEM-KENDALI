%21/477776/PA/20702
%Sabrina Aisha Alyani
%TUGAS 2

clear
clc
K = 1
num = K
denum = [3,2,K]
G = tf(num, denum)
s = tf('s')

figure
subplot(311), step(G);
subplot(312), step(G/s);
subplot(313), impulse(G);

info = stepinfo(G)

SP=5;
[y,t]=step(SP*G);
sserror=abs(SP-y(end))
