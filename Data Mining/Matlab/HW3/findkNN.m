function nbrLabel = findkNN (data, labels, testpoint, k)

% calculate the square euclidean distance from the test point
% to the data (training)
for i=1: size(data,1)
    distances(i) = sum( ((data(i,:) - testpoint)).^2 );
end

% sort distances and retrieve the sorted values and their index 
[Y,I] = sort(distances);

% get the first k indices
kNN_indx = I(1:k); 

% return the majority label among the k labels 
% mode returns the most frequent value
nbrLabel = mode(labels(kNN_indx));

end