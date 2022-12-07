% This is program for edge detection using sobel, prewitt and canny method
clc;
clear all;
close all;
A=imread('cameraman.tif');

B=edge(A,'canny');
C=edge(A,'sobel');
D=edge(A,'prewitt');

subplot(2,3,1);
imshow(A);
title('Orignal input images');

subplot(2,3,2);
imshow(B);
title('Edge detection using canyy method');

subplot(2,3,3);
imshow(C);
title('Edge detection using sobel method');

subplot(2,3,4);
imshow(D);
title('Edge detecion using prewitt method');

H=fspecial('laplacian');
fil_image=imfilter(A,H);
subplot(2,3,5);
imshow(fil_image);
title('Edge detetion using Laplacian operator');