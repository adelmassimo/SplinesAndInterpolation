function b = bersteinPolunomial(x,f,n)
    b = 0;
    for i = 0:n
       b = b + f(i+1) * simpleBersteinBase(x, n, i);
    end
end