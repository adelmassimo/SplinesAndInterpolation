function ANUM1es10()
nodes = [1 2 3 4 5];
f = [24 14 27 23 34];
f1 = [45 22 -36 12 23];

syms t 

h = Hermite(t, nodes, f, f1);

figure('Name','Polinomio Hermite e valori di f')
fplot(h, [min(nodes) max(nodes)])
hold on
plot(nodes, f, 'o')
hold off

figure('Name','Derivata Polinomio Hermite e valori di f1')
fplot(diff(h), [min(nodes) max(nodes)])
hold on
plot(nodes, f1, 'o')

hold off


end
function y = Hermite(x, nodes, f, f1)
    
    y = 0;

    n = max(size(nodes));
    
    syms t
    for i = 1 : n
        uv = hermiteBase(t,nodes, i);
        u(t) = uv(1);
        v(t) = uv(2);
        y = y + (f(i)*u(x)) + (f1(i)*v(x));
    end
end