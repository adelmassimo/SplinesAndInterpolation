function ANUM1esBSpline3(nodes, f)
    p = 3;
    %m ? il numero di nodi eccetto gli estremi a e b
    m = max(size(nodes))-2;
    a = min(nodes);
    b = max(nodes);
    %devo estendere lo spazio dei nodi 
    %avendo in totale m + 2 + 2*p nodi (?)
    y = cat( 2, linspace(a-p, a-1, p), nodes, linspace(b+1, b+p, p));
    
    for i = 1 : m+p
        fplot(@(x)Bspline(x, m, p, y, f), [1, 4]);
        hold on
    end
    grid on
    scatter(nodes, f);
    hold off
end

function B = Bspline(x, m, p, y, f)
    %TODO trovare i cazzo di b-piccoli
    o = f./1;
    
    B = 0;
    for i = 1 : m+p+1
        B = B + o(i)*BsplineBase(x, y, p, i);
    end
end
