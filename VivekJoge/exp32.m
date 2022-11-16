clc;
clear all;
close all;
I = imread('cameraman.jfif');
J = imread('rice.jfif');

subplot(3,2,1);
imshow(I);
title('cameraman image');

subplot(3,2,2);
imshow(J);
title('rice iumage');

%This is the AND Operation
F = bitand(I,J);
subplot(3,2,3);
imshow(F);
title('Logical operatin on AND');

%This is the OR Operation
G = bitor(I,J);
subplot(3,2,4);
imshow(G);
title('Logical operatin on OR');

%This is the NOT Operation
H = bitcmp(I);
subplot(3,2,5);
imshow(H);
title('Logical operatin on NOT');

%This is the XOR Operation
L = bitxor(I,J);
subplot(3,2,6);
imshow(L);
title('Logical operatin on XOR');

