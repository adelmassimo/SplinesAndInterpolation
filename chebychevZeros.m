function x = chebychevZeros(a, b, n)
   x = zeros(n+1,1);
   for i = 0:n
       x(i+1) = (a+b)/2+( (b-a)/2*cos( (2*i+1)/(n+1)*pi/2 ) );
   end
   
end