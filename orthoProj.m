% This function projects the vector A onto a subspace B. B can be n-dimensional
% B is a matrix whose columns are basis vectors. 
% For projection onto a 1-dimensional subspace, B would be a single vector.
function P = proj (A, B)
m = size (B, 1);  % Number of rows 
n = size (B, 2);  % Number of columns (subspace dimensions)
rec = zeros (m, n); 

for (i = 1:n)
  rec(:, i) = dot (B(:, i), A) ./ dot(B(:, i), B(:, i)) .* B(:, i); 
end
P = sum(rec,2);
end