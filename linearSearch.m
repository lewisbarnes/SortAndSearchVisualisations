function [numComparisons, currentIndex] = linearSearch(array, target)
numComparisons = 0;
numComparisons = numComparisons + 1;
for currentIndex=1:length(array)
    if(array(currentIndex) == target)
        break
    end
    numComparisons = numComparisons + 1;
end

if(array(currentIndex) ~= target)
    currentIndex = -1;
end
end