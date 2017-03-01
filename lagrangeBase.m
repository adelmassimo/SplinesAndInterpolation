function l = lagrangeBase(x, nodes, j)
    n = length(x);
    
    if j == 0 || j > max(size(nodes))
        error('for this j doesnt exist a base');
    end
    
    l = ones(1,n);
    
    for i = 1:max(size(nodes))
        if i ~= j
            l = l.* (x-nodes(i)) / (nodes(j)-nodes(i));
        end
    end
end