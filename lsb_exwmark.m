l=imread('outlsb.jpg');
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