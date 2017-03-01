function ANUM1es13(nodes,p,i)
    m = max(size(nodes));
    
    a = min(nodes);
    b = max(nodes);
    
    y = cat(2, linspace(a-3, a-1, 3), nodes, linspace(b+1, b+3, 3) );
    
    fplot(@(x) BsplineBase(x, nodes, p, i), [a,b]);
    title('13] basi per la B-spline p = '+string(p)+' base '+string(i)+'-esima');
end
