function sum = ANUM1es14
    fplot(@(x) Bspline(x), [0, 5]);
    hold on
    fplot(@(x) x^3+2*x+53);
end

function sum = Bspline(X)
    p = 3;
    nodes = linspace(0,5, 1);
    
    m = max(size(nodes));
    
    a = min(nodes);
    b = max(nodes);
    
    y = cat(2, linspace(a-p, a-1, p), nodes, linspace(b+1, b+p, p) );
    f = y.^3+2*y+53;
    
    for i = 1:p+m-1
        for j = 1:p+m
            A(i,j) = BsplineBase(y(j), y, p, i);
        end
    end
    %A(:,1)=[];
    A
    b = f*inv(A)
    
    
    sum = 0;
    for i = p:p+1
        sum =  sum + b(i-p+1)*BsplineBase(X, y, p, i);
    end
    
end
