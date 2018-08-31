% This function takes in a matrix of column vectors and stores all of its
% main properties within a structure.
function Properties = findProperties(X)
Properties.Dim = size(X,2)  % Dimensions of column vector matrix
Properties.RREF = rref(X);  % Reduced-Row form
[Properties.RightEig, Properties.Eigenvalues, Properties.LeftEig] = eig(X);  % Left and Right Eigenvectors, Eigenvalues
Properties.CharPoly = poly(X);  % Characteristic polynomial
Properties.OrthoBasis = gramSchmidt(X);  % Orthonormal basis vectors
plotBasis(X);  % Basis plot of vectors
end