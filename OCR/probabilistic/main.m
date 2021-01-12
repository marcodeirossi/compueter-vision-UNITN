% clc;
% close all;
% clear;

im=imread('imgtest.jpg');
im=im2bw(im,0.5);
figure, imshow(im);
letter=detect_all_letter(im);
dim=size(letter);

% prob=ones([150 150])*0;

for i=1:dim(2)
     letter(i).letter=cut(letter(i).letter);
     figure, imshow(letter(i).letter);
     
%     prob=prob+letter(i).letter;
end

% prob=prob/dim(2);