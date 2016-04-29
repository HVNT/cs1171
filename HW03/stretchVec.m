function [stretchVector] = stretchVec(ogVector, scaleValue)
stretchVector = zeros(1, length(ogVector) * scaleValue);
stretchIdx = 1;

for idx = 1:length(ogVector)
    rCount = 0;
    
    while (rCount < scaleValue)
       stretchVector(stretchIdx) = ogVector(idx);
       rCount = rCount + 1; 
       stretchIdx = stretchIdx + 1;
    end
end
end

