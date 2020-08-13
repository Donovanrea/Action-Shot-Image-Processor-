function [pics] = ReadImages(directory,filenames)
% The purpose of ReadImages is to read specified images into a cell array
% given their filename and directory.
% Inputs: directory, a string containing the name of the directory the
%               desired images are contained
%         filenames, a 1xn array containing 'n' number of strings each of  
%               which pertains to the name of an image filename that is to
%               be read
% Outputs: pics, a 1xn cell array where 'n' is the number of images that 
%               have been read (each element is a 3D array of uint8 values
%               which corresponds to number 'n' image that has been read)


%change working directory to desired directory
cd(directory)

%use imread function to obtain uint8 image data from specified files then
%store data in cell array 'pics'
for i = 1:(length(filenames))
    pics{i} = imread(filenames{i});
end

%set directory back to directory above desired directory
cd ..
    
end


