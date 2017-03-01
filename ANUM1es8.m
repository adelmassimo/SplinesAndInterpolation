function ANUM1es8(nodes, n)
    if n > 8
        n = 8;
    end
    % funzione che dati dei nodi e n, stampa le basi di hermite U_j, V_j
    % con j = 1:n
    Colors = {'m','k','r','c','g', 'b', 'w', 'y'};
    
    if n > max(size(nodes))
        error('index out of bounds');
    end
    
    syms x;
        hold off

    legendTxt = strings(n*2);
    
    for j = 1:n
        [U(x), V(x)]= hermiteBase(x, nodes, j);
        fplot(@(x) U(x), [min(nodes), max(nodes)],'Color',Colors{j});
        legendTxt(2*j-1) = 'U_{'+string(j)+'}(x)';
        hold on
        fplot(@(x) V(x), [min(nodes), max(nodes)], '--','Color',Colors{j});
        legendTxt(2*j) = 'V_{'+string(j)+'}(x)';
    end
    lgd = legend(legendTxt, 'Location', 'southeast');
    title(lgd, 'Hermite basis');
end
