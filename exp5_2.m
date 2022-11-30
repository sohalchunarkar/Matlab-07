% this is the matlab of Global function
clc;
close all;
clear all;
f= imread('pout.tif');
subplot(1,3,1), imshow(f); title('Orignal Image');
count = 0;
T = mean2(f);
done = false;
while ~done
count = count + 1;
g= f > T;
Tnext = 0.5*(mean(f(g)) + mean(f(~g)));
done = abs(T -Tnext)<0.5;
T = Tnext;
end
g = im2bw(f, T/255);
subplot(1,3,2), imhist(g);
subplot(1,3,3), imshow(g); title('Thresholded Imege');
xlabel(['The Threshold Valueo is = ', num2str(T)]);