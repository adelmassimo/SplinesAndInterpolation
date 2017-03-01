function ANUM1es12(n)
    nodes = linspace(0, 1, n+1);
    for i = 1:n+1
        f(i) = myFunction(nodes(i));
    end
    fplot(@(x) bersteinPolunomial(x, f, n), [0,1], 'linewidth', 1);
    hold on
    fplot(@(x) myFunction(x), [0,1], '--', 'linewidth', 1);
        scatter(nodes, f);

    hold off
    legend('B_{'+string(n)+'}(x)', 'f(x)');
end


function f = myFunction(x)
    f = 1/(1+25*x^2);
    f = exp(-x);
    f = sin(x*2*pi);
    f = cos(x*2*pi);
end

