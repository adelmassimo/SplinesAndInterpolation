function ANUM1es11(n)
    legendTxt = strings(n+1);
    for i = 0:n
        fplot(@(x) simpleBersteinBase(x, n, i), [0,1]);
        legendTxt(i+1) = '\phi_{'+string(i)+'}(x)';
        hold on
    end
    legend( legendTxt, 'location', 'north');
    hold off
end