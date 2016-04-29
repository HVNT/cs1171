function [ broken_integers ] = packNums( integers )

numDigits = 0;
for idx = 1:length(integers)
    numDigits = numDigits + numel(num2str(integers(idx)));
end

broken_integers = zeros(1, numDigits);
mIdx = 1;

for idx = 1:length(integers)
    tInt = integers(idx);
    
    if (~isempty(tInt))
        tChars = num2str(tInt);
        
        for tIdx = 1:length(tChars)
            broken_integers(mIdx) = str2double(tChars(tIdx));
            mIdx = mIdx + 1;
        end
    end
end
end


