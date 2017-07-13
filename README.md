# Data Mining

I took a Data Mining class while at FGCU, which was actually quite interesting. These are some of the homework assignments that I was able to complete during that class.


## Assignment 1 Requirements
- Use MATLAB function load  to load *iris.csv* into matrix named *iris*.  Store the labels (the fifth column of iris) into *labels*.
- Use MATLAB functions to calculate the vector of the four attributes. 
- Calculate the vector for only those iris points that correspond to label 1 and other factors.
- Create a scatter plot of petal length *x-axis* vs. petal width *y-axis*.
- Discretize the first attribute of iris using equal-width with *n = 3* bins.


## Assignment 2 Requirements
- Write a MATLAB funtion that: 
    - Calculates the mean vector m of all data points. 
    - Calculates the squared Euclidean distance between each data point and the mean m. 
    - Returns the row index of the data point with the minimum Euclidean distance from the mean m.
- Find out the total squared distances from each Centroid to all points in that cluster:
    - Calculate the squared Euclidean distance of each data point *x* to all *k* centroids.
    - For each data point x, find its closest centroid *c* and assign the data point to that cluster.
    - For each centroid c, calculate the total squared distance of all data points assigned to that cluster in step 2. Add up all these values and return the total sum.


## Assignment 3 Requirements
- What is the entropy of this collection of training data with respect to the class?
- What are the information gains of A1 and A2 relative to the training data? What is the best split between A1 and A2 according to the information gain?
- What is the best split between A1 and A2 according to the Gini index?
- Using Weka -- Run Naïve Bayes and KNN, what is the % accuracy, and the Weighted Avg. for the Precision for each algorithm?
