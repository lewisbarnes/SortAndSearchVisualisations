startArray = 16:-1:1;
[startArray, arrayState] = shakerSort(startArray);
colormap(parula);
imagesc(arrayState);
axis square;
ylabel('Element Number', 'FontSize', 12);
xlabel('Swaps Made', 'FontSize', 12);
title('Shaker Sort Visualisation', 'FontSize', 12);
print -f1 -r300 -dpng shakerSortVisualisation.png