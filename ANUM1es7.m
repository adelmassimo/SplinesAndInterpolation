function ANUM1es7()
    a = 0; b = 1;
    N = 20;
    legendText = strings(N/2-2, 1);
    for n = 2:2:N
        nodes = chebychevZeros(a,b,n);
        fplot( @(x) monicPolynomial(x, nodes), [a,b]);
        legendText(n/2) = 'W_{'+string(n)+'}(x)';
        hold on
    end
    hold off
    lgd = legend(legendText, 'Location', 'north');
    title(lgd, 'Monic (chebychev)');
end
