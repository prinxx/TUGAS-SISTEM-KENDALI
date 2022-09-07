%21/477776/PA/20702
%Sabrina Aisha Alyani
%TUGAS 1

clear
clc
T = 1
num = 1
denum = [T,1]
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

