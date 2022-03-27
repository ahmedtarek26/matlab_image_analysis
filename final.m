%{
write your image path
%}

img=load('D:\Academic years\3rd year\1st semester\Medical image processing\Brain dataset\Brain tumor\10.mat');
image=img.cjdata.image;
imshow(image);
mask=[[-1,-2,-1],[0,0,0,],[1,2,1]];
h=imfilter(image,mask);
figure,imshow(h);
mask_2=[[-1,0,1],[-2,0,2],[-1,0,1]];
v=imfilter(image,mask_2);

 
figure,imshow(v);
mask_3=[[-1,-1,-1],[-1,8,-1],[-1,-1,-1]];
point=imfilter(image,mask_3);
figure,imshow(point);
mask_4=[[2,1,0],[1,0,-1],[0,-1,-2]];
d_r=imfilter(image,mask_4);
figure,imshow(d_r);
mask_5=[[0,-1,-2],[1,0,-1],[2,1,0]];
d_l=imfilter(image,mask_5);
figure,imshow(d_l);
sharp_1=[[0,1,0],[0,1,0],[0,-1,0]];
s_v=imfilter(image,sharp_1);
figure,imshow(s_v);
im=imadjust(image);
s_v=imfilter(im,sharp_1);
figure,imshow(s_v);
sharp_2=[[0,0,0],[1,1,-1],[0,0,0]];
s_h=imfilter(im,sharp_2);
figure,imshow(s_h);
sharp_3=[[0,-1,0],[-1,5,-1],[0,-1,0]];
s_p=imfilter(im,sharp_3);
figure,imshow(s_p);
blur_mean=[[1/9,1/9,1/9],[1/9,1/9,1/9],[1/9,1/9,1/9]];

 
b_m=imfilter(im,blur_mean);
figure,imshow(b_m);
blur_weight=[[1/16,1/16,1/16],[1/16,1/16,1/16],[1/16,1/16,1/16]];
b_w=imfilter(im,blur_weight);
figure,imshow(b_w);
k=[[0,0,0],[0,1/16,0],[0,0,0]];
kb=imfilter(im,k);
figure,imshow(kb);