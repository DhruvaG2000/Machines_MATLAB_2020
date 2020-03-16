matA = [ [1,2,3]; [3,4,5]; [6,7,8] ]
matB = [ [1,1,1]; [2,2,2]; [3,3,3] ]

disp('mat A - mat B')
res_sub = matA - matB
disp(res_sub)
res_multi = matA * matB 
disp('matA times matB')

for i = 1:5
    X = (i ,'times', (i+1) , '=', i*(i+1) );
    disp(X);
end