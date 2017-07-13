%%%%%%%  2a: load iris and labels

%Loading the .csv file into the program
iris = load('iris.csv');
labels = iris(:,5);
iris(:,5) = []; %set iris column 5 to blank

%%%%%%%  2b: mean vectors

%find the mean of iris - in case we might need it
mean1 = mean(iris());
%Finding the mean of all of the data points that correspond to 1,2,3 
mean2 = mean(iris(labels == 1, :));
mean3 = mean(iris(labels == 2, :));
mean4 = mean(iris(labels == 3, :));

%%%%%%%  2c: plot

% creating the scatter plot - we use 'hold on' here for these because the 
% plot needs to be able to store all 3 colors/shapes on the same plot
scatter(iris(labels == 1, 3), iris(labels == 1,4), 'b', 'x');
hold on 
scatter(iris(labels == 2, 3), iris(labels == 2,4), 'g', '+');
hold on
scatter(iris(labels == 3, 3), iris(labels == 3,4), 'r', 'o');
hold on

%naming / labeling the plot
title('Iris Dataset');
ylabel('petal width');
xlabel('petal length');

%%%%%%%  2d: discretize the first attribute of iris into 3 bins 
attribute = iris(:,1);  %the attribute to discretize
n = 3; %number of bins
discretized_attr = zeros(size(attribute)); %the discretized attribute

% get max, min and bin width
xmax = max(attribute);
xmin = min(attribute);
bin_width = (xmax - xmin)/n;
bin_limit1 = (xmin + bin_width);
bin_limit2 = (bin_limit1 + bin_width);

E = [xmin, bin_limit1, bin_limit2 , xmax];
ESize = length(E);

%%For loop assigning the values for each of the bins in the array
for i=1:size(attribute) %for the whole set of numbers
    for j = 1:ESize %the legth of the array with the bins
        if j == 1
            %%if there's only 1 bin
            if attribute(i) >= E(j) && attribute(i) <= E(j+1)
            discretized_attr(i) = j;
            end 
       %%if the arrray is larger than 1 bin
        elseif (attribute(i) > E(j) && attribute(i) <= E(j+1))
            discretized_attr(i) = j; 
        end 
    end 
end

        