function r = myFun(n)
    if n<=0
        r=1;
    else
        r =  n * CH4_qn6_Recursion(n-1);
    end
end