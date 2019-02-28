startArray = 16:-1:1;
[shakerArray, arrayState1] = shakerSort(startArray);
imagesc(arrayState1);
axis square;
title('Shaker Sort');
ylabel('Element Number');
xlabel('Array State');
print  -f1 -r300 -dpng shakerSortVisualisation.png

[bubbleArray, arrayState2] = bubbleSort(startArray);
figure;
imagesc(arrayState2);
axis square;
title('Bubble Sort');
ylabel('Element Number');
xlabel('Array State');
print  -f2 -r300 -dpng bubbleSortVisualisation.png

[countingArray, arrayState3] = countingSort(startArray);
figure;
imagesc(arrayState3);
axis square;
title('Counting Sort');
ylabel('Element Number');
xlabel('Array State');
print  -f3 -r300 -dpng countingSortVisualisation.png
