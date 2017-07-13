clc
%%Number 1-----------------------------------------------------------------

%% Initializing data and the size of the cluster data
iris = load('iris.csv');
[m,n] = size(iris); % works no matter what size the matrix is
data = [iris];

average(iris);
%%returns 153 - for the smallest value in the distance matrix


%%% Number 2 --------------------------------------------------------------

%creating clustering
clustering = load('clustering_data.csv');
[a,b] = size(clustering); %find size of it
centroids = [2.948905 7.454988; 3.807786 5.81103; 6.976886 2.818329];
%create acentroids variable - given
[k,l] = size(centroids);

distances(clustering, centroids);


%Number 2
function sumSqrDistances = distances(data, cent)
    
    t = [];
    c = [];
    for i = 1: size(data(:))
        for j = 1: size(cent(:)) 
           EUdistance = sqrt((data(i) - cent(j)).^2); %%Calculate the distance
           t = [t, EUdistance]; %% Create an incrementally larger matrix to store elements
           [P,O] = min(t());
           
           if j == 6
              c = [c, min(t())]; %%Storing the smallest centroid on each data point
              table = [c] + [data] %%adding smallest centroids distances to the list of data points
              %% in order to correlate them togeher when doing an output
           end
        end
    end
    
    for j = 1: size(cent)
       %not working quite right - calculating the sums of each data point to
       %that cluster
        sum = ((t - c)).^2  
    end
    
    %% returns the sum
    sumSqrDistances = sum;
end

%% number 1
function index = average(x)
    meanOfDataSetCols = mean(x); %mean of each column
    meanOfSet = mean(meanOfDataSetCols); %mean of means - all elements
    distance = sqrt(((meanOfSet - x).^2)); %creating distance using formula
    [~,I] = min(distance(:)); % Finding the min value for the M , I variables in distance
    index = x(I);
end







