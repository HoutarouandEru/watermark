clc;
clear;
ImageA=imread('pic1.jpg');
ImageB=imread('marked.bmp');
psnr = imPSNR(ImageA,ImageB);
str=['value of PSNR=',num2str(psnr(:,:,3))];
disp(str);


