function [ hashtagMsg ] = hashtagMATLAB( filePath )
fileID = fopen(filePath); % just need read access
tline = fgets(fileID);
numhashtags = 0;

while ischar(tline)
    numhashtags = numhashtags + length(strfind(tline, '#'));
    tline = fgets(fileID);
    % could for loop to get username, on index of '@' char. for now
    % numhashtags is fine
end
disp(numhashtags);
hashtagMsg = ['You have ', num2str(numhashtags), ' hashtags.'];
end

