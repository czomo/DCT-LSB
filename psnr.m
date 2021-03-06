function [psnr]=psnr(I,K)
I=double(I);
K=double(K);

if (I==K)
    psnr=100;
else
    [r c p]=size(I);
    d=0;
    for i=1:r
        for j=1:c
            d=d+(I(i,j)-K(i,j))^2;
        end
    end
    mse=d/(r*c);
    maximum=max(I(:));
    psnr=10*log10(maximum^2/mse);
end