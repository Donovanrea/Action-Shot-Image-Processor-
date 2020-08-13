function [names_cell] = GenerateImageList(directory,extension)
% The purpose of GenerateImageList is to generate a 1D cell array which
% contains 'n' strings where the strings are names of files with a specific
% extension type from a specified directory
% Inputs: directory, a string containing the name of the directory the
%               desired images are contained
%         extension, a string containing the desired file(s) extension 
%               (e.g 'jpg' for files with .jpg extension)
% Outputs: names_cell, a 1xn cell array where 'n' is the number of files that 
%               have been found with the specified extension in the
%               specified directory, each element of the array is a file
%               name with the specified extension from the specified directory
%               
     
%change working directory to desired directory
cd %(directory);

%sprintf converts extension into a string which is then used by dir to find
%files which contain the string and stores them in a structure array [a]
%which is converted to a 6xn cell array [names] using struct2cell
[a] = dir(sprintf('**/*.%s',extension));
names = struct2cell(a);

%cycle through the length of [a] to obtain the file names and store them in a
%new 1xn cell array 
for i = 1:length(a)
    names_cell{1,i} = names{1,i};
end

%set directory back to directory above desired directory
cd ..

end
