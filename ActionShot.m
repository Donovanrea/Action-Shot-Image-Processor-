function [actionImage] = ActionShot(imageList)
% The purpose of ActionShot is to create an 'action shot' which is an image
% created by finding the pixels from a stack of images that are most distant
% from the median RGB values of the stack of images, each RGB pixel value in 
% the action shot is the furthest away from the median RGB pixel values out
% of the stack of images (images must be same size)
% Inputs: imageList, a 1xn cell array where each cell contains the RGB
%               uint8 values for image 'n' in a NxNx3 array for 'n' number
%               of images
% Outputs: actionImage, a 3D array of RGB uint8 values obtained by 
%               applying the MostDistantpixel function to the RGB pixel 
%               value stacks made from multiple images.


%assuming all images are the same size, obtain the row & col count for
%imageList
[rows,cols,~]=size(imageList{1});


%triple nested for loop cycles through everypixel individually 
for i = 1:rows
    %cycle through coloumns
    for j = 1:cols
        %cycle through each photo and store single pixel values in array A
        for k = 1:length(imageList)
            A(1,k,:) = imageList{k}(i,j,:);
        end
        %after creating array A, apply MostDistantPixel function to RGB values
        %in array A and store the R,G,B values in actionImage
        [R,G,B] = MostDistantPixel(A);
            actionImage(i,j,:) = [R,G,B];
    end
end

end

