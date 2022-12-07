% This is the matlab code of video to image processing
clc;
clear all;
close all;

a=VideoReader('Sunflower.mp4');
no1=a.NumberOfFrames;
for img=70:75
    filename=strcat('frame',num2str(img),'.jpg');
    b=read(a,img);
    imwrite(b,filename);
end    