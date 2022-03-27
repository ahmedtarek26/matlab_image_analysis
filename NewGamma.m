function [NI] = NewGamma(X,gammaValue)
X = im2double(X);
    [W,H]= size(X);
    for i = 1:W
        for j = 1:H
            NI(i,j) = X(i,j)^gammaValue;
    if (NI(i,j) > 256)
      NI(i,j) = 256;
    else if(NI(i,j) <1)
      NI(i,j) =1;
    end
    end
    
        end
    end
end

