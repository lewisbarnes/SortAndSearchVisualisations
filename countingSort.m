function [array, arrayState] = countingSort(array)
    minElem = min(array);
    maxElem = max(array);
    
    changeNumber = 1;
    arrayState(1:numel(array), changeNumber) = array;
    changeNumber = changeNumber+1;
    
    count = zeros((maxElem-minElem+1),1);
    
    for number = array
        count(number - minElem + 1) = count(number - minElem + 1) + 1;
    end
    z = 1;
    for i = (minElem:maxElem)
        while(count(i-minElem+1) > 0)
            array(z) = i;
            z=z+1;
            count(i - minElem + 1) = count(i - minElem + 1) - 1;
            arrayState(1:numel(array), changeNumber) = array;
            changeNumber = changeNumber+1;
        end
    end
end