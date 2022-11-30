clc;
clear all;
close all;
A=imread('cameraman.tif');
[m,n]=size(A);
H=zeros(m,n);
for i=101:156
    for j=101:156
        H(i,j)=1;
    end
end
H_f=fftshift(H);

A_f=fft2(A);

B=A_f.*H_f;
C=abs(ifft2(B));

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
title('image after frequency domain LPF');


