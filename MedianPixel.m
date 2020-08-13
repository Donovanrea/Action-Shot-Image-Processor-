function [R,G,B] = MedianPixel(pixels)
% The purpose of MedianPixel is to calculate the median RGB value from a
% 1xnx3 list of pixels
% Inputs: pixels, a 1xnx3 array of RGB uint8 values representing a list of 
%               pixels
% Outputs: (R) the median red pixel value,(G) the median green pixel 
%               value,(B) the medain blue pixel value.


%apply a median filter over all pixels for each layer
r = median(pixels(:,:,1));

g = median(pixels(:,:,2));

b = median(pixels(:,:,3));

%set r,g,b values to the a useable 8-bit integer
R = uint8(r);
G = uint8(g);
B = uint8(b);


end

