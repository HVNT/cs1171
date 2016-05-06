% newPoints = rotPts(points, anchor, degrees)
%
% points must be a 3xN double array where the first row is x values, the second
% row is y values and the third row is z values.
% 
% anchor must be a 1x3 double vector of an [x, y, z] point about which the
% points will be rotated
%
% degrees must also be a 1x3 double vector specifying the number of degrees to
% rotate about each axis. [x degrees, y degrees, z degrees]
%
% newPoints is a 3xN double array with the specified rotation applied applied to
% the original points.