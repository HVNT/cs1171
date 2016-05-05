function [ isReadingLvl ] = wordDist( file )
isReadingLvl = false;
fID = fopen(file);
tline = fgets(fID);
wordDist = [];

while ischar(tline)
   [tword, trem] = strtok(tline, ' ');
   tLength = length(tword);
   
   if (isempty(wordDist{tLength}))
       wordDist{tLength} = 1;
   else
       wordDist{tLength} = wordDist{tLength} + 1;
   end
  
   if (~isempty(trem))
       while (~isempty(trem))
           [tword, trem] = strok(trem, [' ']);
       end
   end
   
   tline = fgets(fID); 
end

end

