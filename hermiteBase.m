function [U, V] = hermiteBase(x, nodes,j)

   syms t;
   l(t) = lagrangeBase(t, nodes, j);
   dl(t) = diff(l(t), t);
   
   U = ( 1 - 2*dl(nodes(j))*(x-nodes(j)))*l(x)^2;
   V = ( x - nodes(j) )*l(x)^2;

end
