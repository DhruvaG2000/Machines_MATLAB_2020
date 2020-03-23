A = [1 2 3; 3 3 4; 2 3 3];
B = [ 1 1 2 ]' ;
    disp('Simple solution A/B equals: ')
        X = A\B 

    disp('solution using rref is: ')
        C = [A B];
        rrefmatrix = rref(C);
        rrefmatrix(1:end, 4) 

    disp('SOLUTION using LU Decomposition: ')
        [L, U] = lu(A);
        Y = L^(-1) * B;
        X = U^(-1) * Y
