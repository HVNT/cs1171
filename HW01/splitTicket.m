function amtDue = splitTicket(totalCost, tipPerc, numPeople)
amtDue = roundn((totalCost + (totalCost * tipPerc)) / numPeople, -2);
end