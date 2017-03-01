function ANUM1es6()
    a = -1; b = 1;
    N = 20;
    legendText = strings(N/2,1);
    for n = 0:2:N
        nodes = linspace(a,b,n);
        fplot( @(x) monicPolynomial(x, nodes), [a,b]);
        legendText(n/2+1) = 'W_{'+string(n)+'}(x)';
        hold on;
    end
    hold off;
    lgd = legend(legendText,'Location','northwest');
    title(lgd, 'Monic (uniform)');
end
