close all;
for N = 1:1024
    array = 1:N;
    for searchTarget = 1:N
        comparisons(searchTarget) = exponentialSearch(array,searchTarget);
    end
        bestComparisons(N) = min(comparisons);
        averageComparisons(N) = mean(comparisons);
        worstComparisons(N) = max(comparisons);
        clear comparisons;
end
[numComparisons, currentIndex] = exponentialSearch(1:17,10);
disp(currentIndex);
figure;
plot([1:1024], bestComparisons, 'g', 'LineWidth', 1);
hold on;
plot([1:1024], averageComparisons, 'y', 'LineWidth', 1);
plot([1:1024], worstComparisons, 'r', 'LineWidth', 1);
title('Exponential Search Performance');
xlabel('Array Size (N)');
ylabel('Number of Comparisons');
properties = legend('best', 'average', 'worst');
properties.FontSize = 7;
print -f1 -r300 -dpng exponentialSearchAlgorithmPerformance.png
