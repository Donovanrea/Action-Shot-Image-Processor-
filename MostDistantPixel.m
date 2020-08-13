function [R,G,B] = MostDistantPixel(pixels)
% The purpose of MostDistantPixel is to calculate the RGB values for the
% pixel that is most distant from the median pixel
% Inputs: pixels, a 1xnx3 array of RGB values representing a list of pixels
% Outputs: (R) the most distant red pixel value,(G) the most distant green  
%               pixel value,(B) the most distant blue pixel value.

%pre-determine the median pixel value by applying MedianPixel function
[r,g,b] = MedianPixel(pixels);

%cycle through the length of array pixels
for i = 1:length(pixels)
    %apply PixelDistance function to median pixels and 'pixel-sets' from
    %the pixels array then store in array [D]
    [D] = PixelDistance([r,g,b],(pixels(:,i,:)));
    distance(1,i) = D;
end

%determine the maximum distance away from the median pixels and find its
%location 'b'
 [~,b] = max(distance);

 %assign R,G,B values to the pixel values that were the most distant from
 %the median
 R = pixels(1,b,1);
 G = pixels(1,b,2);
 B = pixels(1,b,3);
 
end



