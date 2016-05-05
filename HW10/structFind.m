function [ outCell ] = structFind( arr, str )
outCell = {};
for i = 1:numel(arr)
    fields = fieldnames(arr(i));
    for j = 1:length(fields)
        field = fields{j};
        currVal = arr(i).(field);
        if (strfind(currVal, str))
            outCell = {i, field};
            break;
        end
    end
end
end

