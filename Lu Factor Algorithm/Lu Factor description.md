# Lu Factor
It is a method that decompose matrices into an upper matrix and lower matrix that also keep tracks of the permutation matrix. 
this method can be used to determine the solutions or response of a system, or to determine the inverse matrix of some matrix A.
## How it Works 
When given a matrix [A] as an input, the algorithm decompose this matrix in two other matrices, [U] and [L], applying Gauss elimination. Matrix [U] is an upper triagular matrix, and [L] is a lower triangular matrix. 
the [U] matrix is the final result of the gauss elimination. The [L] matrix starts being an identity matrix but them the elements under the main diagonal are alter with the factors provided by the Gauss elimination method.
### Inputs
-A- Coefficient matrix 
### Outputs
L-Lower triangular matrix 
U-Upper triangular matrix 
P- pivot matrix 
### Limitations
This algorithm only works for square matrices, which meand the number of rows has to be the same as the number of columns. Moreover, this algorithm does not work with 1x1 matrix.
