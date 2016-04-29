function [maxGrowth] = potatoGrowth(plantHeights, days)
maxGrowth = 0;

for oDay = 1:length(days)
    for iDay = 1:length(days)
        if (days(oDay) < days(iDay))
            if (maxGrowth < plantHeights(iDay) - plantHeights(oDay))
                maxGrowth = plantHeights(iDay) - plantHeights(oDay);
            end
        end
    end
end
end

