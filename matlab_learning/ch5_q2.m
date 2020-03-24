A = [3 -3 4; 2 -3 4; 0 -1 1]
%Steps to finding eigen values and vectors:
%[V, D] = eig(A)
%in V columns are eignevectors and in D eigenvalues on its diagonals
%eig(A) single only gives eigen values

    disp('eigen vectors and values of A are: ')
        [v1,e1] = eig(A) 

    disp('eigen values of A^2 are:')
        e2 = eig(A^2) 

    disp('eigen values squared of A are: ')
        e1_new = eig(A) ;
        e1_new.^2
    disp('which as we can see, e1^2 = e2!')

    disp('square of e2 gives')
        e2.^2 
        e2_new = diag(e2) ;
% we know that P-1 A P = D where D is e2_new here
% and P are the eigenvectors of A
% so A = P D P-1
% so A^n = (P d P-1)^n
    A4 = ( v1 * e2_new * inv(v1) )^4;
    disp('Hence from the eigenvalues we guessed A^4 to be')
        A4     

    disp('\nA^4 is = ')
        A^4 

    disp('we now calculate A inverse using similar method ')
    A_inv = ( v1 * e2_new * inv(v1) )^(-1) 