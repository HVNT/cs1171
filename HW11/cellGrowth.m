function cellGrowth( cellCts, timePts )
plot(timePts, cellCts, 'r.');
hold on
plot(timePts, max(cellCts).*ones(1,length(cellCts)), 'b-.');
plot(timePts, mean(cellCts).*ones(1,length(cellCts)), 'm--');

tRange = max(timePts) - min(timePts);
cRange = max(cellCts) - min(cellCts);

axis([min(timePts) - 0.05*tRange, max(timePts) + 0.05*tRange, min(cellCts) - 0.05*cRange, max(cellCts) + 0.05*cRange]);
axis square;
title('Cell Growth vs Time');
xlabel('Time');
ylabel('# Cells');
end

