function oword = atbash(iword)
% z = 122, 97 = a
oword = 0;
tword = uint16(iword);  % convert to u16 ascii values

for idx = 1:length(tword)
    ival = (tword(idx) + ((tword(idx) - 109) * 2));
    ichar = char(ival);
    disp(ival)
    oword = strcat(oword, ichar);
    disp(oword);
end


char(oword);    % conver to char array
end

