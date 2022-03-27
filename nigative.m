function [ img ] = nigative(  image )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
[r,w]=size(image);
for i=1:r
    for j=1:w
        image(i,j)=255- image(i,j);
        
        
    end
end
img=image;
imshow(img);
end
