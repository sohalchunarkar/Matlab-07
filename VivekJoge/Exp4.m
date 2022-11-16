clc;
clear all;
close all;
I = imread('cameraman.jfif');
subplot(1,4,1);
imshow(I);
title('cameraman image');

I1 = imnoise(I,'salt & pepper',0.02);
subplot(1,4,2);
imshow(I1);
title('cameraman image with noise');

 H =  fspecial('average',[3,3]);
 B = imfilter(I,H);
 subplot(1,4,3);
 imshow(B);
 title('cameraman image after applying average filter');
 
 H1 = fspecial('unsharp');
 B1 = imfilter(I,H1);
 subplot(1,4,4);
 title('cameraman image after applying unsharp filter');
