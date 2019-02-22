function total = NthElementSum(array, n)

%inputs: array of elements to be added and n (number of elements in array to be added)
%output: sum of first nth elements in given array
total = sum(array ([1:n]));

end