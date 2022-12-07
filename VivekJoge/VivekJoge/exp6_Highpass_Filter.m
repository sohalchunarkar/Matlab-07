%program for frequency domain high pass filtering
clc;
clear all;
close all;
A=imread('cameraman.tif');
[m,n]=size(A);%dimension for the image 256*256
%define the filter kernel
H=ones(m,n);
for i=101:156
    for j=101:156
        H(i,j)=0;
    end
end
%shift to the frequency domain
H_f=fftshift(H);

A_f=fft2(A);
%apply the filter mask

B=A_f.*H_f;
C=abs(ifft2(B));
%display of input and output image

subplot(2,2,1);
imshow(A);
title('original image');

subplot(2,2,2);
imshow(H);
title('2D view of H');

subplot(2,2,3);
surf(H);
title('3D view of H');

subplot(2,2,4);
imshow(uint8(C));
title('image after frequency domain HPF');


