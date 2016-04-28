function vo = freefall(vi, secs)
if vi <= 0
    vo = 0;
else
    vo = vi + (9.807 * secs);
end