function C = img2binchannel(Img)
% img2binchannel
%
% This function converts an m*n matrix of an image Img into a matrix C with
% eight binary channels. Img must be a grayscale image.
% ----------
% example:
% 
% Img = imread('cameraman.tif')
% C = img2binchannel(Img)
%
% ---------
% Written by Ivan Ojeda-Ruiz in February 24, 2021
%

Imgbin = dec2bin(Img);
[x,y] = size(Img);
C = zeros(x,y,8);
for i = 1:8
     C(:,:,i) = reshape(bin2dec(Imgbin(:,i)),x,y);
end

%% Plot results 
%(commentate everything below to supress the image plot)
figure()
for i = 1:8
    subplot(2,4,i);
    imagesc(C(:,:,i));
end
