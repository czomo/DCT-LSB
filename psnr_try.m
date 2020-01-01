clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear; 
I= imread('./image_result/dct_result.jpg');
K = imread('./image_togrey/dct_togrey.jpg')
figure;
subplot(1,2,1);imshow(I);title('Original Image')
subplot(1,2,2);imshow(K);title('Watermarked Image')

psnr = psnr(I,K);

if(psnr<=30)
    helpdlg('Image having low quality','Image Quality check box')
elseif(psnr>=30 && psnr<=60)
    helpdlg('Image having Medium quality','Image Quality check box')
else
    helpdlg('Image having good quality','Image Quality check box')
end