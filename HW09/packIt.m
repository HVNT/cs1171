function [ lunchStatement ] = packIt( txtFile, xlsRecipes )
calsTxt = fileread(txtFile);

[~, txt] = xlsread(xlsRecipes);
[rows, numRecipes] = size(txt);

maxCals = 0;
targetRecipeName = '';

for recIdx = 1:numRecipes % iterate over cols first.. by recipe
    currCals = 0;
    
    % skip first row..
    for rIdx = 2:rows
        if (~isempty(txt{rIdx, recIdx}))
            tCellTxt = txt{rIdx, recIdx};   % NOTE! accessing using () here will return class cell array not class string
            tColonsIdxs = strfind(tCellTxt, ':');
            
            % get multiplier
            tMultiplierIdx = tColonsIdxs(1);
            tMultiplier = str2double(tCellTxt(1:tMultiplierIdx-1));
            
            % get ingredient name
            tIngredientEndIdx = tColonsIdxs(2);
            tIngredientName = tCellTxt(tIngredientEndIdx+1:end);
            
            % get ingredient calories
            tCalsIdx = strfind(calsTxt, tIngredientName);       % hw said unique.. assuming unique
            tCalsIdx = tCalsIdx(1);                             % but just in case lol.. trust no one
            % TODO its not unique.. fuck spaces make sure to look for this
            % on final
            tCalsIdx = tCalsIdx + length(tIngredientName) + 1;  % + 1 to account for colon
            tCalsIdxEnd = tCalsIdx + strfind(calsTxt(tCalsIdx:end), sprintf('\n'));
            
            if (length(tCalsIdxEnd) > 1)
                tCalsIdxEnd = tCalsIdxEnd(1) - 2;
                tCals = calsTxt(tCalsIdx:tCalsIdxEnd);
                disp(tIngredientName);
                disp(tCals);
            else
                tCals = calsTxt(tCalsIdx:end);
            end
            
            tCals = str2double(tCals);
            disp(tMultiplier);
            disp(tCals);
            
            % get currCals (multiplier * calories)
            currCals = tMultiplier * tCals;
        end
    end
    
    if (currCals > maxCals)
        maxCals = currCals;
        targetRecipeName = txt(1, recIdx);
    end
end

lunchStatement = ['I will make ', targetRecipeName, ' for lunch and consume ', maxCals, ' calories.'];

end

