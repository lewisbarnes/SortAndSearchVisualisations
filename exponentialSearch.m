function [numComparisons, currentIndex] = exponentialSearch(array, target)
size = numel(array);
numComparisons = 0;
bound = 1;
currentIndex = 1;
while (bound < size && array(bound) < target)
    bound = bound * 2;
    numComparisons = numComparisons + 1;
end

[numComparisons2, currentIndex] = binarySearch(array, target, int16(bound/2), min(bound,size));

numComparisons = numComparisons + numComparisons2;
end

