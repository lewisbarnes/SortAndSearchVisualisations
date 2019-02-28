function [array, arrayState] = bubbleSort(array)
changeNumber = 1;
arrayState(1:numel(array), changeNumber) = array;
changeNumber = changeNumber+1;
for i = 1:numel(array)-1
    for j = 1:numel(array)-i
        if (array(j) > array(j+1))
            temp = array(j);
            array(j) = array(j+1);
            array(j+1) = temp;
            
            arrayState(1:numel(array), changeNumber) = array;
            changeNumber = changeNumber + 1;
        end
    end
end