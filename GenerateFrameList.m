function [frameNumbers] = GenerateFrameList(sF,step,n)
% The purpose of GenerateFrameList is to generate a 1D array 
% of desired frames given a starting frame,stepsize and total number of frames 
% Inputs: sF,starting frame the first frame in the desired 1xn array
%         size, stepsize is the interval size between frames
%         n, number of frames 
% Outputs: frameNumbers, a 1xn array starting from the starting frame (sF) 
%              increasing in the stepsize (step) for (n) number of frames
 

%preallocate array frameNumbers for speed
frameNumbers = zeros(1:length(n));


for i = 1:n
    frameNumbers(i) = sF+((i-1)*step);
end

end

