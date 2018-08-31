% This function tests whether an input basis of column vectors are orthonormal.
% It returns a 1 if all columns in the input matrix are orthonormal, and 0 otherwise
function O = isOrthonormal (X)
n = size (X, 2);  % Number of columns
M = [];  % Empty array to record dot product values
N = [];  % Empty array to record dot product values
threshold = 1e8 * eps;  % Threshold for testing. Approximately 0. Can be adjusted.
O = 'These vectors are orthonormal!';  % Default output. Tested through for loop. 

for (i = 1 : n)
  M (end + 1) = dot (X (:, i), X (:, i));  % Record dot product of each column vector with itself in matrix M
  if (abs(M (end) - 1) > threshold)  
    O = 'These vectors are not orthonormal. Sorry!';  % For loop is broken upon detection of a nonzero element.
    break
  else
    for (j = 1:n)
      if (i ~= j)
        N (end + 1) = dot (X (:, i), X (:, j));  % Record dot product of differing columns in matrix N
        if (abs(N (end)) > threshold)  
          O = 'These vectors are not orthonormal. Sorry!';  % For loop is broken upon detection of a nonzero element.
          break
        end
      end
    end
  end
end
end