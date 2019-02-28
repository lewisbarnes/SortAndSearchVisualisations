function [array, arrayState] = shakerSort(array)
swapped = true;
changeNumber = 1;
arrayState(1:numel(array), changeNumber) = array;
changeNumber = changeNumber+1;
while swapped
    swapped = false;
    for currentPos = (1:numel(array)-1)
        if (array(currentPos) > array(currentPos+1))
            array([currentPos currentPos+1]) = array([currentPos+1 currentPos]);
            arrayState(1:numel(array), changeNumber) = array;
            changeNumber = changeNumber + 1;
            swapped = true;
        end
    end
    if ~swapped
        break
    end
    swapped = false;
    for currentPos = (numel(array)-1:-1:1)
        if(array(currentPos) > array(currentPos + 1))
            array([currentPos currentPos+1]) = array([currentPos+1 currentPos]);
            arrayState(1:numel(array), changeNumber) = array;
            changeNumber = changeNumber + 1;
            swapped = true;
        end
    end
end


