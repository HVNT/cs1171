function [ perfectDateMsg, perfectDateRating] = beautyAndBrains_soln ( beautyRatings, brainRatings, candidateNumbers )
perfectDateRating = 0;
perfectIdx = 1;

for beIdx = 1:length(beautyRatings)
    for brIdx = 1:length(brainRatings)
        if (perfectDateRating < beautyRatings(beIdx) + brainRatings(brIdx))
            perfectDateRating = beautyRatings(beIdx) + brainRatings(brIdx);
            perfectIdx = beIdx;
        end
    end
end

if (perfectDateRating < 15)
    perfectDateMsg = strcat('No perfect date was was found, however candidate #',num2str(candidateNumbers(perfectIdx)),' has the highest score.');
else
    perfectDateMsg = strcat('The perfect date is candidate #',num2str(candidateNumbers(perfectIdx)),'.');
end
end

