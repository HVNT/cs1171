function [ targetVal ] = cellSearch( nestedCellArr, idxSeq )
targetVal = 0;
currIdx = 2;

if (iscell(nestedCellArr{1}))
    cellPtr = nestedCellArr{1};
    
    for idx = currIdx:length(idxSeq)
        currIdx = idx;
        tIdx = idxSeq(idx);
    
        if (iscell(cellPtr{tIdx}))
            cellPtr = cellPtr{tIdx};
        else
            cellPtr = nestedCellArr{tIdx};
            targetVal = cellPtr;
            break;
        end
    end
else
    targetVal = nestedCellArr(1);
end

if (~isequal(currIdx, length(idxSeq)))
    for currIdx = currIdx + 1:length(idxSeq)
        tIdx = idxSeq(currIdx);
        targetVal = targetVal(tIdx);
    end
end

end

