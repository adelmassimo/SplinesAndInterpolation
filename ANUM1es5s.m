function nodes = ANUM1es5s(n)
    nodes = chebychevZeros(-1, 1 ,n-1);

    g = sin(2*pi*nodes);

    hold off
    ANUM1es3(nodes, g);
    hold on
    fplot(@(x) sin(2*pi*x),[-1,1]);
    legend('P_{'+string(n)+'}(x)', 'f(x) = sin(2*pi*x)');

end