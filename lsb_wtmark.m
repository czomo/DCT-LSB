function a = the_lsb(the_image, image_watermark)
% MYMEAN Example of a local function.
   %a =  imread(the_image);
    %imshow(a);
%i=imread('./image/lena.jpg');    
i=imread(the_image);
j=imresize(i,[512, 512]); % resizing taken image  
k=rgb2gray(j); % converting rgb image to gray image

figure
subplot(1,3,1)
imshow(k); % displaying objective image
title('Objective image');

%x=imread('./image_wmark/bing.jpg'); % image to be hidden
x=imread(image_watermark);
y=imresize(x,[512, 512]); % resizing hidden image
z=im2bw(y); % converting rbg to binary 
%z=rgb2gray(y); %or you can try to change to gray

subplot(1,3,2);
imshow(z) % displaying image to be hidden
title('image to be hidden');

z=double(z); % increasing range to double
r=double(k-mod(k,2)); % removal of LSB bits 
l=uint8(r+z); % adding LSB bit from image to be hidden
%figure
%imshow(l)
title('Invisble watermarked Image'); 
imwrite(l,'./image_result/lsb_result.jpg')

subplot(1,3,3);
imshow(l) % displaying image to be hidden
title('watermarked image');

%detection of hidden image
h=mod(l,2);
p=zeros(512,512);
for x=1:512
    for y=1:512
        if(h(x,y)==1)
            p(x,y)=255;
        end
    end
end
s=im2bw(p);
figure
imshow(s); % hidden image
title('Recovered hidden image')

end


%('./image/lena.jpg','./image_wmark/bing.jpg')