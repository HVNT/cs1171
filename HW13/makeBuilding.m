% makeBuilding(xPoints, yPoints, zPoints)
% 
%   Makes a black rectangular prism bounded by the points in the xPoints,
%   yPoints, and zPoints vectors. See below for details regarding the point
%   vectors.
% 
% makeBuilding(xPoints, yPoints, zPoints, color)
% 
%   Makes a prism of defined color bounded by the points in the xPoints,
%   yPoints, and zPoints vectors. See below for details regarding the point
%   vectors and color input.
% 
% --Point Vector Inputs--
%
% A rectangular prism is defined by 8 corner vertices, so the length of the each
% point vector must be 8.  Each index of all the vectors corresponds to a
% (x,y,z) triple.  That is, xPoints(1) is the x value for the first corner,
% yPoints(1) is the y value for the first corner, etc. Additionally, if you are
% going to use this function, your input point vectors must be in a specific
% order--that is, out of the 8 points, the first 4 must form a rectangular face
% of the prism and the second 4 must form the opposite rectangular face of the
% prism. To ensure that the image mapping works correctly, it is recommended
% that you enter the points such that the first 4 comprise the bottom face of
% the prisim and the last 4 comprise the top face.
%
% --Color Input--
% The color input can be one of two things. First, it can be a string like the
% color inputs for 2D plotting ('b' - blue, 'g' - green, 'r' - red, 'c' - cyan,
% 'm' - magenta, 'y' - yellow, 'k' - black, 'w' - white).  The other option is a
% 1x3 vector containing the values for an RGB triplet. Remember, the RGB values
% must be between 0 and 255, inclusive.
%
% makeBuilding(xPoints, yPoints, zPoints, 'img', images)
%
% --Image Input--
% If the fourth input is 'img' then the function expects the 5th input to be
% either an MxNx3 uint8 image array, or six uint8 image arrays in a cell array.
% If one image is specified, this image will be applied to each face of the
% building. If six images are specified, the images will be applied to the faces
% in the order: top, bottom, left, right, front, back.