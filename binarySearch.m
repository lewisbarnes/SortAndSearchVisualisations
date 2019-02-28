function [numComparisons, currentIndex] = binarySearch(array, target, minIndex, maxIndex)
L = minIndex;
R = maxIndex;
numComparisons = 0;
currentIndex = 0;
while L < R
    currentIndex = int16((L+R)/2);
    if(array(currentIndex) < target)
        L = currentIndex + 1;
        numComparisons = numComparisons + 1;
    elseif(array(currentIndex) > target)
        R = currentIndex - 1;
        numComparisons = numComparisons + 1;
    else
        break
    end    
end