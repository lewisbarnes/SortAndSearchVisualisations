function [array, arrayState] = shakerSort(array)
swapped = true;
changeNumber = 1;
arrayState(1:numel(array), changeNumber) = array;
changeNumber = changeNumber+1;
while swapped
    swapped = false;
    for currentPos = 1:numel(array)-1
        if (array(currentPos) > array(currentPos+1))
            temp = array(currentPos);
            array(currentPos) = array(currentPos+1);
            array(currentPos+1) = temp;
            arrayState(1:numel(array), changeNumber) = array;
            changeNumber = changeNumber + 1;
            swapped = true;
        end
    end
    if (~swapped)
        return
    end
    for currentPos = numel(array)-2:1
        if(array(currentPos) > array(currentPos + 1))
            temp = array(currentPos);
            array(currentPos) = array(currentPos+1);
            array(currentPos+1) = temp;
            arrayState(1:numel(array), changeNumber) = input;
            changeNumber = changeNumber + 1;
            swapped = true;
        end
    end
end


