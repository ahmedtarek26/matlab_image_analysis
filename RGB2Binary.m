function [after]=RGB2Binary(im)

x=RGB2Gray(im);
[r,c,l]= size(x);

for i=1:r
    for k=1:c
        if x(i,k) >= 128
            after(i,k)=1;
    else
        after(i,k)=0;
        end
    end
end


end