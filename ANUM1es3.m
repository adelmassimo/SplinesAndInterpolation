function ANUM1es3(nodes, f)
    n = max(size(nodes));
    if max(size(f)) ~= n
        error('nodes e f(node) non corrispondono in cardinalit?');
    end
    fplot(@(x) lagrangePolynomial(x, nodes, f), [min(nodes), max(nodes)]);
    hold on
    scatter(nodes, f)
    hold off
end

