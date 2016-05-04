function [ lotteryWinnings ] = lotteryTickets_soln( purchasedTicketNums, winningTicket )
[ticks, cols] = size(purchasedTicketNums);
totalTicketsValue = 0;

for rowIdx = 1:ticks
    currentTicketValue = 0;
    
    % get number of white balls
    currentWhiteBallsMatched = 0;
    for colIdx = 1:cols
        if (any(winningTicket(1:5) == purchasedTicketNums(rowIdx, colIdx)))
            currentWhiteBallsMatched = currentWhiteBallsMatched + 1;
        end
    end
    
    % check if powerball
    hasPowerball = 0;
    if (purchasedTicketNums(rowIdx, 6) == winningticket(6))
        hasPowerball = 1;
    end
    
    
end
end

