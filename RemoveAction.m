function [actionRemoved] = RemoveAction(imageList)
% The purpose of RemoveAction is to create an image that has essentially
% had whatever 'action' inside of it removed by applying a median filter to
% the RGB pixel values from multiple images which encapture similar
% pictures (images must be same size)
% Inputs: imageList, a 1xn cell array where each cell contains the RGB
%               uint8 values for image 'n' in a NxNx3 array for 'n' number
%               of images
% Outputs: actionRemoved, a 3D array of RGB uint8 values obtained by 
%               applying a median filter to the RGB pixel value stacks made  
%               from multiple images.

%for image (i) in imageList extract the RGB layers and store them
%into layer (i) for their respective colour
for i = 1:length(imageList)
    R(:,:,i) = imageList{i}(:,:,1);
    G(:,:,i) = imageList{i}(:,:,2);
    B(:,:,i) = imageList{i}(:,:,3);
end

%apply a median filter in the 3 direction (into the page if you were
%looking down apon a 3D array) for each colour and store the value into new
%array actionRemoved
actionRemoved(:,:,1) = median(R,3);
actionRemoved(:,:,2) = median(G,3);
actionRemoved(:,:,3) = median(B,3);

end