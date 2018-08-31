# Gram Schmidt Calculator and Vector Toolkit
![Bitbucket Pipelines](https://img.shields.io/bitbucket/pipelines/atlassian/adf-builder-javascript.svg) ![GitHub code size in bytes](https://img.shields.io/badge/code%20size-4.92kB-blue.svg?longCache=true&style=plastic)  ![GitHub repo size in bytes](https://img.shields.io/badge/repo%20size-7.33MB-blue.svg?longCache=true&style=plastic) ![GitHub](https://img.shields.io/github/license/mashape/apistatus.svg?style=plastic)

This software performs various functions on inputted sets of vectors. Among its features are the ability to perform the Gram Schmidt process to orthonormalize a set of vectors, draw 2D and 3D basis plots of vectors, compute vector projections, test whether a set of vectors form an orthonormal basis, and more. The various features are listed in more detail below.

## Features

- Performs the Gram Schmidt process on a set of vectors. Outputs a corresponding set of orthonormal basis vectors.
- Orthogonalizes a set of vectors without normalization.
- Draws a 2D or 3D basis plot of vectors
- Projects a vector onto another vector.
- Projects a vector onto an n-dimensional subspace.
- Tests whether a set of vectors form an orthonormal basis.
- Displays a list of the main properties of a set of vectors.
	- Dimensions
	- Reduced-row matrix form
	- Eigenvalues
	- Eigenvectors (Right and Left)
	- Characteristic Polynomial
	- Orthonormal basis vectors
	- Basis plot

## Instructions

- The software is simple and straightforward to use. All scripts except Test.m are MATLAB functions. To perform any of the above features, simply create an input and run the corresponding function in the MATLAB command window.
- All function inputs should either be a single vector or a matrix, where each column represents a vector.

### File descriptions
- gramSchmidt.m - inputs a matrix (set of column vectors) and performs the Gram Schmidt process, outputting a set of orthonormal basis vectors.
- orthogonalize.m - performs the Gram Schmidt process without orthonormalization. Generates a set of orthogonal basis vectors.
- isOrthonormal.m - inputs a matrix and tests whether the column vectors are orthonormal.
- proj.m - inputs 2 vectors and computes the projection of the first vector onto the second.
- orthoProj.m - inputs a vector and a matrix with n columns. Computes the projection of the vector onto the n-dimensional subspace of the matrix. Also works with just 2 vectors.
- plotBasis.m - inputs a matrix and draws a basis plot if its column vectors. Must be either 2D or 3D.
- findProperties.m - inputs a matrix and lists the properties of the set of column vectors.
- Test.m - a script designed to test the Gram Schmidt and isOrthonormal functions.
- test3a.mat - a data file used for testing.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development, testing, or consumer purposes.

### Prerequisites

- **MATLAB:** must be installed to run the various functions or open scripts.

### Installing

- Download the MATLAB installer from the [Mathworks](https://www.mathworks.com/downloads/) site.
- Install MATLAB.
- Download this repository.
- Open MATLAB.
- Add the folder containing these files to your MATLAB path.
- You can now freely use these MATLAB functions!

## Bugs
- findProperties.m only lists Eigenvalues and Eigenvectors if the input matrix is 3-dimensional.

## Built With

* [MATLAB](https://www.mathworks.com/downloads/) - the software and programming language used.

## Authors

* **Ivan Chowdhury**

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details
