function w = monicPolynomial(x, nodes)
    n = max(size(nodes));
    w = 1;
    if n > 1
        for j = 1:n
            w = w*(x-nodes(j));
        end
    end
end