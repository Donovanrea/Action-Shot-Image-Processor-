function [D] = PixelDistance(p,q)
% The purpose of PixelDistance is to calculate the square of the distance
% between two points in 3D space (p & q)
% Inputs: p, a 1x3 array containing 3 points in 3D space
%         q, a second 1x3 array containing 3 points in 3D space
% Outputs: D, a single output which is the square of the distance between 
%               the two points p & q.


%convert p and q to doulbe precision values incase values exceed 255 
P = double(p);
Q = double(q);

D = (((P(1)-Q(1)).^2)+((P(2)-Q(2)).^2)+((P(3)-Q(3)).^2));

end

