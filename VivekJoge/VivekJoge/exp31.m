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

%this is the add of two image
A = imadd(I,J);
subplot(3,2,3);
imshow(A);
title('arithmetic addition of two images');


%this is the sub of two image
B = imsubtract(I,J);
subplot(3,2,4);
imshow(B);
title('arithmetic subtractiom of two images');


%this is the multi of two image
C = immultiply(I,J);
subplot(3,2,5);
imshow(C);
title('arithmetic Multiplication of two images');


%this is the divide of two image
D = imdivide(I,J);
subplot(3,2,6);
imshow(D);
title('arithmetic Devide of two images');


 
