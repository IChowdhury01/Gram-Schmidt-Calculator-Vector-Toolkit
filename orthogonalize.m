% This function takes an input matrix X and orthogonalizes its column vectors.
function Y = orthogonalize(X)
m = size (X, 1);  % Number of rows
n = size (X, 2);  % Number of columns
Y = zeros (m, n);  %Pre-allocating orthogonal and orthonormal arrays
Z = zeros (m, n);
  
Y (:, 1) = X (:, 1); % First Y vector = First X vector

for (i = 2 : n)
  projsum = zeros (m, 1); % Sum of vector projections, cumulates through for loop
  for (j = 1 : i-1)
    projsum = projsum + proj (X (:, i), Y (:, j));
  end
  Y (:, i) = X (:, i) - projsum;
end
end