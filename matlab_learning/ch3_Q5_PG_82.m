A = [ [2,6]; [3,9] ] ;
B = [ [1,2]; [3,4] ] ;
C = [ [-5,5]; [5,3] ] ;

G = blkdiag(A,B,C) 
    disp('Delete the last row and last column of the matrix.')
        G(end, :) = [] 
    disp('Extract the first 4 × 4 submatrix from G.')
        G([1:4],[1:4])