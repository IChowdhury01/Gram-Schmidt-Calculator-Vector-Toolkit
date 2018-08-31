% Input X is a matrix of n column vectors that form a basis
% Y is a matrix of n column vectors that form an orthogonal basis
% Output Z is a matrix of n column vectors that form an orthonormal basis
function Z = gramSchmidt (X) 
m = size (X, 1);  % Number of rows
n = size (X, 2);  % Number of columns
Y = zeros (m, n);  %Pre-allocating orthogonal and orthonormal arrays
Z = zeros (m, n);
  
Y (:, 1) = X (:, 1); % First Y vector = First X vector
Z (:, 1) = Y (:, 1) ./ norm (Y (:, 1));  % First Z vector = normalized first Y vector

for (i = 2 : n)
  projsum = zeros (m, 1); % Sum of vector projections, cumulates through for loop
  for (j = 1 : i-1)
    projsum = projsum + orthoProj (X (:, i), Y (:, j));
  end
  Y (:, i) = X (:, i) - projsum; % Generating orthogonal vectors
  Z (:, i) = Y (:, i) / norm (Y (:, i)); % Generating orthonormal basis vectors
end
end