function ANUM1es1(nodes)
    n = max(size(nodes));
    hold on
    for i = 1:n
        fplot( @(x) lagrangeBase(x, nodes, i), [min(nodes), max(nodes)]);
        %imposto i markers
        y = zeros(1,length(nodes)); 
        y(i) = 1;
        %stampo i markers
        scatter(nodes, y)
    end
    hold off
    grid on
end