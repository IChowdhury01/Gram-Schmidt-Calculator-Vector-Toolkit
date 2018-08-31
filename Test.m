% This file is for test purposes for the gramSchmidt function.
clear, clc
% Case 1: more elements in each column vector than the number of vectors.
A = rand(50,5);
test1a = gramSchmidt(A);
test1b = isOrthonormal(test1a)

% Case 2: the number of vectors is equal to the number of elements in a vector
B = rand(50,50);
test2a = gramSchmidt(B);
test2b = isOrthonormal(test2a)

% Case 3: the number of elements is large
C = rand(1000,1000);
test3a = gramSchmidt(C);  % Make take some time.
% load test3a.mat  % Faster alternative
test3b = isOrthonormal(test3a)

% Case 4: complex vectors
D = rand(50,50) + 1j*rand(50,50);
test4a = gramSchmidt(D);
test4b = isOrthonormal(test4a)