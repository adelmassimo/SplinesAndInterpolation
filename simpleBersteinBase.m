function b = simpleBersteinBase(x, n, i)
    b = nchoosek(n,i)*(x^i)*(1-x)^(n-i);
end