function [ after ] = increaseBrightness( im , amount)
[r,c,l]= size(im);

if l==1
   % Gray
   after=zeros(r,c);
   for i=1:r
       for k=1:c
         after(i,k)= im(i,k) +amount;
       end
   end
end

if l==3
   %RGB.....................................
    after=zeros(r,c,l);
    %Level 1
   for i=1:r
       for k=1:c
         after(i,k,1)= im(i,k,1) +amount;
       end
   end
   
    %Level 2
   for i=1:r
       for k=1:c
         after(i,k,2)= im(i,k,2) +amount;
       end
   end
   
     %Level 3
   for i=1:r
       for k=1:c
         after(i,k,3)= im(i,k,3) +amount;
       end
   end
end

after=uint8(after);
end

