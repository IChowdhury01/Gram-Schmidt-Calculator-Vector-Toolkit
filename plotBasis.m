% This function draws a basis plot of the column vectors in the input matrix
function plotBasis(X)
if size(X,1) < size(X,2)
  disp('Matrix must have less rows than columns in order to be plotted.')
elseif size (X, 2) == 3
  origin = [0 0 0];
  quiver3 (origin, origin, origin, X(1,:), X(2,:), X(3,:),1)
elseif size (X, 2) == 2
  origin = [0 0];
  quiver (origin, origin, X(1,:), X(2,:),1)
else
  disp('Must be a 2D or 3D matrix to be plotted!')
end
end