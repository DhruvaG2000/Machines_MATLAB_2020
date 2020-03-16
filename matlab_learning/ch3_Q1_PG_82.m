 A = [ [2,6]; [3,9] ] ;
 B = [ [1,2]; [3,4] ] ;
 C = [ [-5,5]; [5,3] ] ;
 
 disp('Is matrix addition commutative?')
    disp('A+B = ')
        A+B 
    disp('B+A = ')
        B+A 
 
 disp('Is matrix addition associative?')
    disp('(A + B) + C = ')
        (A + B) + C
    disp('A + (B + C) =')
        A + (B + C)

 disp('Matrices are different from scalars!')
    disp('A*B = ')
        A*B
    disp('A*C = ')
        A*C 
    disp('But, B clearly is not equal to C!')

disp('matrix products do not commute either')
    disp('A*B = ')
        A*B 
    disp('B*A = ')
        B*A 