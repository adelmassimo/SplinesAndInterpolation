function L = lagrangePolynomial(x, nodes, f)
    L = 0;
    
    for i = 1:max(size(nodes))
        L = L + lagrangeBase(x, nodes,i)*f(i);
    end
end