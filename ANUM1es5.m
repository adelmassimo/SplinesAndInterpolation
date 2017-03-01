function nodes = ANUM1es5(n)
    nodes = chebychevZeros(-1, 1 ,n-1);

    for i = 1:n
        f(i) = myFunction(nodes(i));
    end

    hold off
  
    ANUM1es3(nodes, f);
    hold on
    fplot(@(x) myFunction(x),[-1,1]);
	legend('P_{'+string(n)+'}(x)', 'f(x) = 1/(1+25x^2)');

end

function f = myFunction(x)
    f = 1/(1+25*x^2);
end

